#!/usr/bin/env bash

echo "Installing nginx..."

#///////////////////////
#// Install
#///////////////////////

nginx=stable
add-apt-repository ppa:nginx/$nginx
sudo apt-get update
sudo apt-get --assume-yes install nginx

#///////////////////////
#// Configuration
#///////////////////////

sudo service nginx start
sudo update-rc.d nginx defaults