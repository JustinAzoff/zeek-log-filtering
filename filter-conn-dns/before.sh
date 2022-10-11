#!/bin/sh
zeek -Cr ../pcaps/exercise_traffic.pcap
#cat conn.log | zeek-cut id.resp_p service | cl-util c
wc -l conn.log dns.log
