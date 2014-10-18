
echo "Installing redis..."

#///////////////////////
#// Dependencies
#///////////////////////

sudo apt-get --assume-yes install build-essential
sudo apt-get --assume-yes install tcl8.5
sudo apt-get --assume-yes autoremove

#///////////////////////
#// Install
#///////////////////////

wget http://download.redis.io/releases/redis-2.8.17.tar.gz | bash
tar xzf redis-2.8.17.tar.gz
cd redis-2.8.17
make
sudo make install
cd utils

#///////////////////////
#// Startup
#///////////////////////

sudo update-rc.d redis_6379 defaults