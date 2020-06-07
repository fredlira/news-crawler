#!/bin/bash

#./correlation-tokens.sh language token number_of_correlated_tokens

echo $0 $1 $2 $3

grep $2 news_$1.titles | awk '{for(x=1;$x;++x)print $x}' | sort | uniq -c | sort -r | head -$3 > tmp

./filter-tokens.sh tmp

cat tmp

rm tmp
