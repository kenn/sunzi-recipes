# Git

if dpkg -s "git-core"; then
  echo 'git-core already installed'
else
  aptitude -y install git-core
fi
