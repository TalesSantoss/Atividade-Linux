#!/bin/bash

# Variáveis
DATA_HORA=$(date '+%Y-%m-%d %H:%M:%S')
SERVICO="Nginx"
DIRETORIO="Local de criação do log"
ONLINE="${DIRETORIO}/online.log"
OFFLINE="${DIRETORIO}/offline.log"

# Verifica o status do Nginx
STATUS=$(systemctl is-active nginx)

# Condição para verificar se o Nginx está online
if [ "$STATUS" = "active" ]; then
    echo "$DATA_HORA - $SERVICO - O serviço está Online." >> $ONLINE
else
    echo "$DATA_HORA - $SERVICO - O serviço está Offline." >> $OFFLINE
fi
