#!/bin/bash

# ./tokens-filtering-general.sh $language

echo $0 $1

sed "s/'/ /g" news_$1.titles | \

sed 's/"//g' | \
sed 's/,//g' | \
sed 's/://g' | \
sed 's/  / /g' | \
sed 's/%//g' | \
sed 's/$//g' | \
tr -d '[:digit:]' | \
sed 's/-$/$/g' | \

awk '{for(x=1;$x;++x)print $x}' > news_$1.tokens
