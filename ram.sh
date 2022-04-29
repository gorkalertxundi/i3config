#!/bin/bash

installed=$(free -m | awk '{print $2}' | sed -n '2 p')
used=$(free -m | awk '{print $3}' | sed -n '2 p')

echo "${used}mb/${installed}mb"
