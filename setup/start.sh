git pull

if [ ! -d 'Dashium' ];
then
  git clone "https://github.com/Dashium/Dashium.git"
  cd Dashium
  npm setup
elif
  cd Dashium
  npm start
fi