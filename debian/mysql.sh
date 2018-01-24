# Latest MySQL from official repo
# https://dev.mysql.com/downloads/repo/apt/

# $1: mysql-apt-config version such as "0.8.9-1"

if sunzi.installed 'mysql-server'; then
  echo 'mysql-server already installed'
else
  MYSQL_DEB_REMOTE="http://dev.mysql.com/get/mysql-apt-config_$1_all.deb"
  MYSQL_DEB_LOCAL=`mktemp`
  wget "$MYSQL_DEB_REMOTE" -qO $MYSQL_DEB_LOCAL
  dpkg -i $MYSQL_DEB_LOCAL
  rm $MYSQL_DEB_LOCAL

  apt-get update
  apt-get -q -y install mysql-server
fi
