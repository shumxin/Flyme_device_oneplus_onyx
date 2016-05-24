.class public interface abstract Lcom/meizu/media/camera/Camera;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/Camera$State;,
        Lcom/meizu/media/camera/Camera$MeteringRect;,
        Lcom/meizu/media/camera/Camera$HardwareLevel;,
        Lcom/meizu/media/camera/Camera$Face;,
        Lcom/meizu/media/camera/Camera$LensFacing;
    }
.end annotation


# static fields
.field public static final AWB_AUTO:I = 0x1

.field public static final AWB_MODE_AUTO:I = 0x1

.field public static final AWB_MODE_CLOUDY_DAYLIGHT:I = 0x6

.field public static final AWB_MODE_DAYLIGHT:I = 0x5

.field public static final AWB_MODE_FLUORESCENT:I = 0x3

.field public static final AWB_MODE_INCANDESCENT:I = 0x2

.field public static final EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_ERROR:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CameraOpenFailedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_SHUTTER:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPOSURE_TIME_AUTO:J = -0x1L

.field public static final FOCUS_AUTO:F = -1.0f

.field public static final ISO_AUTO:I = -0x1

.field public static final PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/AutoExposureState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FACES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$Face;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/FocusMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/FocusMode;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/FocusState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FOCUS_STEP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/Camera$HardwareLevel;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ID:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ISO:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MANUAL_CONTROL_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/Camera$LensFacing;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LOCATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_AE_REGION_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_AF_REGION_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/Rotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_RATIO:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/util/AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/Camera$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SCENE_MODE_DISABLED:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x2

    const/4 v11, 0x0

    .line 81
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AeRegions"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    .line 86
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AfRegions"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    .line 90
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AEState"

    const-class v2, Lcom/meizu/media/camera/AutoExposureState;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Lcom/meizu/media/camera/AutoExposureState;->INACTIVE:Lcom/meizu/media/camera/AutoExposureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 94
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AwbMode"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/Camera;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    .line 99
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AwbModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    .line 103
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string v6, "CameraCharacteristics"

    const-class v7, Ljava/lang/Object;

    const-class v8, Lcom/meizu/media/camera/Camera;

    const/4 v9, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/meizu/media/camera/Camera;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    .line 107
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CaptureState"

    const-class v2, Lcom/meizu/media/camera/OperationState;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 111
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "DigitalZoom"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    .line 115
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ExposureCompensation"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    .line 120
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ExposureCompensationRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/meizu/media/camera/Camera;

    new-instance v5, Landroid/util/Range;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 124
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ExposureCompensationStep"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    .line 128
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ExposureTimeNanos"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/meizu/media/camera/Camera;

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    .line 133
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ExposureTimeNanosRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/meizu/media/camera/Camera;

    new-instance v5, Landroid/util/Range;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 138
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Faces"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    .line 142
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FlashMode"

    const-class v2, Lcom/meizu/media/camera/FlashMode;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Lcom/meizu/media/camera/FlashMode;->AUTO:Lcom/meizu/media/camera/FlashMode;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    .line 146
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FocalLength"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    .line 150
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Focus"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/meizu/media/camera/Camera;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    .line 154
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FocusMode"

    const-class v2, Lcom/meizu/media/camera/FocusMode;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Lcom/meizu/media/camera/FocusMode;->DISABLED:Lcom/meizu/media/camera/FocusMode;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    .line 159
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FocusModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    .line 164
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FocusRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/meizu/media/camera/Camera;

    new-instance v5, Landroid/util/Range;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 168
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FocusState"

    const-class v2, Lcom/meizu/media/camera/FocusState;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Lcom/meizu/media/camera/FocusState;->INACTIVE:Lcom/meizu/media/camera/FocusState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    .line 172
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FocusStep"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_FOCUS_STEP:Lcom/oneplus/base/PropertyKey;

    .line 176
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "HasFlash"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    .line 180
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ID"

    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/meizu/media/camera/Camera;

    const-string v5, ""

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    .line 184
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsAELocked"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    .line 188
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsAwbLocked"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    .line 192
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsBurstCaptureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 196
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCapturingRawPhoto"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    .line 200
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsFaceDetectionEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 204
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsFixedSizePreviewReceiverNeeded"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    .line 208
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsManualCapture"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    .line 212
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsManualControlSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_MANUAL_CONTROL_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 216
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsMirrored"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    .line 220
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsMirrorSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 224
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsRawCaptureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 228
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsRawCaptureEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 232
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSmileCaptureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 236
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsPreviewReceived"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    .line 240
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsRecordingMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    .line 244
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ISO"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/Camera;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    .line 249
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ISORange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/meizu/media/camera/Camera;

    new-instance v5, Landroid/util/Range;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 253
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "JpegQuality"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/Camera;

    const/16 v5, 0x62

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    .line 257
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "LensFacing"

    const-class v2, Lcom/meizu/media/camera/Camera$LensFacing;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    .line 261
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string v6, "Location"

    const-class v7, Landroid/location/Location;

    const-class v8, Lcom/meizu/media/camera/Camera;

    move v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/meizu/media/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    .line 265
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MaxAeRegionCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_MAX_AE_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 269
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MaxAfRegionCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_MAX_AF_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 273
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MaxDigitalZoom"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    .line 277
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PictureFormat"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/Camera;

    const/16 v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    .line 281
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PictureRotation"

    const-class v2, Lcom/oneplus/base/Rotation;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 285
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PictureSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/meizu/media/camera/Camera;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v11, v11}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 290
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PictureSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 295
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PreviewFpsRanges"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    .line 300
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string v6, "PreviewFpsRange"

    const-class v7, Landroid/util/Range;

    const-class v8, Lcom/meizu/media/camera/Camera;

    move v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 304
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string v6, "PreviewReceiver"

    const-class v7, Ljava/lang/Object;

    const-class v8, Lcom/meizu/media/camera/Camera;

    move v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    .line 308
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PreviewSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/meizu/media/camera/Camera;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v11, v11}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 313
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PreviewSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 317
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PreviewState"

    const-class v2, Lcom/meizu/media/camera/OperationState;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    .line 321
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SceneMode"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    .line 326
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SceneModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    .line 330
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SensorOrientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 334
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SensorPhysicalSize"

    const-class v2, Landroid/util/SizeF;

    const-class v3, Lcom/meizu/media/camera/Camera;

    new-instance v5, Landroid/util/SizeF;

    invoke-direct {v5, v12, v12}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 338
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SensorRatio"

    const-class v2, Lcom/oneplus/util/AspectRatio;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_SENSOR_RATIO:Lcom/oneplus/base/PropertyKey;

    .line 342
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SensorSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/meizu/media/camera/Camera;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v11, v11}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 346
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SensorSizeFull"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/meizu/media/camera/Camera;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v11, v11}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    .line 350
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "State"

    const-class v2, Lcom/meizu/media/camera/Camera$State;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Lcom/meizu/media/camera/Camera$State;->CLOSED:Lcom/meizu/media/camera/Camera$State;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    .line 355
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "VideoSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 359
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "VideoSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/meizu/media/camera/Camera;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v11, v11}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 363
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "HardwareLevel"

    const-class v2, Lcom/meizu/media/camera/Camera$HardwareLevel;

    const-class v3, Lcom/meizu/media/camera/Camera;

    sget-object v4, Lcom/meizu/media/camera/Camera$HardwareLevel;->LEGACY:Lcom/meizu/media/camera/Camera$HardwareLevel;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    .line 369
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CaptureFailed"

    const-class v2, Lcom/meizu/media/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    .line 373
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "Error"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    .line 377
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "OpenCancelled"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->EVENT_OPEN_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 381
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "OpenFailed"

    const-class v2, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    .line 385
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "PictureReceived"

    const-class v2, Lcom/meizu/media/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 389
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "PreviewReceived"

    const-class v2, Lcom/meizu/media/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 393
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "RawPictureReceived"

    const-class v2, Lcom/meizu/media/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 397
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "Shutter"

    const-class v2, Lcom/meizu/media/camera/CameraCaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/Camera;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract bindMediaRecorder(Landroid/media/MediaRecorder;I)Z
.end method

.method public abstract calculateViewAngles(Landroid/graphics/Rect;I)Landroid/util/SizeF;
.end method

.method public abstract cancelAutoFocus(I)V
.end method

.method public abstract capture(II)Lcom/oneplus/base/Handle;
.end method

.method public abstract close(I)V
.end method

.method public abstract open(I)Z
.end method

.method public abstract startAutoFocus(I)Z
.end method

.method public abstract startPreview(I)Z
.end method

.method public abstract startVideoRecording(I)Z
.end method

.method public abstract stopPreview(I)V
.end method

.method public abstract stopVideoRecording(I)Z
.end method

.method public abstract unbindMediaRecorder(I)Z
.end method
