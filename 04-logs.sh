#!/bin/bash
# Author: sjdev06 (24BSA10163)

# Suggested log path for Apache: /var/log/apache2/access.log

echo "Searching for keyword '$2' in log file '$1':"

count=0
while read -r line; do
  if [[ $line == *"$2"* ]]; then
    ((count++))
  fi
done < "$1"
echo "Found $count occurrences of keyword '$2'."

tail -n 5 "$1" | grep -n "$2"