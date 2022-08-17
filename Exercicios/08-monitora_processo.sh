#!/bin/bash

TIME=5

if [ $# -eq 0 ]
then
	echo "Favor informar um processo como arqumento."
	echo "./08-monitora_processo.sh <processo>"
	exit 1
fi

while true
do
	if ps aux | grep $1 | grep -v grep | grep -v $0 > /dev/null
	then
		sleep $TIME
	else
		echo "ATENÇÃO!!!!!!! O processo $1 NÃO está em execução!"
		sleep $TIME
	fi
done
