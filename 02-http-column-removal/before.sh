#!/bin/sh -e
zeek -Cr ../pcaps/exercise_traffic.pcap
cat http.log | zeek-cut id.orig_h method host uri
