#!/bin/sh -e
zeek -Cr ../pcaps/exercise_traffic.pcap ./remove-uri.zeek
cat http.log | zeek-cut id.orig_h method host uri
