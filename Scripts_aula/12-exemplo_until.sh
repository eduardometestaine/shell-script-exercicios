#!/bin/bash

until ps aux | grep chrome | grep -v grep > /dev/null
do
	echo "Inicie o Chrome"
	sleep 3
	echo
done

echo "Chrome Iniciado."
echo "PID: $(pgrep chrome)"
