# Install RVM

if [ -d /usr/local/rvm ]; then
  echo 'RVM already installed'
else
  bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
fi
