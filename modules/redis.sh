#!/usr/bin/env bash

echo "Installing redis..."

#///////////////////////
#// Install
#///////////////////////

wget --retry-connrefused --waitretry=10 http://download.redis.io/redis-stable.tar.gz | bash
tar xzf redis-stable.tar.gz
cd redis-stable
make
sudo make install

#///////////////////////
#// Config
#///////////////////////

sudo mkdir /etc/redis
sudo mkdir /var/redis
sudo cp utils/redis_init_script /etc/init.d/redis_6379
sudo cp redis.conf /etc/redis/6379.conf
sudo mkdir /var/redis/6379
sed  -i.bak -e 's/daemonize no.*/daemonize yes/' /etc/redis/6379.conf
sed  -i.bak -e 's/pidfile \/var\/run\/redis\.pid.*/pidfile \/var\/run\/redis\_6379\.pid/' /etc/redis/6379.conf
sed  -i.bak -e 's/logfile \"\".*/logfile \/var\/log\/redis\_6379\.log/' /etc/redis/6379.conf
sed  -i.bak -e 's/dir \.\/.*/dir \/var\/redis\/6379/' /etc/redis/6379.conf
sudo update-rc.d redis_6379 defaults
/etc/init.d/redis_6379 start