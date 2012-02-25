# Munin node

if dpkg -l "munin-node"; then
  echo 'munin-node already installed'
else
  aptitude -y install munin-node
  mv /etc/munin/munin-node.conf /etc/munin/munin-node.default.conf
fi
