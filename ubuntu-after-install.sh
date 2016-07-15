#!/bin/bash
#############################################################################
#
# TODO: COLOCAR NO /OPT
#
#############################################################################
read -p "Digite sua senha: " -res senha
clear
#############################################################################
# Diretorio criado para colocar os arquivos baixados e para serem descartados.
mkdir /tmp/all-packs
#cd /tmp/all-packs
#############################################################################
echo "==========================================================="
echo "=============== Atualizando os repositorios ==============="
echo "==========================================================="
sleep 3
echo $senha | sudo -ES apt-get update && sudo apt-get upgrade -y
clear
#############################################################################
echo "==================================================================="
echo "=============== Instalando codecs e pacotes basicos ==============="
echo "==================================================================="
echo "Pacotes a serem instalador:"
echo "ubuntu-restricted-extras" #(ok)
echo "build-essential" 			#(ok)
echo "libgnome-keyring-dev" 	#(ok)
echo "libavcodec-extra" 		#(ok)
echo "lib32z1"					#(ok)
echo "lib32ncurses5"			#(ok)
echo "lib32bz2-1.0"				#(ok)
echo "libc6-i386"				#(ok)
echo "lib32stdc++6"				#(ok)
sleep 3
sudo apt-get install -y ubuntu-restricted-extras build-essential libgnome-keyring-dev libavcodec-extra lib32z1 lib32ncurses5 lib32bz2-1.0 libc6-i386 lib32stdc++6
clear
#############################################################################
read -p "Deseja instalar o Java: [y/n] " -re java
if [ $java = "y" -o $java = "Y" ];
then
	echo "================================================="
	echo "=============== Instalando o JAVA ==============="
	echo "================================================="
	sleep 3
	sudo apt-get install openjdk-7-jdk -y
	sudo apt-get install openjdk-7-jre -y
	sudo apt-get install icedtea-7-plugin -y
	clear
fi
#############################################################################
read -p "Deseja instalar o unity-tweak-tool: [y/n] " -re utt #unity-tweak-tool
if [ $utt = "y" -o $utt = "Y" ];
then
	echo "==========================================================="
	echo "=============== Instalando unity-tweak-tool ==============="
	echo "==========================================================="
	sleep 3
	sudo apt-get install unity-tweak-tool -y
	clear
fi
#############################################################################
read -p "Deseja instalar o tema numix-gtk-theme: [y/n] " -re numix
if [ $numix = "y" -o $utt = "Y" ];
then
	echo "============================================================"
	echo "=============== Instalando o numix-gtk-theme ==============="
	echo "============================================================"
	sleep 3
	sudo apt-get install numix-gtk-theme -y
	clear
fi
#############################################################################
read -p "Deseja instalar o bleachbit: [y/n] " -re bb
if [ $bb = "y" -o $bb = "Y" ];
then
	echo "======================================================"
	echo "=============== Instalando o bleachbit ==============="
	echo "======================================================"
	sleep 3
	sudo apt-get install bleachbit -y
	clear
fi
#############################################################################
read -p "Deseja instalar o qbittorent: [y/n] " -re qb
if [ $qb = "y" -o $qb = "Y" ];
then
	echo "========================================================"
	echo "=============== Instalando o qbittorent  ==============="
	echo "========================================================"
	sleep 3
	sudo apt-get install qbittorrent -y
	clear
fi
#############################################################################
read -p "Deseja instalar o VIM: [y/n] " -re vim
if [ $vim = "y" -o $vim = "Y" ];
then
	echo "================================================="
	echo "=============== Instalando o vim  ==============="
	echo "================================================="
	sleep 3
	sudo apt-get install vim -y
	clear
fi
#############################################################################
read -p "Deseja instalar o git: [y/n] " -re git
if [ $git = "y" -o $git = "y" ];
then
	echo "================================================"
	echo "=============== Instalando o git ==============="
	echo "================================================"
	sleep 3
	sudo apt-get install git -y
	clear
fi
#############################################################################
read -p "Deseja instalar o tree: [y/n] " -re tree
if [ $tree = "y" -o $tree = "Y" ];
then
	echo "================================================="
	echo "=============== Instalando o tree ==============="
	echo "================================================="
	sleep 3
	sudo apt-get install tree -y
	clear
fi
#############################################################################
read -p "Deseja instalar o vlc: [y/n] " -re vlc
if [ $vlc = "y" -o $vlc = "y" ];
then
	echo "================================================"
	echo "=============== Instalando o vlc ==============="
	echo "================================================"
	sleep 3
	sudo apt-get install vlc -y
	clear
fi
#############################################################################
read -p "Deseja instalar o cURL: [y/n] " -re curl
if [ $curl = "y" -o $curl = "Y" ];
then
	echo "================================================="
	echo "=============== Instalando o cURL ==============="
	echo "================================================="
	sleep 3
	sudo apt-get install curl -y
	clear
fi
#############################################################################
read -p "Deseja instalar o Virtualbox: [y/n] " -re vb
if [ $vb = "y" -o $vb = "Y" ];
then
	echo "======================================================="
	echo "=============== Instalando o Virtualbox ==============="
	echo "======================================================="
	sleep 3
	sudo apt-get install virtualbox -y
	sudo apt-get install virtualbox-guest-utils -y
	sudo apt-get install virtualbox-guest-x11 -y
	sudo apt-get install virtualbox-guest-dkms -y
	sudo apt-get install virtualbox-guest-additions-iso -y
	#sudo apt-get remove virtualbox
	clear
fi
#############################################################################
read -p "Deseja instalar o proftpd: [y/n] " -re pft
if [ $pft = "y" -o $pft = "Y" ];
then
	echo "===================================================="
	echo "=============== Instalando o proftpd ==============="
	echo "===================================================="
	sleep 3
	sudo apt-get install proftpd -y
	clear
fi
#############################################################################
read -p "Deseja instalar o apache: [y/n] " -re apache
if [ $apache = "y" -o $apache = "Y" ];
then
	echo "==================================================="
	echo "=============== Instalando o apache ==============="
	echo "==================================================="
	sleep 3
	sudo apt-get install apache2 -y
	clear
fi
#############################################################################
read -p "Deseja instalar o nginx: [y/n] " -re nginx
if [ $nginx = "y" -o $nginx = "Y" ];
then
	echo "=================================================="
	echo "=============== Instalando o nginx ==============="
	echo "=================================================="
	sleep 3
	sudo apt-get install nginx -y
	clear
fi
#############################################################################
read -p "Deseja install o openssh-server: [y/n] " -re opsr
if [ $opsr = "y" -o $opsr = "Y" ];
then
	echo "==========================================================="
	echo "=============== Instalando o openssh-server ==============="
	echo "==========================================================="
	sleep 3
	sudo apt-get install openssh-server -y
	clear
fi
#############################################################################
read -p "Deseja instalar o openvpn: [y/n] " -re opv
if [ $opv = "y" -o $opv = "Y" ];
then
	echo "===================================================="
	echo "=============== Instalando o openvpn ==============="
	echo "===================================================="
	sleep 3
	sudo apt-get install openvpn
	clear
fi
#############################################################################
read -p "Deseja instalar o wireshark: [y/n] " -re ws
if [ $ws = "y" -o $ws = "Y" ];
then 
	echo "======================================================"
	echo "=============== Instalando o wireshark ==============="
	echo "======================================================"
	sleep 3
	sudo apt-get install wireshark -y
	clear
fi
#############################################################################
read -p "Deseja instalar o traceroute: [y/n] " -re trace
if [ $trace = "y" -o $trace = "Y" ];
then
	echo "======================================================="
	echo "=============== Instalando o traceroute ==============="
	echo "======================================================="
	sleep 3
	sudo apt-get install traceroute -y
	clear
fi
#############################################################################
read -p "Deseja instalar o pgadmin3: [y/n] " -re pg
if [ $pg = "y" -o $pg = "Y"];
then
	echo "====================================================="
	echo "=============== Instalando o pgadmin3 ==============="
	echo "====================================================="
	sleep 3
	sudo apt-get install pgadmin3 -y
	clear
fi
#############################################################################
read -p "Deseja instala o postgresql: [y/n] " -re pgs
if [ $pgs = "y" -o $pgs = "Y" ];
then
	echo "======================================================="
	echo "=============== Instalando o postgresql ==============="
	echo "======================================================="
	sleep 3
	sudo apt-get install postgresql -y
	clear
fi
#############################################################################
read -p "Deseja instalar o samba: [y/n] " -re samb
if [ $samb = "y" -o $samb = "Y" ];
then
	echo "=================================================="
	echo "=============== Instalando o samba ==============="
	echo "=================================================="
	sleep 3
	sudo apt-get install samba -y
	clear
fi
#############################################################################
read -p "Deseja instalar o nmap: [y/n] " -re nmap
if [ $nmap = "y" -o $nmap = "Y" ];
then
	echo "================================================="
	echo "=============== Instalando o nmap ==============="
	echo "================================================="
	sleep 3
	sudo apt-get install nmap -y
	clear
fi
#############################################################################
read -p "Deseja instalar o filezilla: [y/n] " -re ff
if [ $ff = "y" -o $ff = "Y" ];
then
	echo "======================================================"
	echo "=============== Instalando o filezilla ==============="
	echo "======================================================"
	sleep 3
	sudo apt-get install filezilla -y
	clear
fi
#############################################################################
read -p "Deseja instalar o idle: [y/n] " -re idle
if [ $idle = "y" -o $idle = "Y" ];
then
	echo "================================================="
	echo "=============== Instalando o idle ==============="
	echo "================================================="
	sleep 3
	sudo apt-get install idle -y
	clear
fi
#############################################################################
read -p "Deseja instalar o texlive-latex: [y/n] " -re txlb
if [ $txlb = "y" -o $txlb = "Y" ];
then
	echo "==============================================================="
	echo "=============== Instalando o texlive-latex-base ==============="
	echo "==============================================================="
	sleep 3
	sudo apt-get -y install texlive-latex-base -y
	clear
fi
#############################################################################
read -p "Deseja instalar o laptop-mode-tools: [y/n] " -re lmt
if [ $lmt = "y" -o $lmt = "Y" ];
then
	echo "=============================================================="
	echo "=============== Instalando o laptop-mode-tools ==============="
	echo "=============================================================="
	sleep 3
	sudo apt-get install laptop-mode-tools
	clear
fi
#######################################################################################
########################	Pacotes .deb	###########################################
#######################################################################################
cd /tmp/all-packs
#############################################################################
read -p "Deseja instalar o google-chrome: [y/n] " -re google-chrome
if [ $google-chrome = "y" $google-chrome = "Y" ];
then
	echo "=========================================================="
	echo "=============== Instalando o google-chrome ==============="
	echo "=========================================================="
	sleep 3
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt-get install -f
	clear
fi
#############################################################################
read -p "Deseja instalar o telegram-desktop: [y/n] " -re tele
if [ $tele = "y" -o $tele =" Y" ];
then
	echo "====================================================="
	echo "=============== Instalando o telegram ==============="
	echo "====================================================="
	sleep 3
	wget https://launchpad.net/~atareao/+archive/ubuntu/telegram/+files/telegram_0.9.56-0ubuntu1_amd64.deb
	sudo apt-get install -f
	clear
fi
#############################################################################
read -p "Deseja instalar o sublime-text: [y/n] " -re subl
if [ $subl = "y" $subl = "Y" ];
then
	echo "========================================================"
	echo "=============== Instalando o sublimetext ==============="
	echo "========================================================"
	sleep 3
	wget https://download.sublimetext.com/sublime-text_build-3114_amd64.deb
	sudo apt-get install -f
	clear
fi
#############################################################################
read -p "Deseja instalar o atom: [y/n] " -re atom
if [ $atom = "y" -o $atom = "Y" ];
then
	echo "================================================="
	echo "=============== Instalando o atom ==============="
	echo "================================================="
	sleep 3
	wget https://atom.io/download/deb -O atom.deb
	sudo apt-get install -f
	clear
fi
#############################################################################
read -p "Deseja instalar o synaptic: [y/n] " -re syn
if [ $syn = "y" -o $syn = "Y" ];
then
	echo "====================================================="
	echo "=============== Instalando o synaptic ==============="
	echo "====================================================="
	sleep 3
	wget https://launchpadlibrarian.net/195345684/synaptic_0.81.3_amd64.deb -O synaptic.deb
	sudo apt-get install -f
	clear
fi
##################################################################################
#############################################################################
# TODO: Testar
read -p "Deseja instalar o VMware: [y/n] " -re vm
if [ $vm = "y" -o $vm = "Y" ];
then
	echo "==================================================="
	echo "=============== Instalando o VMware ==============="
	echo "==================================================="
	sleep 3
	wget -c https://softwareupdate.vmware.com/cds/vmw-desktop/player/7.1.4/3848939/linux/core/VMware-Player-7.1.4-3848939.x86_64.bundle.tar -O VMware-Player.tar
	tar -xvf VMware-Player.tar
	sudo bash -c "sh VMware-Player*"
	#sudo sh VMware-Player* --uninstall-product vmware-player
	clear
fi
# TODO: Testar
#############################################################################
# TODO: Testar
read -p "Deseja instalar o netkit: [y/n] " -re netk
if [ $netk = "y" -o $netk = "Y" ];
then
	echo "==================================================="
	echo "=============== Instalando o netkit ==============="
	echo "==================================================="
	sleep 3
	cd /tmp/all-packs
	wget http://wiki.netkit.org/download/netkit/netkit-2.8.tar.bz2
	wget http://wiki.netkit.org/download/netkit-filesystem/netkit-filesystem-i386-F5.2.tar.bz2
	wget http://wiki.netkit.org/download/netkit-kernel/netkit-kernel-i386-K2.8.tar.bz2
	tar -xjSf netkit-2.8.tar.bz2
	tar -xjSf netkit-filesystem-i386-F5.2.tar.bz2
	tar -xjSf netkit-kernel-i386-K2.8.tar.bz2
	mv *.bz2 netkit/
	sudo mv netkit/ /opt
	clear
	sh -c "echo 'export NETKIT_HOME=/opt/netkit' >> ~/.bashrc"
	sh -c "echo 'export MANPATH=:$NETKIT_HOME/man' >> ~/.bashrc"
	sh -c "echo 'export PATH=$NETKIT_HOME/bin:$PATH' >> ~/.bashrc"
	sh -c "echo '. $NETKIT_HOME/bin/netkit_bash_completion' >> ~/.bashrc"
fi
# TODO: Testar
#############################################################################
# TODO: Testar
read -p "Deseja instalar o android-sdk: [y/n] " -re as
if [ $as = "y"  -o $as = "Y" ];
then
	echo "========================================================"
	echo "=============== Instalando o Android-sdk ==============="
	echo "========================================================"
	sleep 3
	cd /tmp/all-packs
	wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
	tar -xvzf android-sdk_r24.4.1-linux.tgz
	sudo mv android-sdk-linux/ /opt/
	sh -c "echo 'export PATH=$PATH:/opt/android-sdk-linux/tools' >> ~/.bashrc"
	sh -c "echo 'export PATH=$PATH:/opt/android-sdk-linux/platform-tools' >> ~/.bashrc"
	clear
fi
# TODO: Testar
#############################################################################
# TODO: Testar
read -p "Deseja instalar o PacketTrace: [y/n] " -re pt
if [ $pt = "y" -o $pt = "Y" ];
then
	echo "========================================================"
	echo "=============== Instalando o PacketTrace ==============="
	echo "========================================================"
	sleep 3
	wget http://www.labcisco.com.br/app/Cisco-PT-630.tar.gz
	tar xvzf Cisco-PT-630.tar.gz
	cd PacketTrace63/
	bash -c "sh install"
	clear
fi
# TODO: Testar
#############################################################################
read -p "Deseja instalar o nodejs-LTS: [y/n] " -re njs
if [ $njs = "y" -o $njs = "Y" ];
then
	echo "==================================================="
	echo "=============== Instalando o nodeJS ==============="
	echo "==================================================="
	sleep 3
	wget https://nodejs.org/dist/v4.4.7/node-v4.4.7.tar.gz
	tar zxvf node-v4.4.7.tar.gz
	cd node-v4.4.7/
	bash -c "./configure"
	make
	ln -fs out/Release/node node
	sudo make install
	clear
	node -v
	sleep 3
	clear
fi
#############################################################################
read -p "Deseja instalar o nodejs-current: [y/n] " -re njsc
if [ $njsc = "y" -o $njsc = "Y" ];
then
	echo "============================================================="
	echo "=============== Instalando o nodeJS - Current ==============="
	echo "============================================================="
	sleep 3
	wget https://nodejs.org/dist/v6.3.0/node-v6.3.0.tar.gz
	tar zxvf node-v6.3.0.tar.gz
	cd node-v6.3.0/
	bash -c "./configure"
	make
	ln -fs out/Release/node node
	sudo make install
	clear
	node -v
	sleep 3
	clear
fi
#############################################################################
read -p "Deseja instalar o ionic: [y/n] " -re ionic
if [ $ionic = "y" -o $ionic = "Y" ];
then
	echo "=================================================="
	echo "=============== Instalando o ionic ==============="
	echo "=================================================="
	sleep 3
	sudo npm install -g ionic
	clear
fi
#############################################################################
read -p "Deseja instalar o cordova: [y/n] " -re cordova
if [ $cordova = "y" -o $cordova = "Y" ];
then
	echo "===================================================="
	echo "=============== Instalando o cordova ==============="
	echo "===================================================="
	sleep 3
	sudo npm install -g cordova
	clear
fi
#############################################################################
read -p "Deseja instalar o http-server: [y/n] " -re hs
if [ $hs = "y" -o $hs = "Y" ];
then
	echo "========================================================"
	echo "=============== Instalando o http-server ==============="
	echo "========================================================"
	sleep 3
	sudo npm install -g http-server
	clear
fi
#############################################################################
read -p "Deseja instalaro nodemon: [y/n] " -re nodemon
if [ $nodemon = "y" -o $nodemon = "Y" ];
then
	echo "===================================================="
	echo "=============== Instalando o nodemon ==============="
	echo "===================================================="
	sleep 3	
	sudo npm install -g nodemon
	clear
fi
#############################################################################
read -p "Deseja instalar o bower: [y/n] " -re bower
if [ $bower = "y" -o $bower = "Y" ];
then
	echo "=================================================="
	echo "=============== Instalando o bower ==============="
	echo "=================================================="
	sleep 3
	sudo npm install -g bower
	clear
fi
#############################################################################
read -p "Deseja instalar o docker: [y/n] " -re docker
if [ $docker = "y" -o $docker = "Y" ];
then
	echo "==================================================="
	echo "=============== Instalando o docker ==============="
	echo "==================================================="
	sudo curl -sSL https://get.docker.com/ | sh
fi
#############################################################################