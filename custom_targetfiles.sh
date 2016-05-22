#!/bin/bash

OUT_SYSTEM_DIR=out/merged_target_files/SYSTEM

rm -rf $OUT_SYSTEM_DIR/framework/hydrongen-framework-res.apk

#replace mzcamera with opcamera
echo ">>> in custom_targetfiles for replace mzcamera with opcamera"
sed -i 's/<packagename>com.meizu.media.camera<\/packagename>/<packagename>com.oneplus.camera<\/packagename>/g' $OUT_SYSTEM_DIR/media/launcher.xml
sed -i 's/<classname>com.meizu.media.camera.CameraLauncher<\/classname>/<classname>com.oneplus.camera.OPCameraActivity<\/classname>/g' $OUT_SYSTEM_DIR/media/launcher.xml
