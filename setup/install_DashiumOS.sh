cd /home/dashium/DashiumInstaller/

git stash
git reset --merge
git pull

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