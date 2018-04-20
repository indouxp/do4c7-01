#!/bin/sh

HOST=`grep -v "\[" hosts | awk '{print $1;}'`

ssh -i ~/.ssh/id_rsa_do4sakura root@${HOST:?}
