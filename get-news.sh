#!/bin/bash

# $1 = source_name
# $2 = source_url
# $3 = parsing command (xmllint, xml_prep)
# $4 = xml pattern
# $5 = language

echo $0 $1 $5
echo ""

news_file=news_$5_$1_$(date +"%Y%m%d_%H%M")

curl -L -H "Content-Type: application/x-www-form-urlencoded; charset=utf-8" $2 > $news_file.raw
echo ""
echo "data..            OK"

eval "$3 '$4' $news_file.raw" | tr '[A-Z]' '[a-z]' > $news_file.titles
echo "titles..          OK"

./filter-titles.sh $news_file.titles
echo "titles filtered.. OK"

awk '{for(x=1;$x;++x)print $x}' $news_file.titles | tr -d '[:punct:]' | tr "'" " " | sort | uniq -c | sort > $news_file.tokens
echo "tokens..          OK"

./filter-tokens.sh $news_file.tokens
echo "tokens filtered.. OK"

sed -i "s/^/{$1}, /" $news_file.titles #to remove source tags
cat $news_file.titles &>> news_$5.titles

echo ""
