# Installs rbenv and ruby-build

if [ -d /usr/local/rbenv ]; then
  echo "rbenv already installed"
else
  # install packages necessary to install ruby
  apt-get -y install build-essential
  apt-get -y install libc6-dev
  apt-get -y install automake
  apt-get -y install libtool

  # https://github.com/sstephenson/ruby-build/issues/119
  # "It seems your ruby installation is missing psych (for YAML
  # output). To eliminate this warning, please install libyaml and
  # reinstall your ruby."
  apt-get -y install libyaml-dev

  # needed to unpack rubygems
  apt-get -y install zlib1g
  apt-get -y install zlib1g-dev

  # openssl support for ruby
  apt-get -y install openssl
  apt-get -y install libssl-dev

  # readline for irb and rails console
  apt-get -y install libreadline-dev

  # for ruby stdlib rexml and nokogiri
  # http://nokogiri.org/tutorials/installing_nokogiri.html
  apt-get -y install libxml2-dev
  apt-get -y install libxslt1-dev

  # better irb support
  apt-get -y install ncurses-dev

  # for searching packages
  apt-get -y install pkg-config

  # install rbenv and ruby-build
  git clone git://github.com/sstephenson/rbenv.git /usr/local/rbenv
  git clone git://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build
  echo 'export RBENV_ROOT="/usr/local/rbenv"' >> /etc/profile.d/rbenv.sh
  echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> /etc/profile.d/rbenv.sh
  echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
  source /etc/profile.d/rbenv.sh
fi