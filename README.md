# news-crawler

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

./start.sh
