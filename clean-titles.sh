#!/bin/bash

sed -i 's/| thehill//g' $1
sed -i 's/| elemental//g' $1
sed -i 's/- thurrott.com//g' $1
sed -i 's/- business insider//g' $1
sed -i 's/siuslaw news |//g' $1

cat $1
