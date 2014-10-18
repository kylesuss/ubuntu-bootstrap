
echo "Installing redis..."

#///////////////////////
#// Dependencies
#///////////////////////

sudo apt-get --assume-yes install build-essential
sudo apt-get --assume-yes install tcl8.5

#///////////////////////
#// Install
#///////////////////////

wget http://download.redis.io/releases/redis-2.8.17.tar.gz
tar xzf redis-2.8.9.tar.gz
cd redis-2.8.9.tar.gz
make
sudo make install
cd utils
sudo ./install_server.sh

#///////////////////////
#// Startup
#///////////////////////

sudo update-rc.d redis_6379 defaults