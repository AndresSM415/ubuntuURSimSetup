sudo apt update
sudo apt install snapd

# IntelliJ comm ed
sudo snap install intellij-idea-community --classic

# por toolbox
# tar -xvzf toolbox.tar.gz


# Maven 3.3.9
wget https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz

    # Extrae Maven a /opt
    sudo tar -xvzf apache-maven-3.3.9-bin.tar.gz -C /opt

    # Crea un enlace simbólico para facilitar el acceso
    sudo ln -s /opt/apache-maven-3.3.9 /opt/maven

    # Configura las variables de entorno
    echo "export M2_HOME=/opt/maven" | sudo tee -a /etc/profile.d/maven.sh
    echo "export PATH=\$M2_HOME/bin:\$PATH" | sudo tee -a /etc/profile.d/maven.sh

    # Recarga las variables de entorno
    source /etc/profile.d/maven.sh

# Git Kraken (descargar manualmente el .deb si es necesario)
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
    sudo dpkg -i gitkraken-amd64.deb || sudo apt install -f -y

# Visual Studio Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt update
    sudo apt install -y code

echo "¡Instalación snap completa!"