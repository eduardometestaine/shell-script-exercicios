#!/bin/bash

########################################
#
# Primeiro_Script.sh - Script de Exemplo do Curso
#
# Autor: Eduardo Metestaine (eduardo.metestaine@gmail.com)
# Data Criação: DD/MM/YY
#
# Descrição: Script de exemplo que lê data e hora atual e exibe a lista de alunos
#
# Exemplo de uso: ./01-primeiro_script.sh
#
# Alteracoes
#       Dia X - Inclusao da função de ordenação
#       Dia Y - Correção da função de leitura
#
#########################################

DATAHORA=$(date +%H:%M)
ARQALUNOS="/home/emcoelho/CursoShellScript/arquivos/alunos2.txt"

# Função de leeitura da data e hora
clear
echo "===== Meu Primeiro Script ====="
echo ""
echo "Exibir data e hora atual: $DATAHORA"

# Área de leitura da lista de alunos
echo "==============================="
echo "Listagem dos Alunos: "
sort $ARQALUNOS

DATAHORA=$(date +%H)
echo "==============================="
echo "Nova hora atual: $DATAHORA"
