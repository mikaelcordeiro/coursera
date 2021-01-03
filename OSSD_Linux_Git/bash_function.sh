#!/usr/bin/sh

funcao(){

    contagem=0

    for arquivos in $( find . -name "*.sh"); do

        contagem=$(( $contagem + 1))
    
    done

echo "existem $contagem arquivos bash nesse diretório"
}


funcao