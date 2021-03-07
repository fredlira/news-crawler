# news-crawler

0) my software setup for developing (2020-21)
-- get some linux for windows 10 (WSL, Ubuntu-like)
-- sudo apt-get install xml-twig-tools (to use xml_grep function)
-- sudo apt-get install libxml2-utils (to use xmllint function)
-- sudo apt install moreutils (to use ts function)

./get-news.sh <source_name> <source_url> <parse command> <xml_pattern> <language>

1) custom parsing
2) titles news (lowercase all)
3) filter titles by language
4) tokenize words by language
5) negative and positive words filters
6) count frequencies of tokens
7) sum tokens in titles news
8) ordering titles news by tokens values

# example

./get-news.sh google news.google.com/ 'xmllint --html --xpath' '//*[@class="DY5T1d"]/text()' en

# to use

./start.sh

# to clone this project

git clone https://github.com/fredlira/news-crawler.git
