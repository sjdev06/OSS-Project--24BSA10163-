#!/bin/bash
# Author: sjdev06 (24BSA10163)

read -p "What is your name? " name
read -p "What is your favorite open-source project? " project
read -p "Why do you love open-source software? " reason

echo "My name is $name, and I love the $project project because $reason. I believe in the power of open-source software to bring people together and create something amazing." > $name.txt