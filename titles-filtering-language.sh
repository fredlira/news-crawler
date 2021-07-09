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

sed -i 's/- bbc news//g' $1
sed -i 's/- bloomberg//g' $1
sed -i 's/- business insider//g' $1

sed -i 's/- cbs news//g' $1
sed -i 's/- cnbc//g' $1
sed -i 's/- cnn//g' $1

sed -i 's/- engadget//g' $1
sed -i 's/- espn//g' $1

sed -i 's/- fox business//g' $1
sed -i 's/- fox news//g' $1

sed -i 's/- ign//g' $1
sed -i 's/- live updates//g' $1

sed -i 's/- nbc news//g' $1
sed -i 's/- nyt//g' $1

sed -i 's/- politico//g' $1

sed -i 's/- scitechdaily//g' $1
sed -i 's/- sports illustrated//g' $1

sed -i 's/- the new york times//g' $1
sed -i 's/- the wall street journal//g' $1
sed -i 's/- thurrott.com//g' $1
sed -i 's/- tmz//g' $1

sed -i 's/- yahoo finance//g' $1

sed -i 's/siuslaw news |//g' $1

sed -i 's/the us/the united-states/g' $1
sed -i 's/u\.s\./united-states/g' $1
sed -i 's/north korea/north-korea/g' $1
sed -i 's/south korea/south-korea/g' $1

fi

if [ -z "$2" -o "$2" = "pt" ]; then

# pt

sed -i 's/- espn.com.br//g' $1
sed -i 's/- g1//g' $1
sed -i 's/- o tempo//g' $1
sed -i 's/- torcedores.com//g' $1

sed -i 's/saiba mais-//g' $1
sed -i 's/exclusivo-//g' $1

sed -i 's/africa/áfrica/g' $1
sed -i 's/áfrica do sul/áfrica-do-sul/g' $1
sed -i 's/america/américa/g' $1
sed -i 's/américa latina/américa-latina/g' $1

sed -i 's/banco mundial/banco-mundial/g' $1

sed -i 's/cabo verde/cabo-verde/g' $1

sed -i 's/estados unidos/estados-unidos/g' $1

sed -i 's/reino unido/reino-unido/g' $1

sed -i 's/união européia/união-européia/g' $1
sed -i 's/união soviética/união-soviética/g' $1

fi

if [ -z "$2" -o "$2" = "es" ]; then

# pt

sed -i 's/ee uu/ee-uu/g' $1

fi
