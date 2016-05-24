#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "FlymeLauncher" ];then
        echo ">>> in custom_app for $apkBaseName to add android.permission.INTERACT_ACROSS_USERS"
        sed -i '/<uses-permission android:name="android.permission.STATUS_BAR"\/>/a\<uses-permission android:name="android.permission.INTERACT_ACROSS_USERS"\/>' $tempSmaliDir/AndroidManifest.xml
        sed -i 's/className="com.meizu.media.camera.CameraLauncher" launcher:packageName="com.meizu.media.camera"/className="com.meizu.media.camera.OPCameraActivity" launcher:packageName="com.meizu.media.camera"/g' $tempSmaliDir/res/xml/default_workspace*.xml
        sed -i 's/"com.meizu.media.camera.CameraLauncher"/"com.meizu.media.camera.OPCameraActivity"/g' $tempSmaliDir/smali/com/meizu/flyme/launcher/kz.smali

elif [ "$apkBaseName" = "SystemUI" ];then
        echo ">>> in custom_app for $apkBaseName to slide up into opcamera"
        find $tempSmaliDir -name "*.smali" | xargs sed -i 's/"com.meizu.media.camera.CameraLauncher"/"com.meizu.media.camera.OPCameraActivity"/g'
        find $tempSmaliDir -name "*.smali" | xargs sed -i 's/"com.meizu.media.camera.SecureCameraActivity"/"com.meizu.media.camera.OPCameraActivity"/g'

elif [ "$apkBaseName" = "VoiceAssistant" ];then
        echo ">>> in custom_app for $apkBaseName to open opcamera"
        find $tempSmaliDir -name "*.smali" | xargs sed -i 's/"com.meizu.media.camera.CameraLauncher"/"com.meizu.media.camera.OPCameraActivity"/g'

fi
