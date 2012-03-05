# MongoDB
# http://www.mongodb.org/display/DOCS/Ubuntu+and+Debian+packages

if dpkg -s "mongodb-10gen"; then
  echo 'mongodb-10gen already exists'
else
  echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' >> /etc/apt/sources.list

  # Install 10gen GPG key
  apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10

  # Install MongoDB
  aptitude update
  aptitude install mongodb-10gen
fi
