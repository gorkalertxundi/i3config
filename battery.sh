#!/bin/bash

battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')

if [[ $battery_level -lt 20 ]]
then
  notify-send -u critical "Low battery!" "battery level: ${battery_level}%   Please charge the computer";
fi

if [[ $battery_level -eq 100 ]]
then
  notify-send "Full battery! Disconnect the charger"
fi

echo $(acpi -b)
