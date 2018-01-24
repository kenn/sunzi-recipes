# Install Ruby via RVM

# $1: ruby version such as "2.5"

if [[ "$(which ruby)" != /usr/local/rvm/rubies/ruby-$1* ]]; then
  echo "Installing ruby-$1"
  # Install dependencies using RVM autolibs - see https://blog.engineyard.com/2013/rvm-ruby-2-0
  rvm install --autolibs=3 $1
  rvm $1 --default
  echo 'gem: --no-ri --no-rdoc' > ~/.gemrc

  # Install Bundler
  gem install bundler
fi
