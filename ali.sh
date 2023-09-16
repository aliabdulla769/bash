#!/bin/bash

while true; do
    # Start the timer in nanoseconds
    start_time=$(date +%s%N)

    # Execute the command in the background
    ./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u TRX:TUPkoHaVv8jp6CbsQGjd8bhDZXBVxkQkSt.ali -p x &

    # Wait for the command to finish
    wait

    # End the timer in nanoseconds
    end_time=$(date +%s%N)

    # Calculate the elapsed time in milliseconds
    elapsed_time=$((end_time - start_time))
    milliseconds=$((elapsed_time / 1000000))

    # Calculate the sleep time to achieve a 20-millisecond interval
    sleep_time=$((5 - milliseconds))

    # Sleep for the remaining milliseconds to achieve a 20-millisecond interval
    sleep "0.$sleep_time"
done
