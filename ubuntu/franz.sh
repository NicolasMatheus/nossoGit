#!/bin/bash

sudo rm -Rf /opt/franz*
sudo rm -Rf /usr/bin/franz
sudo rm -Rf /usr/share/applications/franz.desktop

cd /tmp/
wget https://github.com/imprecision/franz-app/releases/download/3.1.0/Franz-linux-x64-3.1.0.tgz -O franz.tgz
sudo mkdir /opt/franz
sudo tar -vzxf franz.tgz -C /opt/franz/
sudo ln -sf /opt/franz/Franz /usr/bin/franz
echo -e '[Desktop Entry]\n Version=1.0\n Name=franz\n Exec=/opt/franz/Franz\n Icon=/opt/franz/resources/app.asar.unpacked/assets/franz.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/franz.desktop
sudo chmod +x /usr/share/applications/franz.desktop
cp /usr/share/applications/franz.desktop ~/Desktop
