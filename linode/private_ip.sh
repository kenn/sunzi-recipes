# Private IP for Linode
# Note that you need to restart after the setting is changed
# $1: Private IP

if grep -Fq "eth0:0" /etc/network/interfaces; then
  echo 'Private IP already set up'
else
  cat >> /etc/network/interfaces <<EOM

# The private network interface
auto eth0:0
iface eth0:0 inet static
  address $1
  netmask 255.255.128.0
EOM
fi
