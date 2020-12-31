#!/usr/bin/bash

x="$PATH"

paths="$(echo $x | sed s/":"/" "/g)"

array=("$paths")

for i in ${array[@]}; do
	
	echo $i

done

for file in $(find . -name "*.txt"); do

	echo "Deletando $file"

	rm "$file"

done