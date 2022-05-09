#!/bin/bash

batterylevel=$(acpi -b | grep -P -o '[0-9]+(?=%)')

status=$(acpi | grep -P -o '[DC]')

description=$(acpi | cut -d' ' -f5-)

#if [[ $status -eq 'D' ]]
#then
#echo discharging
#fi

#if [[ $status -eq 'C' ]]
#then 
#echo charging
#fi

echo $('bat: $batterylevel%, $description')
