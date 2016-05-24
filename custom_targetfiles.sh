#!/bin/bash

OUT_SYSTEM_DIR=out/merged_target_files/SYSTEM

rm -rf $OUT_SYSTEM_DIR/framework/hydrongen-framework-res.apk

#replace mzcamera with opcamera
echo ">>> in custom_targetfiles for replace mzcamera with opcamera"
sed -i 's/<classname>com.meizu.media.camera.CameraLauncher<\/classname>/<classname>com.meizu.media.camera.OPCameraActivity<\/classname>/g' $OUT_SYSTEM_DIR/media/launcher.xml
