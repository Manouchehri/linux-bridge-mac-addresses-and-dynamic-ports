
##

brname=brtap
ethname=eth1

install_ifcfg_tap                  ${ethname} mac=fe:ff:ff:ff:ff:ff
/etc/init.d/network restart

install_ifcfg_bridge     ${brname}            mac=
map_ifcfg_bridge ${brname} slave=${ethname}
/etc/init.d/network restart
