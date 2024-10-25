# Instalação e Configuração do servidor nginx
# 1. Pré-requisitos
- Windows Powershell
- nginx instalado
- git instalado
# 2. Instalação do ubuntu e do nginx pelo powershell
1. No Powershell, digite :

       wsl --install ubuntu
2. Insira um nome de usuário Unix
3. Abra o ubuntu e digite o seguinte código para atualizar os pacotes, instalar o nginx e verificar se ele está ativo:
     
       sudo apt update
       sudo apt install nginx
       sudo systemctl status nginx
# 3. Criação do script do servidor
1. Agora faça um diretorio para o script e entre no mesmo:

       mkdir servidor_linux
       cd servidor_linux
2.dentro desse diretório, instale o nano se ja não estiver instalado e crie um arquivo "verificar_nginx.sh":

       sudo apt install nano
       nano verificar_nginx.sh
3. No arquivo "verificar_nginx.sh", insira o seguinte código:

       #!/bin/bash
       DATA_HORA=$(date '+%Y-%m-%d %H:%M:%S')
       SERVICO="Nginx"
       DIRETORIO="./"
       ONLINE="${DIRETORIO}/online.log"
       OFFLINE="${DIRETORIO}/offline.log"
       STATUS=$(systemctl is-active nginx)

       if [ "$STATUS" = "active" ]; then
           echo "$DATA_HORA - $SERVICO - ONLINE - O serviço está rodando." >> $ONLINE
       else
           echo "$DATA_HORA - $SERVICO - OFFLINE - O serviço está parado." >> $OFFLINE
       fi
4. Após isso saia do nano com CTRL-O + Enter + CTRL-X
5. No terminal, execute o comando:

       chmod +x verificar_nginx.sh
6. Após isso:

       crontab -e

7. Na ultima linha desse arquivo escreva:

       /5 * * * /home/usuario/nomedapasta/verificar_nginx.sh
# 4. Configuração do GIT
1.Insira esse código: 
            
        
        git config --global user.email "exemplo@gmail.com"
        git config --global user.name "nomegit"
        git config --global --list
        git commit -m "Versão inicial"
        ./verificar_nginx.sh
# 5. Verificação
1. E por ultimo, para verificar se tudo está funcionando corretamente, execute o comando:

       grep CRON /var/log/syslog
       git log
2. Pronto, agora você tem um servidor ubuntu finalizado e com varias funções.

       
      

       
   
