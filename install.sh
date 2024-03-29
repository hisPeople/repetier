#!/bin/bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list && \
apt-get update && \
apt-get install -y mono-complete && \
apt-get install -y mono-devel && \
apt-get install -y wget && \
wget http://download.repetier.com/files/host/linux/repetierHostLinux_1_6_0.tgz && \
tar -xvzf repetierHostLinux_1_6_0.tgz && \
cd RepetierHost && \
sh configureFirst.sh
