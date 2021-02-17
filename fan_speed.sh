#!/bin/bash

echo "Taking manual control of R410 Fans on (machine_name)..."
ipmitool -I lanplus -H 192.168.4.19 -U (user) -P (password) raw 0x30 0x30 0x01 0x00
echo "Manual Controls Engaged..."
echo "Setting Fan Speeds to 40%..."
ipmitool -I lanplus -H 192.168.4.19 -U (user) -P (password) raw 0x30 0x30 0x02 0xff 0x28
echo "Complete, R410 Fans set!"

