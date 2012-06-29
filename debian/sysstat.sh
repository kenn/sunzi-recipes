# sysstat, system performance tools for Linux. for sar, iostat, etc.

sunzi::silencer "aptitude -y install sysstat"
if grep -Fq 'ENABLED="true"' /etc/default/sysstat; then
  echo 'sysstat already enabled'
else
  sed -i 's/ENABLED="false"/ENABLED="true"/' /etc/default/sysstat
  /etc/init.d/sysstat restart
fi
