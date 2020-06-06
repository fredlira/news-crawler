#!/bin/bash

# $1 = source_name
# $2 = source_url
# $3 = parsing command (xmllint, xml_prep)
# $4 = xml pattern
# $5 = language

echo $0 $1 $5
echo ""
echo "source name: $1"
echo " source url: $2"
echo "   language: $5"
echo ""

news_file=news_$5_$1_$(date +"%Y%m%d_%H%M")

curl -L -H "Content-Type: application/x-www-form-urlencoded; charset=utf-8" $2 > $news_file.raw
echo "curl..               OK"

eval "$3 '$4' $news_file.raw" > $news_file.titles # from .raw to .titles
echo "xmllint, xml_grep..  OK"

./preparser-titles.sh $news_file.titles # about .titles
#echo "titles preparsed..   OK"

./filter-titles.sh $news_file.titles # about .titles
#echo "titles filtered..    OK"

./tagging-titles.sh $1 $news_file $5 # about .titles
#echo "titles tagged..      OK"

echo ""
