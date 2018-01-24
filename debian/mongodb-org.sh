# MongoDB from official repo
# https://docs.mongodb.com/manual/tutorial/install-mongodb-on-debian/

# $1: version such as "3.6"
# $2: os codename "jessie" or "wheezy"

if sunzi.installed 'mongodb-org'; then
  echo 'mongodb-org already exists'
else
  # Download GPG key
  wget -qO - https://www.mongodb.org/static/pgp/server-$1.asc | apt-key add -

  # Add to sources.list
  echo "deb http://repo.mongodb.org/apt/debian $2/mongodb-org/$1 main" | tee /etc/apt/sources.list.d/mongodb-org-$1.list

  # Install MongoDB
  apt-get update
  apt-get install -y mongodb-org
  service mongod start
fi
