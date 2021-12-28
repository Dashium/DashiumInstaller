# PARAM USER
sudo systemctl edit getty@tty1.service

# REMOVE
sudo apt remove cloud*

sudo apt autoremove
sudo apt update
sudo apt upgrade

# INSTALL

sudo apt install openssh-server
sudo apt install lsscsi
sudo apt install git
sudo apt install genisoimage

git clone https://github.com/Dashium/DashiumInstaller
cd DashiumInstaller
bash setup/install.sh

bash setup/envSet.sh