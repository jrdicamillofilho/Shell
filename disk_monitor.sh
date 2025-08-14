#!/bin/bash
limite=90
espaco=$(df -h | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $espaco -gt $limite ]; then
  echo "WARNING: LEVEL IS: $limite%."
else
  echo "DISK IS FINE"
fi

