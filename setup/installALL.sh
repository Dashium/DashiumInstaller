sudo apt install git

sudo systemctl edit getty@tty1.service

# REMOVE
sudo apt remove cloud*

sudo apt autoremove
sudo apt update
sudo apt upgrade

# INSTALL

sudo apt install openssh-server
git clone https://github.com/Dashium/DashiumInstaller
cd DashiumInstaller
bash setup/install.sh