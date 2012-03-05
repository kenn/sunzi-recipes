# MySQL
# $1: Version (5.1, 5.5)

if dpkg -s "mysql-server-$1"; then
  echo "mysql-server-$1 already installed"
else
  aptitude -q -y install mysql-server-$1
fi
