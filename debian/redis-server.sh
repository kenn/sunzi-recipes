# Redis

if dpkg -s "redis-server"; then
  echo "redis-server already installed"
else
  aptitude -y install redis-server
fi
