#!/bin/bash
# Author: sjdev06 (24BSA10163)

dirs=(/etc /var/log /var/www /usr/local/apache2 /etc/apache2)

echo "================================================================================"
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    echo "$dir exists"
    echo "Size: $(du -sh $dir | cut -f1)"
    echo "Permissions: $(stat -c %a $dir)"
    echo "Owner: $(stat -c %U $dir)"
    echo "--------------------------------------------------------------------------------"
  else
    echo "$dir does not exist"
  fi
done
echo "================================================================================"