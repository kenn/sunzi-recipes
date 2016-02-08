# Install RVM

if [ -d /usr/local/rvm ]; then
  echo 'RVM already installed'
else
  curl -sSL https://rvm.io/mpapis.asc | gpg --import -
  curl -L https://get.rvm.io | bash -s stable
  echo '[[ -s /usr/local/rvm/scripts/rvm ]] && source /usr/local/rvm/scripts/rvm' >> ~/.bash_profile
fi
source ~/.bash_profile
