# Install RVM

if [ -d /usr/local/rvm ]; then
  echo 'RVM already installed'
  rvm get latest
else
  curl -L https://get.rvm.io | bash -s stable --ruby
  echo '[[ -s /usr/local/rvm/scripts/rvm ]] && source /usr/local/rvm/scripts/rvm' >> ~/.bash_profile
fi
source ~/.bash_profile
