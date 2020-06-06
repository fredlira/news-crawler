#!/bin/bash

# ./listing_tokens.sh $language

echo $0 $1

sort news_$1.tokens -o news_$1.tokens 

uniq -c news_$1.tokens > uniq_tmp && mv uniq_tmp news_$1.tokens

sort news_$1.tokens -o news_$1.tokens

echo ""
