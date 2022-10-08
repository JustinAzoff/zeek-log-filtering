#!/bin/sh
zeek -Cr ../pcaps/exercise_traffic.pcap ./subset-scans.zeek
wc -l conn.log conn-scans.log
