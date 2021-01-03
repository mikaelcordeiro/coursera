#!/usr/bin/bash

################ for loop ################

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

################ while loop ################

n=1; max=5; password=""

while [[ "$n" -lt "$max" ]]; do
  
	echo -n "Digite a senha: "

	read password

	if [[ "$password" == "linux"  ]]; then

		echo "Acertou com $n tentativas"

	fi

	exit 0
  
	n=$(( $n + 1 ))

done

echo "Você gastou todas as tentatvas"

exit 1

################ until loop ################

n=1; max=5; password=""

until [[ "$n" -ge "$max" ]]; do

	echo -n "Digite a senha: "

	read password

	if [[ "$password" == "linux" ]]; then

		echo "Acertou com $n tentativas"

	exit 0
	
	fi

done

echo "Você esgotou as tentativas de novo"

exit 1