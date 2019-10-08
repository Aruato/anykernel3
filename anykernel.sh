# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
eval $(cat /tmp/anykernel/props | grep -v '\.')

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;

# Use the provided dtb
mv /tmp/anykernel/dtb /tmp/anykernel/split_img/;

# Install the boot image
write_boot;

## end install
