# Munin node

if dpkg -s "munin-node"; then
  echo 'munin-node already installed'
else
  aptitude -y install munin-node
  
  # Backup the original config so you can refer it later
  cp /etc/munin/munin-node.conf /etc/munin/munin-node.default.conf
fi
