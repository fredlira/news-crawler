#!/bin/bash

echo $0

# news_en
./get-news.sh google news.google.com/ 'xmllint --html --xpath' '//*[@class="DY5T1d"]/text()' en
./get-news.sh fp https://foreignpolicy.com/feed/ 'xmllint --xpath' '//item/title/text()' en
./get-news.sh wp http://feeds.washingtonpost.com/rss/politics?itid=lk_inline_manual_2 'xml_grep --text_only' '//item/title' en
./get-news.sh nyt https://www.nytimes.com/svc/collections/v1/publish/http://www.nytimes.com/topic/subject/international-relations/rss.xml 'xmllint --xpath' '//item/title/text()' en

# news_pt
./get-news.sh onu https://news.un.org/feed/subscribe/pt/news/all/rss.xml 'xmllint --xpath' '//item/title/text()' pt
./get-news.sh g1_mundo https://g1.globo.com/rss/g1/mundo/ 'xmllint --xpath' '//item/title/text()' pt
./get-news.sh terra_mundo https://www.terra.com.br/noticias/mundo/ 'xmllint --html --encode utf8 --xpath' '//div[@data-ga="true"]/@title' pt

awk '{for(x=1;$x;++x)print $x}' news_en.titles | tr "'" " " | sort | uniq -c | sort > news_en.tokens
awk '{for(x=1;$x;++x)print $x}' news_pt.titles | tr "'" " " | sort | uniq -c | sort > news_pt.tokens

./filter-tokens.sh news_en.tokens
./filter-tokens.sh news_pt.tokens
