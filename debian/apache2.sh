# Apache

if dpkg -s "apache2"; then
  echo "apache2 already installed"
else
  aptitude -y install apache2
fi
