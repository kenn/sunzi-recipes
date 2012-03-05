# Setup Server Monitoring on New Relic
# $1: New Relic license key

if dpkg -s "newrelic-sysmond"; then
  echo 'newrelic-sysmond already installed'
else
  # Add New Relic repository
  wget -O /etc/apt/sources.list.d/newrelic.list http://download.newrelic.com/debian/newrelic.list
  wget -O - http://download.newrelic.com/548C16BF.gpg | apt-key add -

  # Update the catalog, then install the package
  aptitude update
  aptitude -y install newrelic-sysmond

  # Setup your license key
  nrsysmond-config --set license_key=$1
  /etc/init.d/newrelic-sysmond restart
fi
