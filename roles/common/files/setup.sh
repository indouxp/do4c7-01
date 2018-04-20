#!/bin/sh


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
