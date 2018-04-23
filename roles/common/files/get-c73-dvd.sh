#!/bin/sh
GUEST_NAME=$1

ISO=CentOS-7-x86_64-Everything-1611.iso


if [ ! -e ./${ISO:?} ]; then

  curl -LO http://archive.kernel.org/centos-vault/7.3.1611/isos/x86_64/${ISO:?}

fi

if [ ! -e /tmp/${ISO:?} ]; then
  cp ${ISO:?} /tmp
fi

# うまくいっていない
#virsh attach-disk ${GUEST_NAME:?} /tmp/${ISO:?} hdc --type cdrom --mode readonly --shareable
#virsh attach-disk ${GUEST_NAME:?} /tmp/${ISO:?} hdc --type cdrom --shareable


