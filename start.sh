#!/bin/bash

echo $0

./get-news.sh google news.google.com/ '//*[@class="DY5T1d"]/text()' en --html
./get-news.sh onu https://news.un.org/feed/subscribe/pt/news/all/rss.xml '//item/title/text()' pt
./get-news.sh fp https://foreignpolicy.com/feed/ '//item/title/text()' en
./get-news.sh nyt https://www.nytimes.com/svc/collections/v1/publish/http://www.nytimes.com/topic/subject/international-relations/rss.xml '//item/title/text()' en

awk '{for(x=1;$x;++x)print $x}' news_en.titles | tr "${PUNCT}" "@" | sed 's/@//g' | sort | uniq -c | sort > news_en.tokens
awk '{for(x=1;$x;++x)print $x}' news_pt.titles | tr "${PUNCT}" "@" | sed 's/@//g' | sort | uniq -c | sort > news_pt.tokens

./filter-tokens.sh news_en.tokens
./filter-tokens.sh news_pt.tokens
