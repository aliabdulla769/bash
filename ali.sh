#!/bin/bash

while true; do
  # Start xmrig
  ./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u TRX:TUPkoHaVv8jp6CbsQGjd8bhDZXBVxkQkSt.gt -p x &

  # Sleep for 10 seconds
  sleep 30

  # Stop xmrig
  pkill xmrig

  # Sleep for a few seconds before restarting (adjust as needed)
  sleep 5
done
