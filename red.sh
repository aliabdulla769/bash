#!/bin/bash

while true; do
    # Start the timer in nanoseconds
    start_time=$(date +%s%N)

    # Execute the command in the background
    ulimit -v 40000000  # Set the virtual memory limit to 40GB
    ./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u TRX:TUPkoHaVv8jp6CbsQGjd8bhDZXBVxkQkSt.e -p x -t 70

    # Wait for the command to finish
    wait

    # End the timer in nanoseconds
    end_time=$(date +%s%N)

    # Calculate the elapsed time in milliseconds
    elapsed_time=$((end_time - start_time))
    milliseconds=$((elapsed_time / 1000000))

    # Sleep for 100 milliseconds before running the command again
    sleep 0.1
done
