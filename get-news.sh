 #!/bin/bash

echo "get-news.sh"
echo ""

news_file=news_$(date +"%Y%m%d_%H%M")

curl -L -H "charset=ISO-8859-1" news.google.com/ > $news_file.data
echo "curl..    OK"

xmllint --html --xpath '//*[@class="DY5T1d"]/text()' $news_file.data | tr '[A-Z]' '[a-z]' > $news_file.titles
echo "xmllint.. OK"

awk '{for(x=1;$x;++x)print $x "-"}' $news_file.titles | tr "${PUNCT}" "@" | sed 's/@//g' | sort | uniq -c | sort > $news_file.count
echo "awk/tr/sed/sort/uniq..     OK"
echo ""

echo "   data: $news_file.data"
echo " titles: $news_file.titles"
echo "  count: $news_file.count"
echo ""
