#!/bin/bash

for i in /home/emcoelho/CursoShellScript/arquivos/*
do
	if [ -f $i ]
	then
		echo "Verificando o arquivo $i"
		LINHAS=$(cat $i | wc -l)
		echo "O arquivo $i contém $LINHAS linhas."
		echo
	fi
done
