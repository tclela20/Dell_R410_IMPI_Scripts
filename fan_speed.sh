#!/bin/bash

# Need to find the hexadecimal use printf '%x\n' 40 and update 40 to what you want.
# After the printf command update the 2nd to last line and change 0x28 to 0x plus the output of printf.

host = ""
user = ""
pword = ""

echo "Taking manual control of R410 Fans on (machine_name)..."
echo ipmitool -I lanplus -H $host -U $user -P $pword raw 0x30 0x30 0x01 0x00
echo "Manual Controls Engaged..."
echo "Setting Fan Speeds to 50%..."
echo ipmitool -I lanplus -H $host -U $user -P $pword raw 0x30 0x30 0x02 0xff 0x32
