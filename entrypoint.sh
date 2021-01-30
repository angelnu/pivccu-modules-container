#!/bin/sh -e
ln -s /usr/src_host/* /usr/src/
if [ ! -f /lib/modules/$(uname -r)/updates/dkms/generic_raw_uart.ko ]; then
  echo "Not module for kernel $(uname -r) found -> building"
  dkms autoinstall
fi
udevadm trigger -c add 