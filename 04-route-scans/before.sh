#!/bin/sh
zeek -Cr ../pcaps/exercise_traffic.pcap
touch conn-scans.log
wc -l conn.log conn-scans.log
