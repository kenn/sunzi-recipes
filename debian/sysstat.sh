# sysstat, system performance tools for Linux. for sar, iostat, etc.

if dpkg -s "sysstat"; then
  echo 'sysstat already installed'
else
  aptitude -y install sysstat
  sed -i 's/ENABLED="false"/ENABLED="true"/' /etc/default/sysstat
  /etc/init.d/sysstat restart
fi
