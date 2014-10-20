#!/usr/bin/env bash

echo "Installing nginx..."

#///////////////////////
#// Install
#///////////////////////

nginx=stable
sudo add-apt-repository ppa:nginx/$nginx
sudo apt-get update
sudo apt-get --assume-yes install nginx

#///////////////////////
#// Config
#///////////////////////

sudo service nginx start
sudo update-rc.d nginx defaults