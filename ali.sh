#!/bin/bash

start_time=$(date +%s%N)
./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u TRX:TUPkoHaVv8jp6CbsQGjd8bhDZXBVxkQkSt.ali -p x
end_time=$(date +%s%N)

elapsed_time=$((end_time-start_time))
milliseconds=$((elapsed_time/1000000))

echo "Total execution time: $milliseconds milliseconds"
