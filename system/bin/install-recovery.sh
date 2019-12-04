#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14789932:8e66702ff819adb65f002810c25382190e8994d1; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:13212968:2d04edc8f24fdbe2096c79d24f63f240d042ce19 EMMC:/dev/block/bootdevice/by-name/recovery 8e66702ff819adb65f002810c25382190e8994d1 14789932 2d04edc8f24fdbe2096c79d24f63f240d042ce19:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
