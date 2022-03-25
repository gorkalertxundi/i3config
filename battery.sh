#!/bin/bash

battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')

if [[ $battery_level -lt 20 ]]
then
  notify-send -u critical "Low battery level: ${battery_level}%   Please charge the computer";
fi

echo $(acpi -b)
