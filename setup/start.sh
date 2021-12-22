git pull

current=$(pwd)

if [ ! -d 'DashiumOS' ];
then
  mkdir DashiumOS
  cd DashiumOS
  git clone "https://github.com/Dashium/Dashium"
  cd Dashium
  npm setup
else
  bash /home/dashium/DashiumInstaller/setup/install_DashiumOS.sh
  cd DashiumOS/Dashium
  npm start
fi