#!/bin/bash

if [ "$#" == 0 ]; then
    echo "Usage: $0 filename.pdf"
    exit 1
fi

FILE="test.txt"

sed -n '2,$ p' $1 | sed -e 's//0/g; s//1/g; s//2/g; s//3/g; s//4/g; s//5/g; s//6/g; s//7/g; s//8/g; s//9/g;' >$FILE
#sed -i -e 's/[]/-/g;' \
#sed -i -e 's/[]/-/g;' \
sed -i -e 's/($/-/g;' \
    -e 's/»\([0-9]\+\)/» \1/' \
    -e 's/\([а-я]\+\.\)\([0-9]\+\)/\1 \2/g' \
    -e 's/\([а-я]\+\)H/\1#/g;' \
    -e 's/\([0-9]\+\)«/\1 «/g' $FILE
