#!/bin/bash

UPTIME=$(uptime -s)
UNAME=$(uname -v)
CORES=$(cat /proc/cpuinfo | grep "model name"| wc -l)
CPUINFO=$(cat /proc/cpuinfo | grep "model name" | head -n1 | cut -c14-)
MEM=$(expr $(cat /proc/meminfo | grep MemTotal | tr -d ' ' | cut -d: -f2 | tr -d kB) / 1024)
DISK=$(df -h | egrep -v '(tmpfs|udev)')

echo "==============================================="
echo "Relatório da Máquina: $HOSTNAME"
echo "Data/Hora: $(date)"
echo "==============================================="
echo 
echo "Máquina ativa desde: $UPTIME"
echo 
echo "Versão do Kernel: $UNAME"
echo 
echo "CPUs:"
echo "Quantidade de CPUs/Core: $CORES"
echo "Modelo da CPU $CPUINFO"
echo 
echo "Memória total: $MEM"
echo 
echo "Partições: $DISK"
