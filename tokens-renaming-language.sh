#!/bin/bash

#./filter-tokens.sh news_file.tokens

echo $0 $1

# characters non-alphabetical

sed -i '/ |$/d' $1
sed -i '/}$/d' $1
sed -i '/ &amp;$/d' $1
sed -i '/ -$/d' $1
sed -i '/ —$/d' $1

sed -i 's/protest$/protest, protests/g' $1
sed -i 's/lives$/live, lives/g' $1
sed -i 's/times$/time, times/g' $1

sed -i 's/caso$/caso, casos/g' $1
sed -i 's/morte$/morte, mortes/g' $1
sed -i 's/policia$/policia, policiais, policial/g' $1
sed -i 's/protesto$/protesto, protestos/g' $1
