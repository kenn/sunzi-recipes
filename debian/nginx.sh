# Nginx

if dpkg -s "nginx"; then
  echo "nginx already installed"
else
  aptitude -y install nginx
fi
