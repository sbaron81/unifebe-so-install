#!/bin/bash

# Install the binary files to /usr/local/bin
sudo cp ./bin/* /usr/local/bin/
sudo chmod +x /usr/local/bin/*

sudo apt update && sudo apt install -y git python3.14-venv


# Download the services
sudo git clone https://github.com/sbaron81/unifebe-so-pp2.git /opt/unifebe-so-pp2

# Inicia servicos
sudo cp /opt/unifebe-so-pp2/unifebe-so-pp2.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start unifebe-so-pp2 && sudo systemctl enable unifebe-so-pp2 

echo "Instalação concluída com sucesso!"