#!/bin/bash

#./titles-filtering-general.sh $news_file.titles

echo $0 $1

sed -i 's/\([A-Z]\)/\L\1/g' $1
sort $1 -o $1
uniq $1 > uniq_tmp && mv uniq_tmp $1

sed -i "s/â/'/g" $1
sed -i "s/â/'/g" $1
sed -i "s/â/'/g" $1
sed -i "s/â/'/g" $1
sed -i "s/â/'/g" $1
sed -i "s/â/—/g" $1

sed -i "s/’/'/g" $1
sed -i "s/‘/'/g" $1
sed -i "s/  / /g" $1

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
