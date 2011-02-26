#!/bin/bash

#sed -e 'a: /[0-9]\+\.[0-9]\+/bb b: /Gospel/ba' $1
#sed -n -e '/[0-9]\+\.[0-9]\+/,/Gospel/ s/.*/&/p' $1 >$1".komm"
#sed -n -e '/[0-9]\+\.[0-9]\+/,/Acts/ s/.*/&/p' $1 >$1".komm"
sed -n -e '/[0-9]\+\.[0-9]\+/,/Hebr-Rev\./ s/.*/&/p' $1 >$1".komm"
diff $1 $1".komm" | sed '/^[0-9]\+/d' | sed 's/^< //' >$1.t
