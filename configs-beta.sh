#!/bin/bash

echo "Digite sua senha: "
read senha
sudo -S $senha

echo "Habilitando a função de hibernar"
sudo touch /etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkla
sudo echo "[Re-enable hibernate by default in upower]
Identity=unix-user:*
Action=org.freedesktop.upower.hibernate
ResultActive=yes

[Re-enable hibernate by default in logind]
Identity=unix-user:*
Action=org.freedesktop.login1.hibernate;org.freedesktop.login1.handle-hibernate-key;org.freedesktop.login1;org.freedesktop.login1.hibernate-multiple-sessions;org.freedesktop.login1.hibernate-ignore-inhibit
ResultActive=yes" >> /etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkl

