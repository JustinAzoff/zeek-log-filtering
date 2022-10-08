#!/bin/sh
zeek -Cr ../pcaps/dns.pcap
rm -f  dns_spammy.log
touch dns_spammy.log
wc -l dns*.log
