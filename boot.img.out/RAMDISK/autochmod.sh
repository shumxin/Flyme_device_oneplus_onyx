#!/system/bin/sh
DATE=`date +%F-%H`
CURTIME=`date +%F-%H-%M-%S`
ROOT_AUTOTRIGGER_PATH=/sdcard/oppo_log
ROOT_TRIGGER_PATH=/sdcard/oppo_log/trigger

config="$1"

function Preprocess(){
	mkdir -p $ROOT_AUTOTRIGGER_PATH
	mkdir -p  $ROOT_TRIGGER_PATH
}

function PreprocessLog(){
	
    panicenable=`getprop persist.sys.assert.panic`
    argtrue='true'
    if [ "${panicenable}" = "${argtrue}" ]; then
    sdcardFreeSize=`df /sdcard | grep /sdcard | /system/xbin/busybox awk '{print $4}'`
    LOGTIME=`date +%F-%H-%M`

    ROOT_SDCARD_LOG_PATH=/sdcard/oppo_log/${LOGTIME}
    mkdir -p  ${ROOT_SDCARD_LOG_PATH}
    isM=`echo ${sdcardFreeSize} | /system/xbin/busybox awk '{ print index($1,"M")}'`
    FreeSize=${sdcardFreeSize}

    ROOT_SDCARD_apps_LOG_PATH=${ROOT_SDCARD_LOG_PATH}/apps
    ROOT_SDCARD_kernel_LOG_PATH=${ROOT_SDCARD_LOG_PATH}/kernel
    ROOT_SDCARD_netlog_LOG_PATH=${ROOT_SDCARD_LOG_PATH}/netlog
    mkdir -p  ${ROOT_SDCARD_apps_LOG_PATH}
    mkdir -p  ${ROOT_SDCARD_kernel_LOG_PATH}
    mkdir -p  ${ROOT_SDCARD_netlog_LOG_PATH}
	
    setprop com.oppo.debug.time ${LOGTIME}
    ASSERT_PATH=/sdcard/oppo_log/${LOGTIME}/oppo_assert
    TOMBSTONE_PATH=/sdcard/oppo_log/${LOGTIME}/tombstone
    ANR_PATH=/sdcard/oppo_log/${LOGTIME}/anr
    mkdir -p  ${ASSERT_PATH}
    mkdir -p  ${TOMBSTONE_PATH}
    mkdir -p ${ANR_PATH}
    fi
if [ ${isM} = "0" ]; then
    androidSize=51200
    androidCount=`echo ${FreeSize} 20 50 ${androidSize} | /system/xbin/busybox awk '{printf("%d",$1*$2*1024*1024/$3/$4)}'`
    radioSize=20480
    radioCount=`echo ${FreeSize} 1 50 ${radioSize} | /system/xbin/busybox awk '{printf("%d",$1*$2*1024*1024/$3/$4)}'`
    eventSize=20480
    eventCount=`echo ${FreeSize} 1 50 ${eventSize} | /system/xbin/busybox awk '{printf("%d",$1*$2*1024*1024/$3/$4)}'`
    tcpdumpSize=100
    tcpdumpCount=`echo ${FreeSize} 10 50 ${tcpdumpSize} | /system/xbin/busybox awk '{printf("%d",$1*$2*1024/$3/$4)}'`
else
    androidSize=20480
    androidCount=`echo ${FreeSize} 30 50 ${androidSize} | /system/xbin/busybox awk '{printf("%d",$1*$2*1024/$3/$4)}'`
    radioSize=10240
    radioCount=`echo ${FreeSize} 1 50 ${radioSize} | /system/xbin/busybox awk '{printf("%d",$1*$2*1024/$3/$4)}'`
    eventSize=10240
    eventCount=`echo ${FreeSize} 1 50 ${eventSize} | /system/xbin/busybox awk '{printf("%d",$1*$2*1024/$3/$4)}'`
    tcpdumpSize=50
    tcpdumpCount=`echo ${FreeSize} 10 50 ${tcpdumpSize} | /system/xbin/busybox awk '{printf("%d",$1*$2/$3/$4)}'`
fi
}



function Preprocess_other(){
	mkdir -p  $ROOT_TRIGGER_PATH/${CURTIME}
	GRAB_PATH=$ROOT_TRIGGER_PATH/${CURTIME}
}

function Preprocess_tra(){
	mkdir -p  $ROOT_AUTOTRIGGER_PATH/${CURTIME}
	TRN_PATH=$ROOT_AUTOTRIGGER_PATH/${CURTIME}
}

function Logcat(){
	panicenable=`getprop persist.sys.assert.panic`
	argtrue='true'
	if [ "${panicenable}" = "${argtrue}" ]; then
	system/bin/logcat -f ${ROOT_SDCARD_apps_LOG_PATH}/android.txt -r${androidSize} -n ${androidCount}  -v threadtime *:V
	fi
}
function Logcat_radio(){
	panicenable=`getprop persist.sys.assert.panic`
	argtrue='true'
	if [ "${panicenable}" = "${argtrue}" ]; then
	system/bin/logcat -b radio -f ${ROOT_SDCARD_apps_LOG_PATH}/radio.txt -r${radioSize} -n ${radioCount}  -v threadtime *:V
	fi
}
function Logcat_event(){
	panicenable=`getprop persist.sys.assert.panic`
	argtrue='true'
	if [ "${panicenable}" = "${argtrue}" ]; then
	system/bin/logcat -b events -f ${ROOT_SDCARD_apps_LOG_PATH}/events.txt -r${eventSize} -n ${eventCount}  -v threadtime *:V
	fi
}
function Logcat_kernel(){
  #ifndef VENDOR_EDIT 
  #Horn@Swdp.Android.Boot_Charger Storage Power_Timer, 2015/07/03, Modify for [merge klog log into android log]
  #system/xbin/klogd -f ${ROOT_SDCARD_kernel_LOG_PATH}/kinfox.txt -n -x -l 7
  #else /* VENDOR_EDIT */
  panicenable=`getprop persist.sys.assert.panic`
  argtrue='true'
  if [ "${panicenable}" = "${argtrue}" ]; then
  /system/xbin/klogd -f - -n -x -l 7 | /system/xbin/busybox tee - ${ROOT_SDCARD_kernel_LOG_PATH}/kinfo0.txt | /system/xbin/busybox awk 'NR%400==0'
  fi
  #endif /* VENDOR_EDIT */ 

	
}
function tcpdump_log(){
	system/xbin/tcpdump -i any -p -s 0 -W ${tcpdumpCount} -C ${tcpdumpSize} -w ${ROOT_SDCARD_netlog_LOG_PATH}/tcpdump.pcap -Z root
}
function grab_netlog(){
        /system/xbin/tcpdump -i any -p -s 0 -W 5 -C 10 -w /cache/admin/netlog/tcpdump.pcap -Z root

}

function Logcat_fingerprint(){
	cat /sys/kernel/debug/tzdbg/log > /cache/admin/apps/fingerprint_log.txt
	cat /sys/kernel/debug/tzdbg/qsee_log > /cache/admin/apps/qsee_log.txt;
}

function Dmesg(){
	mkdir -p  $ROOT_TRIGGER_PATH/${CURTIME}
	dmesg > $ROOT_TRIGGER_PATH/${CURTIME}/dmesg.txt;
}
function Dumpsys(){
	mkdir -p  $ROOT_TRIGGER_PATH/${CURTIME}_dumpsys
	dumpsys > $ROOT_TRIGGER_PATH/${CURTIME}_dumpsys/dumpsys.txt;
}
function Dumpstate(){
	mkdir -p  $ROOT_TRIGGER_PATH/${CURTIME}_dumpstate
	dumpstate > $ROOT_TRIGGER_PATH/${CURTIME}_dumpstate/dumpstate.txt
}
function Top(){
	mkdir -p  $ROOT_TRIGGER_PATH/${CURTIME}_top
	top -n 1 > $ROOT_TRIGGER_PATH/${CURTIME}_top/top.txt;
}
function Ps(){
	mkdir -p  $ROOT_TRIGGER_PATH/${CURTIME}_ps
	ps > $ROOT_TRIGGER_PATH/${CURTIME}_ps/ps.txt;
}

function Server(){
	mkdir -p  $ROOT_TRIGGER_PATH/${CURTIME}_servelist
	service list  > $ROOT_TRIGGER_PATH/${CURTIME}_servelist/serviceList.txt;
}

function BugReport(){
	Preprocess_other
	bugreport > $TRN_PATH/bugreport.txt
}

function CleanAll(){
	rm  -rf  /cache/admin/kernel/*
	rm  -rf  /cache/admin/apps/*
	rm  -rf  /cache/admin/assertlog/*
	rm  -rf  /cache/admin/netlog/*
	rm -rf  /sdcard/oppo_log
	#ifdef VENDOR_EDIT
	#Jevons@Swdp.Android, 2015/6/30 , add for clear anr/dropbox/tombstones log
	rm -rf /data/anr/*
	rm -rf /data/tombstones/*
	rm -rf /data/system/dropbox/*
	#endif /* VENDOR_EDIT */
}

function tranfer(){
	chmod 777  /cache/admin/kernel/*
	chmod 777 /cache/admin/apps/*
	chmod 777 /cache/admin/assertlog/*
	chmod 777 /cache/admin/netlog/*
	Preprocess_tra
	cp -rf  /cache/admin/*  /$TRN_PATH/
	bugreport > $TRN_PATH/bugreport.txt
		
}

function tranfer_assert() {
	srcpath=`getprop sys.assert.file`
	subPath=`getprop com.oppo.debug.time`


	cp ${srcpath} sdcard/oppo_log/${subPath}/oppo_assert/
	rm -rf ${srcpath}
}

function tranfer_tombstone() {
	srcpath=`getprop sys.tombstone.file`
	subPath=`getprop com.oppo.debug.time`
	TOMBSTONE_TIME=`date +%F-%H-%M-%S`
	cp ${srcpath} sdcard/oppo_log/${subPath}/tombstone/tomb_${TOMBSTONE_TIME}
	rm -rf ${srcpath}
}

function tranfer_anr() {
	srcpath=`getprop sys.anr.srcfile`
	subPath=`getprop com.oppo.debug.time`
	destfile=`getprop sys.anr.destfile`

	cp ${srcpath} sdcard/oppo_log/${subPath}/anr/${destfile}
	rm -rf ${srcpath}
}

function enabletcpdump(){
        mount -o rw,remount,barrier=1 /system
        chmod 6755 /system/xbin/tcpdump 
        mount -o ro,remount,barrier=1 /system   
}
function entercts(){
# for odb begin
       setprop persist.sys.oppo.odb false
       getprop persist.sys.usb.config | /system/xbin/busybox sed -e 's/odb/bdo/' | /system/xbin/busybox xargs setprop persist.sys.usb.config
# for odb end          
}
function exitcts(){
#for odb begin
       setprop persist.sys.oppo.odb true
       getprop persist.sys.usb.config | /system/xbin/busybox sed -e 's/bdo/odb/' | /system/xbin/busybox xargs setprop persist.sys.usb.config
#for odb end
}
        



case "$config" in
	"ps")
		Preprocess
		Ps
		;;
	"top")
		Preprocess
		Top
		;;
	"server")
		Preprocess
		Server
		;;
	"dump")
		Preprocess
		Dumpsys
		;;
	"tranfer")
		Preprocess
		tranfer
		;;
	"tranfer_tombstone")
		
		tranfer_tombstone
		;;
	"tranfer_assert")
		
		tranfer_assert
		;;
	"tranfer_anr")
		
		tranfer_anr
		;;
	"main")
		PreprocessLog
		Logcat
		;;
	"radio")
		PreprocessLog
		Logcat_radio
		;;
	"fingerprint")
		PreprocessLog
		Logcat_fingerprint
		;;	
	"event")
		PreprocessLog
		Logcat_event
		;;	
	"kernel")
		PreprocessLog
		Logcat_kernel
		;;		
	"tcpdump")
		PreprocessLog
                enabletcpdump 
		tcpdump_log
		;;

         "grab_netlog")
                enabletcpdump
                grab_netlog 
                ;;        
	"clean")		
		CleanAll
		;;
	"dumpstate")
		Preprocess	
		Dumpstate
		;;					
        "enabletcpdump")
                enabletcpdump
                ;;
         "entercts")
                entercts
                ;;
         "exitcts")
                exitcts
                ;;
       *)
	tranfer
	 
      ;; 
esac


