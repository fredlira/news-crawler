#!/bin/bash

echo $0 $1

if [ -z "$1" -o "$1" = "en" ]; then

# news_en

./get-news.sh google news.google.com/ 'xmllint --html --xpath' '//*[@class="DY5T1d"]/text()' en
./get-news.sh fp https://foreignpolicy.com/feed/ 'xmllint --xpath' '//item/title/text()' en
./get-news.sh wp http://feeds.washingtonpost.com/rss/politics?itid=lk_inline_manual_2 'xml_grep --text_only' '//item/title' en
./get-news.sh nyt https://www.nytimes.com/svc/collections/v1/publish/http://www.nytimes.com/topic/subject/international-relations/rss.xml 'xmllint --xpath' '//item/title/text()' en

./tokens-filtering-general.sh en
./tokens-filtering-language.sh en
./tokens-counting.sh en
./tokens-renaming-language.sh news_en.tokens

fi

if [ -z "$1" -o "$1" = "pt" ]; then

# news_pt

./get-news.sh onu https://news.un.org/feed/subscribe/pt/news/all/rss.xml 'xmllint --xpath' '//item/title/text()' pt
./get-news.sh globo_mundo https://g1.globo.com/rss/g1/mundo/ 'xmllint --xpath' '//item/title/text()' pt
./get-news.sh terra_mundo https://www.terra.com.br/noticias/mundo/ 'xmllint --html --encode utf8 --xpath' '//div[@data-ga="true"]/@title' pt
./get-news.sh dw_africa https://rss.dw.com/rdf/rss-br-africa 'xml_grep --text_only' '//item/title' pt
./get-news.sh infomoney https://www.infomoney.com.br/feed/ 'xml_grep --text_only' '//item/title' pt

./tokens-filtering-general.sh pt
./tokens-filtering-language.sh pt
./tokens-counting.sh pt
./tokens-renaming-language.sh news_pt.tokens

fi

if [ -z "$1" -o "$1" = "es" ]; then

# news_es

./get-news.sh elpais_internacional https://feeds.elpais.com/mrss-s/pages/ep/site/elpais.com/section/internacional/portada 'xml_grep --text_only' '//item/title' es
./get-news.sh bbcnews_internacional 'https://www.bbc.com/mundo/temas/internacional/index.xml#sa-link_location=story-body&intlink_from_url=https%3A%2F%2Fwww.bbc.com%2Fmundo%2Finstitucional%2F2011%2F03%2F000000_rss_gel&intlink_ts=1591630129331-sa' 'xml_grep --text_only' '//entry/title' es
./get-news.sh bbcnews_americalatina 'https://www.bbc.com/mundo/temas/america_latina/index.xml#sa-link_location=story-body&intlink_from_url=https%3A%2F%2Fwww.bbc.com%2Fmundo%2Finstitucional%2F2011%2F03%2F000000_rss_gel&intlink_ts=1591630130519-sa' 'xml_grep --text_only' '//entry/title' es

./tokens-filtering-general.sh es
./tokens-filtering-language.sh es
./tokens-counting.sh es
./tokens-renaming-language.sh news_es.tokens

fi
