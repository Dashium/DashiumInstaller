cd /home/dashium/DashiumInstaller/

git stash
git reset --merge
git pull

npm install
npm start

cd /

if [ ! -d 'DashiumOS' ];
then
  mkdir DashiumOS
  cd DashiumOS
  git clone "https://github.com/Dashium/Dashium"
  cd Dashium
  npm setup
else
  cd DashiumOS/Dashium
  npm start
fi

cd /

if [ ! -d 'DashiumOS/DashiumWebServer' ];
then
  cd DashiumOS
  git clone "https://github.com/Dashium/DashiumWebServer"
  cd DashiumWebServer
  npm setup
else
  cd DashiumOS/DashiumWebServer
  npm start
fi