#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "FileManager" ];then
        echo ">>> in custom_app for $apkBaseName to replace mzcamera with opcamera"
        find $tempSmaliDir -name "*.smali" | xargs sed -i 's/"android\/data\/com.meizu.media.camera"/"android\/data\/com.oneplus.camera"/g'

elif [ "$apkBaseName" = "FlymeLauncher" ];then
        echo ">>> in custom_app for $apkBaseName to add android.permission.INTERACT_ACROSS_USERS"
        sed -i '/<uses-permission android:name="android.permission.STATUS_BAR"\/>/a\<uses-permission android:name="android.permission.INTERACT_ACROSS_USERS"\/>' $tempSmaliDir/AndroidManifest.xml
        sed -i 's/com.meizu.media.camera/com.oneplus.camera/g' $tempSmaliDir/assets/smartfolder.json
        sed -i 's/className="com.meizu.media.camera.CameraLauncher" launcher:packageName="com.meizu.media.camera"/className="com.oneplus.camera.OPCameraActivity" launcher:packageName="com.oneplus.camera"/g' $tempSmaliDir/res/xml/default_workspace*.xml
        sed -i 's/"com.meizu.media.camera"/"com.oneplus.camera"/g' $tempSmaliDir/smali/com/meizu/flyme/launcher/kz.smali
        sed -i 's/"com.meizu.media.camera.CameraLauncher"/"com.oneplus.camera.OPCameraActivity"/g' $tempSmaliDir/smali/com/meizu/flyme/launcher/kz.smali

elif [ "$apkBaseName" = "SystemUI" ];then
        echo ">>> in custom_app for $apkBaseName to slide up into opcamera"
        find $tempSmaliDir -name "*.smali" | xargs sed -i 's/"com.meizu.media.camera"/"com.oneplus.camera"/g'
        find $tempSmaliDir -name "*.smali" | xargs sed -i 's/"com.meizu.media.camera.CameraLauncher"/"com.oneplus.camera.OPCameraActivity"/g'
        find $tempSmaliDir -name "*.smali" | xargs sed -i 's/"com.meizu.media.camera.SecureCameraActivity"/"com.oneplus.camera.OPCameraActivity"/g'

elif [ "$apkBaseName" = "VoiceAssistant" ];then
        echo ">>> in custom_app for $apkBaseName to open opcamera"
        find $tempSmaliDir -name "*.smali" | xargs sed -i 's/"com.meizu.media.camera"/"com.oneplus.camera"/g'
        find $tempSmaliDir -name "*.smali" | xargs sed -i 's/"com.meizu.media.camera.CameraLauncher"/"com.oneplus.camera.OPCameraActivity"/g'

fi
