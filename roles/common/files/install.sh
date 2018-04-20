#!/bin/sh

virt-install\
  --connect=qemu:///system\
  --name=c73\
  --vcpus=1\
  --ram=512\
  --accelerate\
  --hvm\
  --disk path=/var/lib/libvirt/images/c73.img,size=10,format=qcow2\
  --location='/tmp/CentOS-7-x86_64-Minimal-1611.iso'\
  --network network=host_only\
  --nographics\
  --extra-args='console=tty0 console=ttyS0,115200n8 keymap=ja'
