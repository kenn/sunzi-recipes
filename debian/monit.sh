# Monit

if sunzi.install "monit"; then
  # Backup the original config so you can refer it later
  cp /etc/monit/monitrc /etc/monit/monitrc.default

  # Enable auto start on reboot
  sed -i 's/startup=0/startup=1/' /etc/default/monit
fi
