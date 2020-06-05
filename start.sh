#!/bin/bash

echo $0

./get-news.sh google news.google.com/ 'xmllint --html --xpath' '//*[@class="DY5T1d"]/text()' en
./get-news.sh onu https://news.un.org/feed/subscribe/pt/news/all/rss.xml 'xmllint --xpath' '//item/title/text()' pt
./get-news.sh fp https://foreignpolicy.com/feed/ 'xmllint --xpath' '//item/title/text()' en
./get-news.sh wp http://feeds.washingtonpost.com/rss/politics?itid=lk_inline_manual_2 'xml_grep --text_only' '//item/title' en

awk '{for(x=1;$x;++x)print $x}' news_en.titles | tr "${PUNCT}" "@" | sed 's/@//g' | sort | uniq -c | sort > news_en.tokens
awk '{for(x=1;$x;++x)print $x}' news_pt.titles | tr "${PUNCT}" "@" | sed 's/@//g' | sort | uniq -c | sort > news_pt.tokens

./filter-tokens.sh news_en.tokens
./filter-tokens.sh news_pt.tokens
