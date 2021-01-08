# Como Construir um pacote Debian

### Exercício para treinar como se faz e instala um arquivo como se fosse um pacote Debian

**Primeiro: Instalação de pacotes necessários**

```bash
sudo apt install dh-make fakeroot build-essential
```

**Segundo: Criação de um diretório de trabalho**

Crie um diretório para armazenar o diretório **nome-versao**. Assim fica menos bagunçado

**Terceiro: Criação de um diretório que contenha os arquivos mínimos**

Esse diretório deve ter seu nome escrito da seguinte maneira: **nome-versao**

- nome: letras **minúsculas**

- versao: 1.0 ou 1.1 e assim vai

Esse diretório deverá conter os seguintes arquivos:

- Makefile

- script do programa. Só testei em linguagem C, não sei se dá com outras linguagens

- README

**Quarto: Gere um tarball do diretório do programa**

```bash
tar cvfz nome-versao.tar.gz nome-versao
```

> gerará um aquivo comprimido de nome *nome-versao.tar.gz* do *nome-versao*.

**Quinto: Build do Arquivo Comprimido**

Agora, seu diretório de trabalho possui dois arquivos: um **tar.gz** e o diretório do projeto.

Entre no diretório do projeto e digite os seguintes comandos:

```bash
dh_make -f path/nome1.tar.gz
```
> no primeiro questionamento, aperta **s**. No segundo, aperte **y**

```bash
dpkg-buildpackage -uc -us
```
> aqui vai construir o pacote debian

**Sexto: Verificar se Funciona**

Para ver se funciona, digite o path com o nome do exectável

```bash
./nome
```
> Vai executar o script.

```bash
dpkg --contents path/*.deb
```

**Sétimo: Instale o pacote Debian**

Entre no diretório de trabalho:

```bash
cd ..
```

> Vai voltar na pasta que tinha o **tar.gz** e o diretório do programa. Perceba que, agora, existem mais arquivos

Feito isso, digite:

```bash
sudo dpkg --install *.deb
```

> Vai instalar

Para ver se deu certo, basta digitar o executável:

```bash
nome
```

> Vai rodar o que o script foi escrito para fazer

**Oitavo: Desinstalar o pacote**

```bash
sudo dpkg --remove nome
```
