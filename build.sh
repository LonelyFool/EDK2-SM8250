#!/bin/bash
# based on the instructions from edk2-platform
set -e
. build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -s -n 0 -a AARCH64 -t GCC5 -p SM8250/SM8250.dsc
gzip -c < workspace/Build/SM8250/DEBUG_GCC5/FV/SM8250_UEFI.fd >uefi.img
cat redmi_lmi.dtb >>uefi.img
$(which "abootimg") --create boot_uefi.img -k uefi.img -r androidboot/ramdisk -f androidboot/android.cfg
rm -r uefi.img workspace/*
#dd if=uefi_out.img of=/dev/block/by-name/recovery
