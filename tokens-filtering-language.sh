#!/bin/bash

# ./tokens-filtering-language.sh $language

echo $0 $1

if [ -z "$1" -o "$1" = "en" ]; then

set -- "news_en.tokens"

sed -i 's/protests$/protest/g' $1

sed -i 's/lives$/live/g' $1

sed -i 's/times$/time/g' $1

sed -i '/^a$/d' $1
sed -i '/^about$/d' $1
sed -i '/^after$/d' $1
sed -i '/^against$/d' $1
sed -i '/^all$/d' $1
sed -i '/^amid$/d' $1
sed -i '/^an$/d' $1
sed -i '/^and$/d' $1
sed -i '/^as$/d' $1
sed -i '/^at$/d' $1

sed -i '/^back$/d' $1
sed -i '/^but$/d' $1
sed -i '/^by$/d' $1

sed -i '/^do$/d' $1
sed -i "/^don't$/d" $1
sed -i '/^down$/d' $1
sed -i '/^during$/d' $1

sed -i '/^i$/d' $1
sed -i '/^in$/d' $1
sed -i '/^it$/d' $1
sed -i '/^if$/d' $1
sed -i '/^its$/d' $1

sed -i '/^of$/d' $1
sed -i '/^on$/d' $1
sed -i '/^out$/d' $1
sed -i '/^over$/d' $1

sed -i '/^for$/d' $1
sed -i '/^from$/d' $1
sed -i '/^full$/d' $1

sed -i '/^more$/d' $1
sed -i '/^most$/d' $1

sed -i '/^new$/d' $1
sed -i '/^news$/d' $1
sed -i '/^not$/d' $1
sed -i '/^now$/d' $1

sed -i '/^t$/d' $1
sed -i '/^than$/d' $1
sed -i '/^that$/d' $1
sed -i '/^the$/d' $1
sed -i '/^their$/d' $1
sed -i '/^this$/d' $1
sed -i '/^to$/d' $1

sed -i '/^last$/d' $1

sed -i '/^he$/d' $1
sed -i '/^her$/d' $1
sed -i '/^his$/d' $1
sed -i '/^how$/d' $1

sed -i '/^s$/d' $1
sed -i '/^some$/d' $1

sed -i '/^up$/d' $1

sed -i '/^what$/d' $1
sed -i '/^we$/d' $1
sed -i '/^were$/d' $1
sed -i '/^why$/d' $1
sed -i '/^with$/d' $1

sed -i '/^you$/d' $1

sed -i '/^x$/d' $1

sed -i '/^just$/d' $1

sed -i '/^some$/d' $1

sed -i '/^should$/d' $1

sed -i '/^have$/d' $1
sed -i '/^has$/d' $1

sed -i '/^get$/d' $1
sed -i '/^got$/d' $1

sed -i '/^know$/d' $1

sed -i '/^will$/d' $1

sed -i '/^be$/d' $1
sed -i '/^is$/d' $1
sed -i '/^are$/d' $1
sed -i '/^was$/d' $1

sed -i '/^say$/d' $1
sed -i '/^says$/d' $1
sed -i '/^see$/d' $1

sed -i '/^talk$/d' $1
sed -i '/^talks$/d' $1

fi

if [ -z "$1" -o "$1" = "pt" ]; then

set -- "news_pt.tokens"

sed -i 's/casos$/caso/g' $1
sed -i 's/mortes$/morte/g' $1
sed -i 's/policial$/policia/g' $1
sed -i 's/policiais$/policia/g' $1
sed -i 's/protestos$/protesto/g' $1

sed -i '/^a$/d' $1
sed -i '/^à$/d' $1
sed -i '/^ao$/d' $1
sed -i '/^após$/d' $1

sed -i '/^com$/d' $1
sed -i '/^contra$/d' $1

sed -i '/^diz$/d' $1
sed -i '/^da$/d' $1
sed -i '/^de$/d' $1
sed -i '/^do$/d' $1
sed -i '/^dos$/d' $1
sed -i '/^durante$/d' $1

sed -i '/^e$/d' $1
sed -i '/^é$/d' $1
sed -i '/^em$/d' $1

sed -i '/^mais$/d' $1
sed -i '/^mil$/d' $1
sed -i '/^milhões$/d' $1

sed -i '/^na$/d' $1
sed -i '/^não$/d' $1
sed -i '/^no$/d' $1
sed -i '/^nos$/d' $1

sed -i '/^o$/d' $1
sed -i '/^os$/d' $1

sed -i '/^para$/d' $1
sed -i '/^pode$/d' $1
sed -i '/^pelo$/d' $1
sed -i '/^por$/d' $1

sed -i '/^que$/d' $1

sed -i '/^são$/d' $1
sed -i '/^se$/d' $1
sed -i '/^sem$/d' $1
sed -i '/^ser$/d' $1
sed -i '/^sobre$/d' $1

sed -i '/^um$/d' $1
sed -i '/^uma$/d' $1

sed -i '/^tem$/d' $1

fi