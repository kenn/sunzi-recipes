# Munin node

if sunzi.install "munin-node"; then
  # Backup the original config so you can refer it later
  cp /etc/munin/munin-node.conf /etc/munin/munin-node.default.conf
fi
