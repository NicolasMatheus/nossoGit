#!/bin/bash

# Para ler os dados sem que apareça os mesmo. 
read -p "Digite sua senha: " -res senha

echo "Habilitando a função de hibernar"
# Passa a senha digitada acima como paramento para o sudo -ES
echo $senha | sudo -ES touch /etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkla
echo $senha | sudo -ES sudo echo "[Re-enable hibernate by default in upower]
Identity=unix-user:*
Action=org.freedesktop.upower.hibernate
ResultActive=yes

[Re-enable hibernate by default in logind]
Identity=unix-user:*
Action=org.freedesktop.login1.hibernate;org.freedesktop.login1.handle-hibernate-key;org.freedesktop.login1;org.freedesktop.login1.hibernate-multiple-sessions;org.freedesktop.login1.hibernate-ignore-inhibit
ResultActive=yes" >> /etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkl

# TODO: Adicionar especificações 
echo "=============== Instalando compizconfig-settings-manager ==============="
echo "Utilidade:"
echo "Minimizar programas clicando neles."
echo $senha | sudo -ES apt-get install compizconfig-settings-manager -y
# TODO: Adicionar especificações 

echo "Remove a conta guest"
echo $senha | sudo -ES mkdir /etc/lightdm/lightdm.conf.d && sudo sh -c 'printf "[SeatDefaults]\nallow-guest=false\n" > /etc/lightdm/lightdm.conf.d/5no-guest.conf'
echo $senha | sudo -ES rm /etc/lightdm/lightdm.conf.d/no-guest.conf
#echo $senha | sudo -ES rm /etc/lightdm/lightdm.conf.d/5no-guest.con
echo $senha | sudo -ES restart

