#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29353294:221d60fc6f10f51c39aaf87e02a78816d4cf8eeb; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24614218:b6398e3599cf594a9094534ac0ee0f76c83836f4 EMMC:/dev/block/bootdevice/by-name/recovery 221d60fc6f10f51c39aaf87e02a78816d4cf8eeb 29353294 b6398e3599cf594a9094534ac0ee0f76c83836f4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
