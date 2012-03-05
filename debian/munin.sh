# Munin

if dpkg -s "munin"; then
  echo 'munin already installed'
else
  aptitude -y install munin

  # Backup the original config so you can refer it later
  cp /etc/munin/munin.conf /etc/munin/munin.default.conf
fi
