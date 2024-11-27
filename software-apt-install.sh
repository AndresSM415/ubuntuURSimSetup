#!/bin/bash

# Actualizar el sistema
sudo apt update && sudo apt upgrade -y

# Herramientas básicas
sudo apt install -y build-essential git curl wget

# Java
sudo apt install -y openjdk-8-jdk

# Docker
sudo apt install -y docker.io
sudo usermod -aG docker $USER

# Neovim
sudo apt install -y neovim

# LibreOffice
sudo apt install -y libreoffice

# PyCharm Community
sudo apt install -y pycharm-community

# Node.js y npm
sudo apt install -y nodejs npm

echo "¡Instalación apt completa!"
