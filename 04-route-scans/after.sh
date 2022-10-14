#!/bin/sh
zeek -Cr ../pcaps/exercise_traffic.pcap ./route-scans.zeek
wc -l conn.log conn-scans.log
