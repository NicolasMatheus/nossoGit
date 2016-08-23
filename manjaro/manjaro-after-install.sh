#!/bin/bash

# Removendo o db.lck
sudo rm -f /var/lib/pacman/db.lck
# Atualizar o sistema
sudo pacman -Syyuu
# Otimizar os mirrors
sudo pacman-mirrors -g
sudo pacman -Syy
# Otimizar a base de dados
sudo pacman-optimize
