#!/bin/bash

# Stop the service
sudo systemctl disable --now unifebe-so-pp2 
sudo rm  /etc/systemd/system/unifebe-so-pp2.service
sudo systemctl daemon-reload

# Remove the service files
sudo rm -rf /opt/unifebe-so-pp2

# Remove the binary files from /usr/local/bin
sudo rm /usr/local/bin/unifebe-* -f

echo "Desinstalação concluída com sucesso!"



