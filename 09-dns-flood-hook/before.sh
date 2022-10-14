#!/bin/sh
zeek -Cr ../pcaps/dns.pcap
wc -l dns*.log
