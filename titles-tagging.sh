#!/bin/bash

# ./tagging_titles.sh $source_name $news_file $language

echo $0 $1 $2 $3

sed -i "s/^/{$1}, /" $2.titles # adding source tags before titles
cat $2.titles &>> news_$3.titles # gathering all language titles together

