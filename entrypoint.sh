#!/bin/bash
echo "[INFO] Starting vanity search job..."

# Run single test keyspace (small range)
./2b -t 0 -gpu --keyspace 400000000000000000:+FFFFFF -i in.txt -r 800000 --continue 400000000000000000.txt -o out.txt

echo "[INFO] Vanity search job completed."
