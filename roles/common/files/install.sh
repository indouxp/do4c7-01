#!/bin/sh

chown qemu:qemu /root/CentOS-7-x86_64-Minimal-1611.iso

virt-install\
  --connect=qemu:///system\
  --name=c73\
  --vcpus=1\
  --ram=512\
  --accelerate\
  --hvm\
  --disk path=/var/lib/libvirt/images/c73.img,size=10,format=qcow2\
  --location='/tmp/CentOS-7-x86_64-Minimal-1611.iso'\
  --network bridge=virbr0\
  --nographics\
  --extra-args='console=tty0 console=ttyS0,115200n8'


