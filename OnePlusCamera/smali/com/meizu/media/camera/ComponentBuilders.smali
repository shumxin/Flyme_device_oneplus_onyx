.class final Lcom/meizu/media/camera/ComponentBuilders;
.super Ljava/lang/Object;
.source "ComponentBuilders.java"


# static fields
.field static final BUILDERS_CAMERA_THREAD:[Lcom/oneplus/base/component/ComponentBuilder;

.field static final BUILDERS_MAIN_ACTIVITY:[Lcom/oneplus/base/component/ComponentBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    const/4 v0, 0x7

    new-array v3, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    new-instance v0, Lcom/meizu/media/camera/media/AudioManagerBuilder;

    invoke-direct {v0}, Lcom/meizu/media/camera/media/AudioManagerBuilder;-><init>()V

    aput-object v0, v3, v2

    new-instance v4, Lcom/meizu/media/camera/location/LocationManagerBuilder;

    sget v0, Lcom/meizu/media/camera/BuildFlags;->ROM_VERSION:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v4, v0}, Lcom/meizu/media/camera/location/LocationManagerBuilder;-><init>(Z)V

    aput-object v4, v3, v1

    new-instance v0, Lcom/meizu/media/camera/manual/ManualModeControllerBuilder;

    invoke-direct {v0}, Lcom/meizu/media/camera/manual/ManualModeControllerBuilder;-><init>()V

    aput-object v0, v3, v5

    new-instance v0, Lcom/meizu/media/camera/panorama/PanoramaControllerBuilder;

    invoke-direct {v0}, Lcom/meizu/media/camera/panorama/PanoramaControllerBuilder;-><init>()V

    aput-object v0, v3, v6

    new-instance v0, Lcom/meizu/media/camera/slowmotion/SlowMotionControllerBuilder;

    invoke-direct {v0}, Lcom/meizu/media/camera/slowmotion/SlowMotionControllerBuilder;-><init>()V

    aput-object v0, v3, v7

    const/4 v0, 0x5

    new-instance v4, Lcom/meizu/media/camera/timelapse/TimelapseControllerBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/timelapse/TimelapseControllerBuilder;-><init>()V

    aput-object v4, v3, v0

    const/4 v0, 0x6

    new-instance v4, Lcom/meizu/media/camera/ZoomControllerBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/ZoomControllerBuilder;-><init>()V

    aput-object v4, v3, v0

    sput-object v3, Lcom/meizu/media/camera/ComponentBuilders;->BUILDERS_CAMERA_THREAD:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 56
    const/16 v0, 0x27

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    new-instance v3, Lcom/meizu/media/camera/AppTrackerBuilder;

    invoke-direct {v3}, Lcom/meizu/media/camera/AppTrackerBuilder;-><init>()V

    aput-object v3, v0, v2

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryBuilder;

    invoke-direct {v3}, Lcom/oneplus/gallery/CameraGalleryBuilder;-><init>()V

    aput-object v3, v0, v1

    new-instance v3, Lcom/meizu/media/camera/ui/CameraPreviewGridBuilder;

    invoke-direct {v3}, Lcom/meizu/media/camera/ui/CameraPreviewGridBuilder;-><init>()V

    aput-object v3, v0, v5

    new-instance v3, Lcom/meizu/media/camera/CameraServiceProxyBuilder;

    invoke-direct {v3}, Lcom/meizu/media/camera/CameraServiceProxyBuilder;-><init>()V

    aput-object v3, v0, v6

    new-instance v3, Lcom/meizu/media/camera/ui/CameraSwitchAnimationBuilder;

    invoke-direct {v3}, Lcom/meizu/media/camera/ui/CameraSwitchAnimationBuilder;-><init>()V

    aput-object v3, v0, v7

    const/4 v3, 0x5

    new-instance v4, Lcom/meizu/media/camera/ui/CaptureBarBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/ui/CaptureBarBuilder;-><init>()V

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/meizu/media/camera/capturemode/CaptureModeManagerBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/capturemode/CaptureModeManagerBuilder;-><init>()V

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/meizu/media/camera/ui/CaptureModeSwitcherBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/ui/CaptureModeSwitcherBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/meizu/media/camera/CountDownTimerBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/CountDownTimerBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-instance v4, Lcom/meizu/media/camera/ui/CountDownTimerIndicatorBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/ui/CountDownTimerIndicatorBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xa

    new-instance v4, Lcom/meizu/media/camera/DialogManagerBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/DialogManagerBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xb

    new-instance v4, Lcom/meizu/media/camera/ui/FaceRendererBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/ui/FaceRendererBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xc

    new-instance v4, Lcom/meizu/media/camera/FaceTrackerBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/FaceTrackerBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xd

    new-instance v4, Lcom/meizu/media/camera/FlashControllerBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/FlashControllerBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xe

    new-instance v4, Lcom/meizu/media/camera/ui/FocusExposureIndicatorBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0xf

    new-instance v4, Lcom/meizu/media/camera/ui/GestureDetectorImplBuilder;

    invoke-direct {v4}, Lcom/meizu/media/camera/ui/GestureDetectorImplBuilder;-><init>()V

    aput-object v4, v0, v3

    const/16 v3, 0x10

    new-instance v4, Lcom/meizu/media/camera/location/LocationManagerBuilder;

    sget v5, Lcom/meizu/media/camera/BuildFlags;->ROM_VERSION:I

    if-ne v5, v1, :cond_1

    :goto_1
    invoke-direct {v4, v1}, Lcom/meizu/media/camera/location/LocationManagerBuilder;-><init>(Z)V

    aput-object v4, v0, v3

    const/16 v1, 0x11

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUIBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/manual/ManualModeUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/meizu/media/camera/ui/OnScreenHintBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/OnScreenHintBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/meizu/media/camera/ui/OptionsPanelBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/OptionsPanelBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/meizu/media/camera/panorama/PanoramaUIBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/panorama/PanoramaUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/meizu/media/camera/ui/PinchZoomingUIBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/PinchZoomingUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/meizu/media/camera/ui/PreviewCoverBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/PreviewCoverBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/meizu/media/camera/ui/ProcessingDialogBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/ProcessingDialogBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/meizu/media/camera/ui/RecordingTimerUIBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/RecordingTimerUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/meizu/media/camera/ui/ReviewScreenBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/ReviewScreenBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/meizu/media/camera/scene/SceneManagerBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/scene/SceneManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/meizu/media/camera/SensorFocusControllerBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/SensorFocusControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/meizu/media/camera/ui/ShutterEffectBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/ShutterEffectBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/meizu/media/camera/slowmotion/SlowMotionUIBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/slowmotion/SlowMotionUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/meizu/media/camera/SmileCaptureControllerBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/SmileCaptureControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/meizu/media/camera/ui/SwitchAnimationBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/SwitchAnimationBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/meizu/media/camera/ui/ThumbnailBarBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/ThumbnailBarBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/meizu/media/camera/timelapse/TimelapseUIBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/timelapse/TimelapseUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/meizu/media/camera/ui/ToastManagerBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/ToastManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/meizu/media/camera/ui/TouchFocusExposureUIBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/TouchFocusExposureUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/meizu/media/camera/ui/VideoHintBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/VideoHintBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/meizu/media/camera/ui/ZoomBarBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/ZoomBarBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/meizu/media/camera/ZoomControllerBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ZoomControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/ComponentBuilders;->BUILDERS_MAIN_ACTIVITY:[Lcom/oneplus/base/component/ComponentBuilder;

    return-void

    :cond_0
    move v0, v2

    .line 45
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 56
    goto/16 :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
