#!/bin/bash

# ./preparser_tokens.sh $language

echo $0 $1

awk '{for(x=1;$x;++x)print $x}' news_$1.titles > news_$1.tokens

sed -i "s/'//g" news_$1.tokens
sed -i 's/"//g' news_$1.tokens
sed -i 's/,//g' news_$1.tokens

# sinonimos e plurais

sed -i 's/casos/caso/g' news_$1.tokens

sed -i 's/mortes/morte/g' news_$1.tokens

sed -i 's/policial/policia/g' news_$1.tokens
sed -i 's/policiais/policia/g' news_$1.tokens

sed -i 's/protestos/protesto/g' news_$1.tokens
