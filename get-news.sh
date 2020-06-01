#!/bin/bash

echo "get-news.sh"
echo ""

news_file=news_$(date +"%Y%m%d_%H%M")

echo "news file: $news_file"
echo ""

curl -L news.google.com/ > $news_file.data
echo "curl.. OK"

set echo off
xmllint --html --xpath '//*[@class="DY5T1d"]/text()' $news_file.data > $news_file.titles
set echo on
echo "xmllint.. OK"
