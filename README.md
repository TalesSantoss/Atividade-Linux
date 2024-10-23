# Projeto: Monitoramento de Servidor Nginx

Este projeto contém um script que monitora o status de um servidor Nginx, validando se o serviço está online ou offline e gerando arquivos de log com essas informações. Além disso, o script é configurado para ser executado automaticamente a cada 5 minutos via crontab.
Pré-requisitos

  Distribuição Linux (Debian/Ubuntu/CentOS ou derivadas).
  Permissões de superusuário (root) ou capacidade de usar sudo.
  Nginx instalado no sistema.
  Acesso ao terminal para configurar o cron.

Instalação e Configuração
Instalação do Nginx

Caso o Nginx ainda não esteja instalado no seu sistema, siga os passos abaixo:

Ubuntu/Debian:

bash

sudo apt update
sudo apt install nginx

CentOS/RHEL:

bash

sudo yum install epel-release
sudo yum install nginx

Após a instalação, verifique se o Nginx está rodando:

bash

sudo systemctl start nginx
sudo systemctl status nginx

Script de Monitoramento

Crie um script bash chamado monitor_nginx.sh que irá verificar o status do Nginx e gerar os arquivos de log de acordo com o resultado:

bash

#!/bin/bash

# Diretório de saída dos arquivos de log
LOG_DIR="/caminho/para/diretorio/logs"
ONLINE_LOG="$LOG_DIR/nginx_online.log"
OFFLINE_LOG="$LOG_DIR/nginx_offline.log"

# Data e hora atuais
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Verificando o status do serviço Nginx
if systemctl is-active --quiet nginx; then
    STATUS="ONLINE"
    echo "$TIMESTAMP - Nginx - Status: ONLINE - O serviço Nginx está rodando corretamente." >> $ONLINE_LOG
else
    STATUS="OFFLINE"
    echo "$TIMESTAMP - Nginx - Status: OFFLINE - O serviço Nginx não está rodando." >> $OFFLINE_LOG
fi

Configurando permissões do script

Garanta que o script tenha permissões de execução:

bash

chmod +x monitor_nginx.sh

Configuração do Crontab

Para automatizar a execução do script a cada 5 minutos, edite o arquivo de cron do sistema:

bash

crontab -e

Adicione a seguinte linha no arquivo do cron para executar o script a cada 5 minutos:

bash

*/5 * * * * /caminho/para/monitor_nginx.sh

Isso fará com que o cron execute o script automaticamente a cada 5 minutos.
Funcionamento do Script

    O script verifica o status do serviço Nginx a cada 5 minutos.
    Caso o serviço esteja online, um log será gerado no arquivo nginx_online.log no diretório definido.
    Caso o serviço esteja offline, um log será gerado no arquivo nginx_offline.log.
    Os logs incluem a data e hora da verificação, o nome do serviço e uma mensagem personalizada de acordo com o status do serviço.

# Versionamento

Este projeto utiliza Git para controle de versionamento. Certifique-se de realizar commits regulares conforme as mudanças são implementadas.

Exemplo de comandos de versionamento:

bash

git init
git add .
git commit -m "Primeira versão do script de monitoramento"
git remote add origin <URL_DO_REPOSITORIO>
git push -u origin master

 # Teste

E, por fim, para concluir que o servidor está rodando. Verifique seu ip com o comando

ip addr show

e após isso cole-o na URL do navegador de sua preferência.

E pronto, seu servidor estará ativo.

Autores

    Tales
