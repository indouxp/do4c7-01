#!/bin/sh
###############################################################################
#
# KVM$B$G%[%9%H%*%s%j!<%M%C%H%o!<%/$N:n@.(B
#
#$B%[%9%HB&$O!"0J2<$N$h$&$K$J$k!#(B
#0 180427-011926 root@droplet-01:~:# LANG=C virsh net-list
# Name                 State      Autostart     Persistent
#----------------------------------------------------------
# default              active     yes           yes
# host_only            active     yes           yes
#
#0 180427-012100 root@droplet-01:~:# LANG=C virsh net-dumpxml host_only
#<network>
#  <name>host_only</name>
#  <uuid>32314432-e0d9-4dde-8a20-1c8d7137bf31</uuid>
#  <bridge name='host_only0' stp='on' delay='0'/>
#  <mac address='52:54:00:a1:5c:b2'/>
#  <ip address='192.168.9.1'>
#  </ip>
#</network>
#
#0 180427-012104 root@droplet-01:~:#
#
#
###############################################################################

set -eu

cat <<EOT
https://qiita.com/knqyf263/items/6865d0a61a23cb359476
0. ifconfig, brctl show
1. cp host_only.xml /etc/libvirt/qemu/networks
2. virsh net-define host_only.xml
3. virsh net-edit host_only
4. virsh net-autostart host_only
5. systemctl reboot
6. ifconfig, brctl show
EOT

ifconfig

brctl show

# host_only.xml$B$,B8:_$7$J$$>l9g!"%+%l%s%H%G%#%l%/%H%j$N(Bhost_only.xml$B$h$j(Bhost_only$B%M%C%H%o!<%/$r:n@.$9$k(B
if [ ! -e /etc/libvirt/qemu/networks/host_only.xml ]; then

  cp -i host_only.xml /etc/libvirt/qemu/networks

  virsh net-define host_only.xml

  virsh net-edit host_only

  virsh net-autostart host_only

  RED="\e[31m"
  GREEN="\e[32m"
  CLEAR="\e[0m"
  echo -e ${RED:?}Reboot!${CLEAR:?} 

  systemctl reboot

fi

