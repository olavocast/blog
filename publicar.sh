#!/bin/bash

echo "[1/3] Compilando os seus estudos do Obsidian..."
cd ~/quartz
npx quartz build

echo "[2/3] Conectando à Hostinger e enviando os arquivos..."
lftp -u "u924003319","NaXexJqkuxcW57oE@" -e "set ssl:verify-certificate no; mirror -R ~/quartz/public/ /domains/olavocast.com/public_html/blog/; quit" ftp://147.93.64.75

echo "[3/3] Publicação concluída com sucesso! Acesse olavocast.com/blog"
