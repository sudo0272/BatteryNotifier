#!/bin/bash

while true; do
	if [ $(acpi | grep -oP '\d+(?=%)') -le $1 ]; then
		play -q $2 &> /dev/null
	fi

	sleep $3
done

