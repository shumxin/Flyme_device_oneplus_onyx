#!/sbin/sh

busybox rm -rf /data/oppo/ota
busybox mkdir -p /data/oppo/ota
busybox cp -Rf /data/data/com.oppo.blacklist /data/oppo/ota/blacklist
busybox cp -Rf /data/data/com.oppo.trafficmonitor /data/oppo/ota/trafficmonitor
busybox cp -Rf /data/data/com.oppo.secure /data/oppo/ota/secure
busybox cp -Rf /data/data/com.oppo.providers.permissions /data/oppo/ota/permissions
busybox cp -Rf /data/data/com.oppo.safe /data/oppo/ota/safe
busybox chmod -R 777 /data/oppo/ota

