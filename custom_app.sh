#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "FlymeLauncher" ];then
        echo ">>> in custom_app for $apkBaseName to add android.permission.INTERACT_ACROSS_USERS"
        sed -i '/<uses-permission android:name="android.permission.STATUS_BAR"\/>/a\<uses-permission android:name="android.permission.INTERACT_ACROSS_USERS"\/>' $tempSmaliDir/AndroidManifest.xml
fi
