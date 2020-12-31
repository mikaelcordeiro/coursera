#!/usr/bin/bash

echo "Insira dois números"

read var1 var2

if [[ "$var1" -ge "$var2" ]]; then

	echo "Desde que o mundo é mundo, $var1 é maior que $var2"

fi

x="$PATH"

if [[ -z "$x" ]]; then

	echo "PATH null"

else

	echo "PATH not null"

fi

paths="${x/":"/" "}"

array=("$paths")

if [[ "${array[@]}" =~ "$PWD" ]]; then

	echo "o diretório atual $PWD já está inserido no PATH"

else
	
	export PATH="$PWD":"$PATH"

	echo "diretório $PWD inserido no PATH"

fi

exit 0