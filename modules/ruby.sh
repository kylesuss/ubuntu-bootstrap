#!/usr/bin/env bash

echo "Installing ruby..."

#///////////////////////
#// Ruby
#///////////////////////

\curl -sSL https://get.rvm.io | bash -s stable

# Reload the shell
. ./.bash_profile && . ./.profile && . ./.bashrc

if [ `whoami` = 'root' ]
then
  # Assuming an install path of /usr/local/rvm/
  # Have noticed that RVM isn't automatically appending paths to shell profiles as root
  echo '[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm"' >> ~/.bashrc
  source /usr/local/rvm/scripts/rvm  
else
  source "$HOME/.rvm/scripts/rvm"
fi

# Get latest ruby
rvm install ruby --latest
gem install bundler