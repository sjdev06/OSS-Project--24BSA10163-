#!/bin/bash
# Author: sjdev06 (24BSA10163)

if [ -f "/etc/debian_version" ]; then
  PACKAGE_MANAGER="apt"
  PACKAGE_NAME="apache2"
else
  PACKAGE_MANAGER="yum"
  PACKAGE_NAME="httpd"
fi

if $PACKAGE_MANAGER list --installed | grep -q $PACKAGE_NAME; then
  echo "================================================================================"
  echo "                   Apache AUDIT - PACKAGE INSPECTOR                 "
  echo "================================================================================"
  echo "Status: $PACKAGE_NAME is INSTALLED on this $(cat /etc/os-release | grep PRETTY_NAME | cut -d '=' -f2- | tr -d '"') system."
  echo "Version: $($PACKAGE_MANAGER show $PACKAGE_NAME | grep Version | cut -d ' ' -f2)"
  echo "--------------------------------------------------------------------------------"
  echo "FOSS Philosophy Notes:"
  echo " - Apache: A free and open-source cross-platform web server software."
  echo " - Linux: An open-source operating system."
  echo " - MySQL: An open-source relational database management system."
  echo " - PHP: A server-side scripting language."
  echo "================================================================================"
else
  echo "$PACKAGE_NAME is NOT installed on this system."
fi