#!/usr/bin/bash

x="$PATH"

paths="$(echo $x | sed s/":"/" "/g)"

array=("$paths")

for i in ${array[@]}; do
	
	echo $i;

done

exit 0