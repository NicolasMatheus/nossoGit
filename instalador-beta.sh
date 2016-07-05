#!/bin/bash

read -p "Digite sua senha: " -res senha
clear

echo "=============== Atualizando os repositorios ==============="
sleep 5
echo $senha | sudo -ES apt-get update && sudo apt-get upgrade -y
clear

# TODO: Testar um por um
echo "=============== Instalando codecs e pacotes basicos ==============="
echo "Pacotes a serem instalador:"
echo "ubuntu-restricted-extras"
echo "build-essential"
echo "libgnome-keyring-dev"
echo "linux-headers"
echo "libavcodec-extra"
echo "ia32-libs"
echo "libc6-i386"
echo "lib32z1"
echo "lib32ncurses5"
echo "lib32bz2-1.0"
echo "lib32stdc++6"
sleep 5
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get install build-essential -y
sudo apt-get install libgnome-keyring-dev -y
sudo apt-get install linux-headers -y
sudo apt-get install libavcodec-extra -y
sudo apt-get install ia32-libs -y
sudo apt-get install libc6-i386 -y 
sudo apt-get install lib32z1 -y
sudo apt-get install lib32ncurses5 -y
sudo apt-get install lib32bz2-1.0 -y
sudo apt-get install lib32stdc++6 -y
clear
# TODO: Testa um por um

echo "=============== Instalando o JAVA - openjdk-8-jdk ==============="
sleep 5
sudo apt-get install openjdk-8-jdk -y
clear

echo "=============== Instalando unity-tweak-tool ==============="
sleep 5
sudo apt-get install unity-tweak-tool -y
clear

echo "=============== Instalando o numix-gtk-theme ==============="
sleep 5
sudo apt-get install numix-gtk-theme -y
clear

echo "=============== Instalando o bleachbit ==============="
sleep 5
sudo apt-get install bleachbit -y
clear

echo "=============== Instalando o qbittorent  ==============="
sleep 5
sudo apt-get install qbittorrent -y
clear

echo "=============== Instalando o vim  ==============="
sleep 5
sudo apt-get install vim -y
clear

echo "=============== Instalando o git ==============="
sleep 5
sudo apt-get install git -y
clear

echo "=============== Instalando o vlc ==============="
sleep 5
sudo apt-get install vlc -y
clear

echo "=============== Instalando o cURL ==============="
sleep 5
sudo apt-get install curl -y
clear

# =============== Synapse  ==============="
echo "=============== Instalando o synapse por PPA ==============="
sleep 5
sudo add-apt-repository ppa:synapse-core/ppa -y && sudo apt-get update && sudo apt-get install synapse -y
clear

echo "=============== Instalando o synapse por repository ==============="
sleep 5
sudo add-apt-repository universe
sudo apt-get update 
sudo apt-get install synapse -y
clear

# TODO: Fazer de outra maneira
echo "=============== .DEBs  ==============="
sleep 5
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://launchpad.net/~atareao/+archive/ubuntu/telegram/+files/telegram_0.9.56-0ubuntu1_amd64.deb
wget https://download.sublimetext.com/sublime-text_build-3114_amd64.deb
clear
# TODO: Fazer de outra maneira

# TODO: Testar
echo "=============== Instalando o eclipse ==============="
sleep 5
rm -Rf /opt/eclipse/
rm -Rf /usr/share/applications/eclipse.desktop
wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz
sudo tar -zxvf eclipse.tar.gz -C /opt/
sudo mv /opt/eclipse*/ /opt/eclipse
echo -e '[Desktop Entry]\n Version=1.0\n Name=eclipse\n Exec=/opt/eclipse/eclipse\n Icon=/opt/eclipse/icon.xpm\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/eclipse.desktop
sudo chmod +x /usr/share/applications/eclipse.desktop
cp /usr/share/applications/eclipse.desktop ~/Desktop
clear
# TODO: Testar

# TODO: Testar
echo "=============== Instalando o netbeans ==============="
sleep 5
cd ~/Downloads
wget -c http://download.oracle.com/otn-pub/java/jdk-nb/8-8.0/jdk-8-nb-8-linux-x64.sh?AuthParam=1395311377_7cbe28b25486a89be5d8399b8a43c7a6
chmod +x jdk-8-nb-8-linux-*.sh
bash -c "sh jdk-8-nb-8-linux.sh"
clear
# TODO: Testar

echo "=============== Instalando o Virtualbox ==============="
sleep 5
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" >> /etc/apt/sources.list.d/virtualbox.list'
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.0
#sudo apt-get remove virtualbox-5.0
clear

echo "=============== Instalando o VMware ==============="
sleep 5
cd ~/Downloads 
wget -c https://softwareupdate.vmware.com/cds/vmw-desktop/player/7.1.4/3848939/linux/core/VMware-Player-7.1.4-3848939.x86_64.bundle.tar -O VMware-Player.tar
tar -xvf VMware-Player.tar
sudo bash -c "sh VMware-Player*"
#sudo sh VMware-Player* --uninstall-product vmware-player
clear

echo "=============== Instalando o SYNAPTIC ==============="
sleep 5
wget https://launchpadlibrarian.net/195345684/synaptic_0.81.3_amd64.deb -O synaptic.deb
sudo dpkg -i synaptic.deb
sudo apt-get install -f
#sudo apt-get remove synaptic
#sudo apt-get autoremove
clear

echo "=============== Instalando o netkit ==============="
sleep 5
wget http://wiki.netkit.org/download/netkit/netkit-2.8.tar.bz2
wget http://wiki.netkit.org/download/netkit-filesystem/netkit-filesystem-i386-F5.2.tar.bz2
wget http://wiki.netkit.org/download/netkit-kernel/netkit-kernel-i386-K2.8.tar.bz2
tar -xjSf netkit-2.8.tar.bz2
tar -xjSf netkit-filesystem-i386-F5.2.tar.bz2
tar -xjSf netkit-kernel-i386-K2.8.tar.bz2
echo "export NETKIT_HOME=~/netkit" >> ~/.bashrc
echo "export MANPATH=:$NETKIT_HOME/man" >> ~/.bashrc
echo "export PATH=$NETKIT_HOME/bin:$PATH" >> ~/.bashrc
echo ". $NETKIT_HOME/bin/netkit_bash_completion" >> ~/.bashrc
clear

echo "=============== Instalando o Android-sdk ==============="
sleep 5
wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
tar xvzf android-sdk_r24.4.1-linux.tgz
sudo mv android-sdk-linux/ /opt/
echo "export PATH=$PATH:/opt/android-sdk-linux/tools" >> ~/.bashrc
echo "export PATH=$PATH:/opt/android-sdk-linux/platform-tools" >> ~/.bashrc
clear

echo "=============== Instalando o PacketTrace ==============="
sleep 5
wget http://www.labcisco.com.br/app/Cisco-PT-630.tar.gz
tar xvzf Cisco-PT-630.tar.gz
cd PacketTrace63/
cp install install.sh
bash -c "sh install.sh"
clear

echo "=============== Instalando o proftpd ==============="
sleep 5
sudo apt-get install proftpd -y
clear

echo "=============== Instalando o apache ==============="
sleep 5
sudo apt-get install apache2 -y
clear

echo "=============== Instalando o nginx ==============="
sleep 5
sudo apt-get install nginx -y
clear

echo "=============== Instalando o openssh-server ==============="
sleep 5
sudo apt-get install openssh-server -y
clear

echo "=============== Instalando o openvpn ==============="
sleep 5
sudo apt-get install openvpn
clear

echo "=============== Instalando o wireshark ==============="
sleep 5
sudo apt-get install wireshark -y
clear

echo "=============== Instalando o traceroute ==============="
sleep 5
sudo apt-get install traceroute -y
clear


echo "=============== Instalando o nodeJS ==============="  
sleep 5
wget https://nodejs.org/dist/v4.4.7/node-v4.4.7.tar.gz
tar zxvf node-v4.4.7.tar.gz
cd node-v4.4.7/
#./configure
bash -c "sh configure"
make
ln -fs out/Release/node node
sudo make install
clear
node -v
sleep 3
clear

echo "=============== Instalando o ionic ==============="
sleep 5
sudo npm install -g ionic 
clear
echo "=============== Instalando o cordova ==============="
sleep 5
sudo npm install -g cordova 
clear
echo "=============== Instalando o http-server ==============="
sleep 5
sudo npm install -g http-server 
clear
echo "=============== Instalando o nodemon ==============="
sleep 5
sudo npm install -g nodemon
clear
echo "=============== Instalando o bower ==============="
sleep 5
sudo npm install -g bower
clear

echo "=============== Instalando o pgadmin3 ==============="
sleep 5
sudo apt-get install pgadmin3
clear
echo "=============== Instalando o postgresql ==============="
sleep 5
sudo apt-get install postgresql
clear
sudo su postgres
echo "psql -d postgres -U postgres psql"
echo "ALTER USER postgres with PASSWORD 'SENHA_QUE_VOCE_DESEJA_AQUI';"
echo "Abra o arquivo postgresql.conf localizado em /etc/postgrseql/9.3/main/postgresql.conf e altere a seguinte linha: "
echo "# listen_address = 'localhost'"
echo "para"
echo "# listen_address = '*'"
echo "Salve, feche o arquivo e reinice o database:"
echo "sudo service postgresql restart"

$senha="\t"
