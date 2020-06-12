#!/bin/bash

#./titles-filtering-language.sh $news_file.titles $language

echo $0 $1 $2

if [ -z "$2" -o "$2" = "en" ]; then

# en

sed -i 's/| abc news//g' $1
sed -i 's/| elemental//g' $1
sed -i 's/| kotaku//g' $1
sed -i 's/| sportscenter//g' $1
sed -i 's/| nbc news//g' $1
sed -i 's/| gma digital//g' $1
sed -i 's/| oilprice.com//g' $1
sed -i 's/| opinion//g' $1
sed -i 's/| pti//g' $1
sed -i 's/| thehill//g' $1
sed -i 's/| today//g' $1
sed -i 's/| wion news//g' $1
sed -i 's/| wnt//g' $1
sed -i 's/| world news//g' $1
sed -i 's/| wsj//g' $1

sed -i 's/: code switch//g' $1
sed -i 's/: report//g' $1
sed -i 's/:/ -/g' $1

sed -i 's/- nyt//g' $1
sed -i 's/- thurrott.com//g' $1
sed -i 's/- business insider//g' $1
sed -i 's/- ign//g' $1

sed -i 's/siuslaw news |//g' $1

sed -i 's/the us/the united-states/g' $1
sed -i 's/u\.s\./united-states/g' $1

fi

if [ -z "$2" -o "$2" = "pt" ]; then

# pt

sed -i 's/saiba mais-//g' $1

sed -i 's/reino unido/reino-unido/g' $1

fi

if [ -z "$2" -o "$2" = "es" ]; then

# pt

sed -i 's/ee uu/ee.uu./g' $1

fi

