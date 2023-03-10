#!/bin/bash

echo " --------------------------- "
echo "Bem vindo ao Instalador do Opera GX for Linux - Autor: Philipe Monterrazo"
echo " --------------------------- "

echo " "

echo "Fazendo o Download da ferramenta WINE"
echo "Lembrando que alguns processos solicitaram a senha de ADMIN"
echo ""

#Comando para atualizar o Sistema Operacional

echo "------------------------------------"
echo "Atualizando o Sistema Operacional"
echo "------------------------------------"

sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y

echo "------------------------------------"
echo "Fim da Atualização"

#Comando para instalar o Wine:

echo "------------------------------------"
echo "Baixando o Wine"
echo "------------------------------------"

sudo dpkg --add-architecture i386
sudo apt install wine -y

echo "------------------------------------"
echo "Fim do Download do WINE"
echo "------------------------------------"

#Comando para instalar o WGET (Caso não tenha)

echo "------------------------------------"
echo "Baixando o WGET"
echo "------------------------------------"

sudo apt install wget -y

echo "------------------------------------"
echo "Fim do download do WGET"
echo "------------------------------------"

#Comando para baixar e renomear o arquivo do operaGX

echo "------------------------------------"
echo "Fazendo o Download do OperaGX"
echo "------------------------------------"

wget -O operagx.exe https://get.opera.com/ftp/pub/opera_gx/60.0.3255.50747/win/Opera_GX_60.0.3255.50747_Setup.exe

echo "------------------------------------"
echo "Fim do Download do OperaGX"
echo "------------------------------------"

#Instalando o operaGX

echo "------------------------------------"
echo "Instalando o Opera GX"
echo "------------------------------------"

wine operagx.exe

wait

echo "------------------------------------"
echo "Fim da instalação"
echo "------------------------------------"

#Finalizando a instalação (limpando o cache)

echo "--------------------------------"
echo "Limpando dados da instalanção"
echo "--------------------------------"

sudo apt autoremove -y
sudo rm -rf ~/Downloads/operagx.exe
clear

echo "------------------------------------"
echo "Fim da Limpeza"
echo "------------------------------------"

echo ""

echo "------------------------------------"
echo "Obrigado por usar o Script, agora aproveite o OperaGX"
echo "------------------------------------"
