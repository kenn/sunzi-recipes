# Monit

if dpkg -l "monit"; then
  echo 'monit already installed'
else
  aptitude -y install monit
  mv /etc/monit/monitrc /etc/monit/monitrc.old
  sed -i 's/startup=0/startup=1/' /etc/default/monit
fi
