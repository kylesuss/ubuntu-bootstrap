#!/usr/bin/env bash

echo "Installing monit..."

#///////////////////////
#// Install
#///////////////////////

sudo apt-get install monit

#///////////////////////
#// Config
#///////////////////////

sudo sed -i.bak -e 's/\# set httpd port 2812 and.*/set httpd port 2812 and/' /etc/monit/monitrc
sudo sed -i.bak -e 's/\#    use address localhost.*/use address localhost/' /etc/monit/monitrc
sudo sed -i.bak -e 's/\#    allow localhost.*/allow localhost/' /etc/monit/monitrc

sudo service monit restart