#!/bin/sh

# update the system
sudo apt-get update -y
sudo apt-get upgrade -y


################################################################################
# Install  VBoxGuestAdditions
################################################################################
echo ' 1. ********* INSTALACION VBoxGuestAdditions ************** '

mkdir /home/vagrant/temp
wget https://download.virtualbox.org/virtualbox/6.0.12/VBoxGuestAdditions_6.0.12.iso
sudo cp VBoxGuestAdditions_6.0.12.iso /home/vagrant/temp
sudo mkdir -p /home/vagrant/temp/imagen
sudo mount -o loop /home/vagrant/temp/VBoxGuestAdditions_6.0.12.iso /home/vagrant/temp/imagen
sudo sh ./home/vagrant/temp/imagen/VBoxLinuxAdditions.run


################################################################################
# Install  xfce4
################################################################################
echo ' 2. ***************************** '

sudo localectl set-x11-keymap pt
sudo apt-get install -y xfce4 lightdm lightdm-gtk-greeter
sudo apt-get install -y xfce4-terminal
sudo apt-get install -y xfce4-taskmanager

################################################################################
# Install  chrome
################################################################################
echo ' 3. ***************************** '
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get -y install libappindicator1
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -y install -f
