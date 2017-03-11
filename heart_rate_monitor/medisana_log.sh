#!/bin/bash

#
# Requires 'expect' package: sudo apt-get install expect
#

MAC="D0:39:72:D3:11:50"
UNBUFFER="stdbuf -oL -eL"
MEDISANA_HB_CMD="gatttool -b ${MAC} --char-write-req -a  0x13 -n 0100 --listen"

while true
do
	#echo "recording..."
	timeout 60s ${UNBUFFER} ${MEDISANA_HB_CMD} | ${UNBUFFER} cut -d ' ' -f 7  
	#echo "sleeping..."
	sleep 10
done
