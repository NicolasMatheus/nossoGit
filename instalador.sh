#!/bin/bash


echo "Digite sua senha: "
read senha

echo $senha | sudo -S

clear
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install ubuntu-restricted-extras build-essential libgnome-keyring-dev linux-headers libavcodec-extra -y
sudo apt-get install ia32-libs libc6-i386  lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6 -y
sudo apt-get install openjdk-8-jdk
sudo apt-get install unity-tweak-tool numix-gtk-theme -y
sudo apt-get install bleachbit qbittorrent -y
sudo apt-get install vim git -y
sudo apt-get install vlc -y
sudo apt-get install curl -y

sudo add-apt-repository ppa:synapse-core/ppa -y && sudo apt-get update && sudo apt-get install synapse -y

cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://launchpad.net/~atareao/+archive/ubuntu/telegram/+files/telegram_0.9.56-0ubuntu1_amd64.deb
wget https://download.sublimetext.com/sublime-text_build-3114_amd64.deb


sudo mkdir /etc/lightdm/lightdm.conf.d && sudo sh -c 'printf "[SeatDefaults]\nallow-guest=false\n" > /etc/lightdm/lightdm.conf.d/5no-guest.conf'
sudo rm /etc/lightdm/lightdm.conf.d/no-guest.conf
sudo restart

rm -Rf /opt/eclipse/
rm -Rf /usr/share/applications/eclipse.desktop
wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz
sudo tar -zxvf eclipse.tar.gz -C /opt/
sudo mv /opt/eclipse*/ /opt/eclipse
echo -e '[Desktop Entry]\n Version=1.0\n Name=eclipse\n Exec=/opt/eclipse/eclipse\n Icon=/opt/eclipse/icon.xpm\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/eclipse.desktop
sudo chmod +x /usr/share/applications/eclipse.desktop
cp /usr/share/applications/eclipse.desktop ~/Desktop

wget -c http://download.oracle.com/otn-pub/java/jdk-nb/8-8.0/jdk-8-nb-8-linux-x64.sh?AuthParam=1395311377_7cbe28b25486a89be5d8399b8a43c7a6
chmod +x jdk-8-nb-8-linux-*.sh

echo "Passo 1. Abra a opção “Programas e atualizações” de “Configurações do sistema” do Unity e marque os repositórios “Parceiros da Canonical”, na guia “Outros programas” "
sudo apt-get install adobe-flashplugin

# ============== Franz ===================== #
#wget https://github.com/imprecision/franz-app/releases/download/3.1.0/Franz-linux-x64-3.1.0.tgz -O franz.tgz
#sudo mkdir /opt/franz
#sudo tar -vzxf franz.tgz -C /opt/franz/
#sudo ln -sf /opt/franz/Franz /usr/bin/franz
#echo -e '[Desktop Entry]\n Version=1.0\n Name=franz\n Exec=/opt/franz/Franz\n Icon=/opt/franz/resources/app.asar.unpacked/assets/franz.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/franz.desktop
#sudo chmod +x /usr/share/applications/franz.desktop
#cp /usr/share/applications/franz.desktop ~/Desktop


sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" >> /etc/apt/sources.list.d/virtualbox.list'
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.0
#sudo apt-get remove virtualbox-5.0

wget -c https://softwareupdate.vmware.com/cds/vmw-desktop/player/7.1.4/3848939/linux/core/VMware-Player-7.1.4-3848939.x86_64.bundle.tar -O VMware-Player.tar
tar -xvf VMware-Player.tar
sudo sh VMware-Player*
#sudo sh VMware-Player* --uninstall-product vmware-player


wget https://launchpadlibrarian.net/195345684/synaptic_0.81.3_amd64.deb -O synaptic.deb
sudo dpkg -i synaptic.deb
sudo apt-get install -f
sudo apt-get remove synaptic
sudo apt-get autoremove


echo "Para minimizar os programas com um click"
sudo apt-get install compizconfig-settings-manager


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

wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
tar xvzf android-sdk_r24.4.1-linux.tgz
sudo mv android-sdk-linux/ /opt/
echo "export PATH=$PATH:/opt/android-sdk-linux/tools" >> ~/.bashrc
echo "export PATH=$PATH:/opt/android-sdk-linux/platform-tools" >> ~/.bashrc

wget http://www.labcisco.com.br/app/Cisco-PT-630.tar.gz
tar xvzf Cisco-PT-630.tar.gz
cd PacketTrace63/
cp install install.sh
sh install.sh

sudo apt-get install proftpd -y
sudo apt-get install apache2 -y
sudo apt-get install nginx -y
sudo apt-get install openssh-server -y
sudo apt-get install openvpn
sudo apt-get install wireshark -y
sudo apt-get install traceroute -y

wget https://nodejs.org/dist/v4.4.7/node-v4.4.7.tar.gz
tar zxvf node-v4.4.7.tar.gz
cd node-v4.4.7/
./configure
#sh configure
make
ln -fs out/Release/node node
sudo make install

sudo npm install -g ionic 
sudo npm install -g ionic 
sudo npm install -g cordova 
sudo npm install -g http-server 
sudo npm install -g nodemon



sudo apt-get install pgadmin3
sudo apt-get install postgresql
sudo su postgres
echo "psql -d postgres -U postgres psql"
echo "ALTER USER postgres with PASSWORD 'SENHA_QUE_VOCE_DESEJA_AQUI';"
echo "Abra o arquivo postgresql.conf localizado em /etc/postgrseql/9.3/main/postgresql.conf e altere a seguinte linha: "
echo "# listen_address = 'localhost'"
echo "para"
echo "# listen_address = '*'"
echo "Salve, feche o arquivo e reinice o database:"
echo "sudo service postgresql restart"

