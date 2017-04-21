#! /bin/bash

sudo apt-get remove avahi-daemon bind9-host dc file info manpages net-tools ncurses-term traceroute vim-common vim-tiny whois
sudo apt-get autoremove

sudo rm -rf /usr/share/man/??
sudo rm -rf /usr/share/man/??_*

sudo rm -rf /lib/xtables/libip6t_ah.so /lib/xtables/libip6t_dst.so /lib/xtables/libip6t_eui64.so /lib/xtables/libip6t_frag.so /lib/xtables/libip6t_hbh.so /lib/xtables/libip6t_hl.so /lib/xtables/libip6t_HL.so /lib/xtables/libip6t_icmp6.so /lib/xtables/libip6t_ipv6header.so /lib/xtables/libip6t_LOG.so /lib/xtables/libip6t_mh.so /lib/xtables/libip6t_REJECT.so /lib/xtables/libip6t_rt.so /lib/xtables/libip6t_DNAT.so /lib/xtables/libip6t_DNPT.so /lib/xtables/libip6t_MASQUERADE.so /lib/xtables/libip6t_NETMAP.so /lib/xtables/libip6t_REDIRECT.so /lib/xtables/libip6t_SNAT.so /lib/xtables/libip6t_SNPT.so

