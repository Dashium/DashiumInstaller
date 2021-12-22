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
  cd current
  cd ..
  npm install
  npm start
  cd DashiumOS/Dashium
  npm start
fi