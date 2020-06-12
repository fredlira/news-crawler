#!/bin/bash

echo $0 $1 $2

grep --color=always "$2 \| $2 \| $2" news_$1.titles

echo ""
