git pull

if [ ! -d 'Dashium' ];
then
  git clone "https://github.com/Dashium/Dashium"
  cd Dashium
  npm setup
if [ -d 'Dashium' ];
then
  cd Dashium
  npm start
