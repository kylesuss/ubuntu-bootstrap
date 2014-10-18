
echo "Installing ruby..."

#///////////////////////
#// Ruby
#///////////////////////

\curl -sSL https://get.rvm.io | bash -s stable

# Assuming an install path of /usr/local/rvm/
echo '[[ -s "/usr/local/rvm/" ]] && . "/usr/local/rvm/"' >> ~/.bashrc
source /usr/local/rvm/scripts/rvm

# Get latest ruby
rvm install ruby --latest
gem install bundler