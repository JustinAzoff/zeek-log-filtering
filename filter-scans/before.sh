#!/bin/sh
zeek -Cr ../pcaps/exercise_traffic.pcap
echo "Total conn log entries: $(wc -l < conn.log)"
cat conn.log | zeek-cut history | cl-util c | head
