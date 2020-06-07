#!/bin/bash

echo $0 $1

# en

sed -i 's/| abc news//g' $1
sed -i 's/| thehill//g' $1
sed -i 's/| elemental//g' $1
sed -i 's/| wsj//g' $1
sed -i 's/| sportscenter//g' $1
sed -i 's/| nbc news//g' $1
sed -i 's/| gma digital//g' $1
sed -i 's/| oilprice.com//g' $1
sed -i 's/| opinion//g' $1
sed -i 's/| pti//g' $1
sed -i 's/| kotaku//g' $1
sed -i 's/| wion news//g' $1
sed -i 's/| wnt//g' $1

sed -i 's/: code switch//g' $1
sed -i 's/: report//g' $1
sed -i 's/:/ -/g' $1

sed -i 's/- nyt//g' $1
sed -i 's/- thurrott.com//g' $1
sed -i 's/- business insider//g' $1
sed -i 's/- ign//g' $1

sed -i 's/siuslaw news |//g' $1

sed -i "s/â/'/g" $1
sed -i "s/â/'/g" $1
sed -i "s/â/'/g" $1
sed -i "s/â/'/g" $1
sed -i "s/â/'/g" $1
sed -i "s/â/—/g" $1

sed -i "s/’/'/g" $1
sed -i "s/‘/'/g" $1
sed -i "s/  / /g" $1

# pt

sed -i 's/saiba mais-//g' $1
sed -i 's/"//g' $1
sed -i 's/title=//g' $1

sed -i 's/Ã/á/g' $1
sed -i 's/Ã¡/á/g' $1
sed -i 's/Ã£/ã/g' $1
sed -i 's/Ã¢/â/g' $1
sed -i 's/Ã /à/g' $1
sed -i 's/Ã©/é/g' $1
sed -i 's/Ã/í/g' $1
sed -i 's/Ã­/í/g' $1
sed -i 's/Ã³/ó/g' $1
sed -i 's/Ãµ/õ/g' $1
sed -i 's/Ãº/ú/g' $1
sed -i 's/Ãª/ê/g' $1
sed -i 's/Ã§/ç/g' $1

sed -i 's/Âª/ª/g' $1
sed -i 's/Âº/º/g' $1

sed -i 's/&quot;/"/g' $1
sed -i 's/&amp;/&/g' $1

#cat $1
