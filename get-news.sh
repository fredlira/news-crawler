 #!/bin/bash

echo $0
echo ""

news_file=news_$(date +"%Y%m%d_%H%M")

curl -L -H "Content-Type: application/x-www-form-urlencoded; charset=utf-8" $1 > $news_file.data
#wget -O $news_file.data $1
echo "data..            OK"

xmllint --html --xpath '//*[@class="DY5T1d"]/text()' $news_file.data | tr '[A-Z]' '[a-z]' > $news_file.titles
echo "titles..          OK"

./filter-titles.sh $news_file.titles
echo "titles filtered.. OK"

awk '{for(x=1;$x;++x)print $x "-"}' $news_file.titles | tr "${PUNCT}" "@" | sed 's/@//g' | sort | uniq -c | sort > $news_file.count
echo "count..           OK"

./filter-count.sh $news_file.count
echo "count filtered..  OK"

echo ""
