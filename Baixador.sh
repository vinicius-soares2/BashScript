#!/bin/bash

# Versão 3: Adicão de nome e extensão de arquivos, links e diretorios.
#
# Vinicius, Julho de 2024
#
# Apresentação do programa
echo "USO: $(basename "$0") -a [NOME] -b [LINK] -c [DIRETORIO]

-a	Nome e extensão de arquivo
-b	Link do arquivo
-c	Caminho de diretorio
"
# Nossa Operação pesada com getopts e while e case.  
while getopts a:b:c options;
do
	case $options in
		a)	nome=$OPTARG;;
		b)	link=$OPTARG;;
		c)	diretorio=$OPTARG;;
	esac
done

# Nesta Operação vamos para diretorio ditado e usamos nosso downloader com dados passados.
cd ${diretorio} ; wget -O ${nome} ${link}

