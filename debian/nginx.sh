# Nginx - http://nginx.org/en/linux_packages.html

# $1: codename "stretch" or "jessie"

if sunzi.installed 'nginx'; then
  echo 'nginx already exists'
else
  # Download GPG key
  wget -qO - http://nginx.org/keys/nginx_signing.key | apt-key add -

  # Add to sources.list
  echo "deb http://nginx.org/packages/debian/ $1 nginx" | tee /etc/apt/sources.list.d/nginx.list

  # Install Nginx
  apt-get update
  apt-get install nginx
fi
