#!/usr/bin/bash

x="$PATH"

paths="${x/":"/" "}"

array=("$paths")

if [[ "${array[@]}" =~ "$PWD" ]]; then

	echo "o diretório atual $PWD já está inserido no PATH"

else
	
	export PATH="$PWD":"$PATH"

	echo "diretório $PWD inserido no PATH"

fi

exit 0