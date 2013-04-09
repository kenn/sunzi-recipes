# Munin

if sunzi.install "munin"; then
  # Backup the original config so you can refer it later
  cp /etc/munin/munin.conf /etc/munin/munin.default.conf
fi
