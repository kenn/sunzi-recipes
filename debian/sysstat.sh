# sysstat, system performance tools for Linux. for sar, iostat, etc.

if sunzi.install "sysstat"; then
  sed -i 's/ENABLED="false"/ENABLED="true"/' /etc/default/sysstat
  /etc/init.d/sysstat restart
fi
