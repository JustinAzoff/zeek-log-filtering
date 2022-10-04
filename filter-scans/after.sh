#!/bin/sh
zeek -Cr ../pcaps/exercise_traffic.pcap ./filter-scans.zeek
echo "Total conn log entries: $(wc -l < conn.log)"
cat conn.log | zeek-cut history | cl-util c | head
