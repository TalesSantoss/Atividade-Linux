#!/bin/bash

# Variáveis
DATA_HORA=$(date '+%Y-%m-%d %H:%M:%S')
SERVICO="Nginx"
DIRETORIO="./"
ONLINE="${DIRETORIO}/online.log"
OFFLINE="${DIRETORIO}/offline.log"

# Verifica o status do Nginx
STATUS=$(systemctl is-active nginx)

# Condição para verificar se o Nginx está online
if [ "$STATUS" = "active" ]; then
    echo "$DATA_HORA - $SERVICO - ONLINE - O serviço está rodando." >> $ONLINE
else
    echo "$DATA_HORA - $SERVICO - OFFLINE - O serviço está parado." >> $OFFLINE
fi
