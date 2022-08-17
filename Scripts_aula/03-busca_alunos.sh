#!/bin/bash

#########################################################################
#									#
# busca_aluno.sh - Procurar nome completo do aluno			#
#									#
# Autor: Eduardo Metestaine Coelho (eduardo.metestaine@gmail.com)	#
# Data Criação: DD/MM/YY  						#
#									#
# Descrição: Script de exemplo para o comando read.			#
#	     A partir de uma entrada do usuário, será feita uma		#
#	     busca no arquivo alunos2.txt				#
#									#
# Exemplo de uso: ./busca_aluno.sh					#
#									#
#########################################################################

ARQALUNOS="/home/emcoelho/CursoShellScript/arquivos/alunos2.txt"

clear
echo "======== Script de Busca de Alunos ========"
echo ""
#echo -n "Por favor, informe o nome do aluno: "
#read ALUNO
read -p "Por favor, informe o nome do aluno: " ALUNO

ALUNOCOMPLETO=$(grep "$ALUNO" $ARQALUNOS)

echo ""
echo "O nome completo do aluno é: $ALUNOCOMPLETO"
echo ""
echo "Fim do Script"
