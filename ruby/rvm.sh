# Install RVM

if [ -d /usr/local/rvm ]; then
  echo 'RVM already installed'
else
  bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
  echo '[[ -s /usr/local/rvm/scripts/rvm ]] && source /usr/local/rvm/scripts/rvm' >> ~/.bash_profile
fi
source ~/.bash_profile
