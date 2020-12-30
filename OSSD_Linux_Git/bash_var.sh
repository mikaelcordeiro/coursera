#!/usr/bin/bash

var=2

var2="$PWD"

var3="$(( 2 + 2 ))"

var4=3

var5="$(($var + $var4))"

var6="$(echo $PATH | sed s/":"/" "/g)"

echo "$var"

echo "$var2"

echo "$var3"

echo "$var5"

echo "$var6"

exit 0