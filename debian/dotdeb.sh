# Dotdeb

if grep -Fq "dotdeb" /etc/apt/sources.list; then
  echo 'dotdeb entry already exists'
else
  echo 'deb http://packages.dotdeb.org/ squeeze all' >> /etc/apt/sources.list
  wget http://www.dotdeb.org/dotdeb.gpg -O - | apt-key add -
fi
