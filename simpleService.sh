#!/bin/bash
set -euo pipefail

LOGFILE="/var/log/simpleService.log"
touch "$LOGFILE"
date +"%b %d %H:%M :" >> "$LOGFILE"
awk 'NR>1 {print $1, $4}' /proc/net/arp >> "$LOGFILE"
echo "...." >> "$LOGFILE"