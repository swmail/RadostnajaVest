#!/bin/bash

sed -i -e 's/#//g; s/—/-/g; s/[«»”„]/"/g;' $1
