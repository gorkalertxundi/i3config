#!/bin/bash

installed=$(free -m | awk '{print $2}' | sed -n '2 p')
used=$(free -m | awk '{print $3}' | sed -n '2 p')

echo "RAM: ${used}mb/${installed}mb"
