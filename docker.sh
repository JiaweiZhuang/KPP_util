#!/bin/bash

# KPP directory on your original file system
# Will be mounted to $HOME/KPP inside docker virtual machine
# Must use absolute path
KPPDIR=$(pwd)/kpp-2.2.3

docker run --rm -it \
  -v $KPPDIR:/home/zhuangjw/KPP \
  zhuangjw/kpp /bin/bash
