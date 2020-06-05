#!/bin/bash

echo $0

./get-news.sh google news.google.com/ '//*[@class="DY5T1d"]/text()' --html
./get-news.sh onu https://news.un.org/feed/subscribe/pt/news/all/rss.xml '//title/text()'
