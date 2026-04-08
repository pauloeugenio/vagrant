# vagrant
Repositorio de automação Vagrant

Nesse tutorial, está sendo mostrado como instalar e utilizar um exemplo simples vagrant, o mesmo está criando uma maquina virtual CentOS 9, instalando o Apache, adicionando um site ao apache e habilitando esse site, tudo de forma automatica, fazendo com que se ganhe bastante tempo ao subir uma infraestrutura


## Primeiro passo: instalar o vagrant
Observação, aqui está sendo demonstrado a instalação no ubuntu:

```bash
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vagrant
```
Após a instalação, verifique se ocorreu tudo bem, utilize o comando para vereificar a versão instalada:
```bash
vagrant --version
```

Após a instalação, devemos inicializar o vagrant no diretorio ao qual iremos manter nossos arquivos de configuração 
(OBSERVAÇÃO: Somente utilize o comando quando for criar um arquivo do zero, pois ele ira criar um arquivo de configuração, se for utilizar os arquivos presentes no repositorio, pode ignorar esse passo)
```bash
vagrant init
```

## Segundo passo: instalar o virtualBox


## Terceiro passo: clonar este repositorio para a sua maquina
```bash
git clone https://github.com/pauloeugenio/vagrant.git
```

## Quarto passo: entrar no diretorio e subir a vm com as configurações
O comando abaixo, entrará no diretorio do vagrant, e irá iniciar as configurações que estão configuradas nesse tutorial
```bash
cd vagrant
vagrant up
```


OBS, Caso queira excluir essa vm, basta utilizar o seguinte comando:

```bash
vagrant destroy
```


Comandos básicos:
Entrar na VM
```bash
vagrant ssh
```


