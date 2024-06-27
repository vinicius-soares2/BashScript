#!/bin/bash
#
# Versão: Tudo Direto do shell
# Vinicius Soares, Julho de 2014.
#
# Apresentação 
echo "DIGITE O NOME :"
read NAMETHEFILE
# Definido link pro seu arquivo
echo "LINK DO ARQUIVO:"
read LINKTHEFILE
#
# Salvando em um pasta
echo "Escreva o caminho que ficara salvo: "
read DIRTHEFILE
echo "Seu diretorio: ${DIRTHEFILE}"
#
# Nesta parte vamos para o diretorio Citado pelo usuario
cd ${DIRTHEFILE}
wget -O ${NAMETHEFILE} ${LINKTHEFILE}
#
# Listando o diretorio onde esta o arquivo
ls ${NAMETHEFILE}
#
# Voltando pro direorio do Baixador
echo "Seu Diretorio Atual:"
cd -
