#!/bin/bash

sed -i '/ a-/d' $1
sed -i '/ and-/d' $1
sed -i '/ as-/d' $1
sed -i '/ at-/d' $1
sed -i '/ in-/d' $1
sed -i '/ of-/d' $1
sed -i '/ for-/d' $1
sed -i '/ new-/d' $1
sed -i '/ on-/d' $1
sed -i '/ |-/d' $1
sed -i '/ after-/d' $1
sed -i '/ from-/d' $1
sed -i '/ is-/d' $1
sed -i '/ over-/d' $1
sed -i '/ i-/d' $1
sed -i '/ that-/d' $1
sed -i '/ how-/d' $1
sed -i '/ out-/d' $1
sed -i '/ to-/d' $1
sed -i '/ the-/d' $1
sed -i '/ with-/d' $1
sed -i '/ what-/d' $1
sed -i '/ down-/d' $1
sed -i '/ last-/d' $1
sed -i '/ not-/d' $1
sed -i '/ by-/d' $1

sed -i '/ 1 /d' $1

sed -i '/ 3-/d' $1

sed -i '/ will-/d' $1
sed -i '/ be-/d' $1
sed -i '/ are-/d' $1
sed -i '/ says-/d' $1

#cat $1
