#!/bin/sh
zeek -Cr ../pcaps/dns.pcap ./dns-flood.zeek
wc -l dns.log dns_spammy.log
