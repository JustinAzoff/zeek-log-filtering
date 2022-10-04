#!/bin/sh -e
zeek -Cr ../pcaps/exercise_traffic.pcap ./remove-uri-for-avg.zeek
cat http.log | zeek-cut id.orig_h method host uri
