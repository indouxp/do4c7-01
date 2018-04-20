#!/bin/sh


cat <<EOT
https://qiita.com/knqyf263/items/6865d0a61a23cb359476
1. cp host_only.xml /etc/libvirt/qemu/networks
2. virsh net-define host_only.xml
3. virsh net-eidt host_only
4. virsh net-autostart host_only
EOT
