#!/bin/bash
sysctl net.ipv4.tcp_available_congestion_control
sysctl net.ipv4.tcp_congestion_control
sysctl net.core.default_qdisc

# net.ipv4.tcp_available_congestion_control = reno cubic bbr
# net.ipv4.tcp_congestion_control = bbr
# net.core.default_qdisc = fq
