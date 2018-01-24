# Set RAILS_ENV

# $1: environment such as "production" or "staging"

if ! grep -Fq 'RAILS_ENV' ~/.bash_profile; then
  echo 'Setting up RAILS_ENV...'
  echo "export RAILS_ENV=$1" >> ~/.bash_profile
  source ~/.bash_profile
fi
