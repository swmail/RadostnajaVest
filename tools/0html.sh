#!/bin/bash

sed -i -e :a -e 's/<[^>]*>//g;/</N;//ba' $1
sed -i -e 's/ [ ]*$//' $1
sed -i '/./!d' $1

./4nmb.sh $1