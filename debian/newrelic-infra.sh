# Setup Server Monitoring on New Relic
# https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/installation/install-infrastructure-linux

# $1: New Relic license key
# $2: os codename - "buster", "stretch", "jessie" or "wheezy"

if sunzi.installed 'newrelic-infra'; then
  echo 'newrelic-infra already installed'
else
  # Add New Relic Infra repository and license
  echo "license_key: $1" | tee -a /etc/newrelic-infra.yml
  curl https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | apt-key add -
  printf "deb [arch=amd64] https://download.newrelic.com/infrastructure_agent/linux/apt jessie main" | tee -a /etc/apt/sources.list.d/newrelic-infra.list

  # Update the catalog, then install the package
  apt-get update
  apt-get install newrelic-infra -y

  # Start agent
  systemctl start newrelic-infra
fi
