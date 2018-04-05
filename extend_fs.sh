fdisk  -- n to create , p to select primary , w to write
vgdisplay
pvcreate /dev/xvda3
vgextend   VolGroup  /dev/xvda3
lvextend  -L+34GB /dev/VolGroup/lv_root
resize2fs  /dev/VolGroup/lv_root
