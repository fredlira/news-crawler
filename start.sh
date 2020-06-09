#!/bin/bash

echo $0 $1

if [ -z "$1" -o "$1" = "en" ]; then

cat sources.en | xargs -n 5 ./get-news.sh

./tokens-filtering-general.sh en
./tokens-filtering-language.sh en
./tokens-counting.sh en
./tokens-renaming-language.sh news_en.tokens

fi

if [ -z "$1" -o "$1" = "pt" ]; then

cat sources.pt | xargs -n 5 ./get-news.sh

./tokens-filtering-general.sh pt
./tokens-filtering-language.sh pt
./tokens-counting.sh pt
./tokens-renaming-language.sh news_pt.tokens

fi

if [ -z "$1" -o "$1" = "es" ]; then

cat sources.es | xargs -n 5 ./get-news.sh

./tokens-filtering-general.sh es
./tokens-filtering-language.sh es
./tokens-counting.sh es
./tokens-renaming-language.sh news_es.tokens

fi
