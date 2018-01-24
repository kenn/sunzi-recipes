# Import initial SSH keys from Github

# $1: Your Github username such as "kenn"

if [ -f ~/.ssh/authorized_keys ]; then
  echo 'authorized_keys already exists'
else
  mkdir -p ~/.ssh
  wget -qO - https://github.com/$1.keys > ~/.ssh/authorized_keys
  chmod 600 ~/.ssh/authorized_keys
fi
