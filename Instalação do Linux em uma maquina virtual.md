# Projeto: Instalação do linux Debian numa maquina

Este projeto contém um guia de instalação do Debian em uma maquina virtual.
# 1. Pre-requisitos
- Ultima versão do VirtualBox
- ISO do Debian 12
# 2. Instalação do VirtualBox
- Baixe e instale o VirtualBox pelo site original, seguindo as instruções de instalação padrão.
# 3. Configuração do VirtualBox
1. Abra o VirtualBox e clique em novo para criar uma nova maquina virtual.
2. No campo "Nome", insira o nome desejado para a maquina.
3. No campo "Imagem ISO", selecione a ISO do Debian na pasta onde foi instalado
# 4. Configuração do hardware virtual
1. Em Memória RAM: Alocar pelo menos 2 GB de RAM (2048 MB), podendo aumentar o valor se necessário.
2. Em Disco rígido: escolha "criar um disco rigido virtual agora".
3. Em seguida selecione o formato "VDI" (VirtualBox Disk Image).
4. Selecione a opção "Dinamicante Alocação", e use pelo menos 20 GB e armazenamento.
# 5. Configuração do Debian
1. Escolha o idioma preferido.
2. Escolha a configuração correta para seu teclado.
3. Em particionamento: Escolha "Assistido" - usar o disco inteiro.
4. Configurar usuário e senha: Defina o usuário root (superusuário) e crie uma conta de usuário normal.
# 6. Acessando o Debian
1. Após instalado, você será direcionado até a pagina de login de usuário.
2. Faça login com a conta configurada pelo usuário.
# 7. Configurar a conexão a internet
1. Feche a máquina virtual e abra as configurações
2. Selecione "Expert", e vá até a seção de redes
3. Habilite a placa de rede e na seção de "Conectado a", selecione "Placa em modo Bridge"
4. Na seção "Nome", escolha o nome da placa e no "tipo de placa" selecione "Intel PRO/1000 MT Desktop (82540EM).
5. Em "modo Promíscuo" selecione "Permitir tudo", e em "Endereço MAC", escreva o endereço MAC da sua rede e marque a caixa de "Cabo Conectado".
# 8. Parabéns!!!
1. Agora o Linux esta totalmente instalado e configurado na sua maquina virtual.


 
