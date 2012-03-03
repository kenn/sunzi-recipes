# Nginx

if dpkg -l "nginx"; then
  echo "nginx already installed"
else
  aptitude -y install nginx
fi
