# Setup Server Monitoring on New Relic
# $1: New Relic license key

if dpkg -s "newrelic-sysmond"; then
  echo 'newrelic-sysmond already installed'
else
  # Add New Relic repository
  echo 'deb http://apt.newrelic.com/debian/ newrelic non-free' > /etc/apt/sources.list.d/newrelic.list
  wget -O - https://download.newrelic.com/548C16BF.gpg | apt-key add -

  # Update the catalog, then install the package
  apt-get update
  apt-get -y install newrelic-sysmond

  # Setup your license key
  nrsysmond-config --set license_key=$1
  /etc/init.d/newrelic-sysmond start
fi
