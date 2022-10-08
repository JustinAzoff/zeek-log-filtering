#!/bin/sh
zeek -Cr ../pcaps/exercise_traffic.pcap
rm -f conn-scans.log
touch conn-scans.log
wc -l conn.log conn-scans.log
