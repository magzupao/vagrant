#!/bin/sh

# update the system
sudo apt-get update -y

mkdir temps
wget https://download.virtualbox.org/virtualbox/6.1.26/VBoxGuestAdditions_6.1.26.iso
sudo cp VBoxGuestAdditions_6.1.26.iso /home/vagrant/temps
sudo mkdir -p temps/imagen
sudo mount -o loop temps/VBoxGuestAdditions_6.1.26.iso temp/imagen
sudo sh ./temps/imagen/VBoxLinuxAdditions.run
