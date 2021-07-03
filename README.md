# news-crawler

A) software setup for developing - and solve dependencies

-- get some linux for windows (On W10: WSL, Ubuntu-like)
-- sudo apt-get install xml-twig-tools (to use xml_grep function)
-- sudo apt-get install libxml2-utils (to use xmllint function)
-- sudo apt install moreutils (to use ts function)
-- clone twitter API for shellscript - https://github.com/piroor/tweet.sh

B) to run 
./start.sh <language>

C) another functions
./get-news.sh <source_name> <source_url> <parse command> <xml_pattern> <language>

D)

D.1) custom parsing
D.2) titles news (lowercase all)
D.3) filter titles by language
D.4) tokenize words by language
D.5) negative and positive words filters
D.6) count frequencies of tokens
D.7) sum tokens in titles news
D.8) ordering titles news by tokens values

# example

./get-news.sh google news.google.com/ 'xmllint --html --xpath' '//*[@class="DY5T1d"]/text()' en

# to use

./start.sh

# to clone this project

git clone https://github.com/fredlira/news-crawler.git
