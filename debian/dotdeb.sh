# Dotdeb

if grep -Fq "dotdeb" /etc/apt/sources.list; then
  echo 'dotdeb entry already exists'
else
  echo 'Adding dotdeb to the apt source list'
  echo 'deb http://packages.dotdeb.org/ squeeze all' >> /etc/apt/sources.list
  wget http://www.dotdeb.org/dotdeb.gpg -O - 2> /dev/null | apt-key add -
fi
