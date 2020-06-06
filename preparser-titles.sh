#!/bin/bash

# ./preparser_titles.sh $news_file.titles

echo $0 $1

#tr '[A-Z]' '[a-z]' < $1 | sort | uniq > $1

sed -i 's/\([A-Z]\)/\L\1/g' $1
sort $1 -o $1 
uniq $1 > uniq_tmp && mv uniq_tmp $1

echo ""
