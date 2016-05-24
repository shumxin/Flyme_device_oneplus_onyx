.class public Lcom/meizu/media/camera/CameraInfo;
.super Lcom/oneplus/base/BasicBaseObject;
.source "CameraInfo.java"


# static fields
.field private static final ENABLE_LOG:Z = false

.field private static final PREFERENCE_PREFIX:Ljava/lang/String;

.field private static final PREF_HASH_CODE:Ljava/lang/String; = "HashCode"

.field private static final PREF_VERSION:Ljava/lang/String; = "Version"

.field public static final PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
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

.field public static final PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
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

.field public static final PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;
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

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION:I = 0xe


# instance fields
.field private m_CharsPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 39
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AWBModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    .line 44
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AFModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    .line 49
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Capabilities"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    .line 53
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "EVStep"

    const-class v2, Landroid/util/Rational;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    sget-object v4, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    .line 58
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ExposureCompRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    new-instance v4, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 63
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ExposureTimeRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    new-instance v4, Landroid/util/Range;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 67
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FlashAvailable"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    .line 72
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FocusRange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    new-instance v4, Landroid/util/Range;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 76
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "HardwareLevel"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    .line 80
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsMirrorSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    .line 85
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ISORange"

    const-class v2, Landroid/util/Range;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    new-instance v4, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    .line 89
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SensorOrientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 93
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MaxAECount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 97
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MaxAFCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 101
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MaxDigitalZoom"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    .line 106
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PictureSizes"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 111
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SceneModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    .line 115
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SensorRect"

    const-class v2, Landroid/graphics/Rect;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    .line 119
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SensorPixelSizeFull"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v7, v7}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    .line 123
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SensorPhysicalSize"

    const-class v2, Landroid/util/SizeF;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    new-instance v4, Landroid/util/SizeF;

    invoke-direct {v4, v8, v8}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 128
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SurfaceSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 133
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "TargetFPSRanges"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    .line 138
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "VideoSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 142
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MaxFaceCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 146
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "LensFacing"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    .line 151
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ThumbnailSizes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/CameraInfo;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    .line 156
    const-class v0, Lcom/meizu/media/camera/CameraInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/camera/CameraInfo;->PREFERENCE_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "cameraCounts"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 202
    const/4 v9, 0x0

    .line 203
    .local v9, "saveCameraInfo":Z
    const/4 v0, 0x1

    if-le p4, v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/meizu/media/camera/CameraInfo;->PREFERENCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    .line 207
    iget-object v0, p0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    const-string v1, "HashCode"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 208
    .local v8, "hashcodeFromPrefs":Ljava/lang/Long;
    iget-object v0, p0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    const-string v1, "Version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 211
    .local v10, "versionFromPrefs":I
    const/16 v0, 0xe

    if-eq v10, v0, :cond_2

    .line 213
    sget-object v0, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v1, "cameraInfo() - Version incompatible: "

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " -> "

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", re-write data"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    const/4 v9, 0x1

    .line 236
    .end local v8    # "hashcodeFromPrefs":Ljava/lang/Long;
    .end local v10    # "versionFromPrefs":I
    :cond_0
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/meizu/media/camera/CameraInfo;->getCameraCharacteristics(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V

    .line 239
    if-eqz v9, :cond_4

    .line 240
    invoke-virtual {p2, p3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraInfo;->saveCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 243
    :cond_1
    :goto_1
    return-void

    .line 219
    .restart local v8    # "hashcodeFromPrefs":Ljava/lang/Long;
    .restart local v10    # "versionFromPrefs":I
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 221
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraInfo;->loadCharacteristics()J

    move-result-wide v6

    .line 222
    .local v6, "hashCode":J
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    .line 226
    sget-object v0, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v1, "cameraInfo() - Data is inconsistent, re-write data"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v9, 0x1

    .line 229
    goto :goto_0

    .line 231
    .end local v6    # "hashCode":J
    :cond_3
    const/4 v9, 0x1

    goto :goto_0

    .line 241
    .end local v8    # "hashcodeFromPrefs":Ljava/lang/Long;
    .end local v10    # "versionFromPrefs":I
    :cond_4
    const/4 v0, 0x1

    if-gt p4, v0, :cond_1

    .line 242
    sget-object v0, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraInfo() - Camera counts incorrect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dont save prefs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getCameraCharacteristics(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V
    .locals 36
    .param p1, "manager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 269
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v30, "getCameraCharacteristics() - Start"

    invoke-static/range {v29 .. v30}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v6, 0x0

    .line 275
    .local v6, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 281
    :goto_0
    if-nez v6, :cond_0

    .line 443
    :goto_1
    return-void

    .line 277
    :catch_0
    move-exception v7

    .line 279
    .local v7, "e":Ljava/lang/Throwable;
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v30, "getCameraCharacteristics() - Error when get camera characteristics"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 283
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_0
    sget-object v29, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 284
    .local v10, "hardwareLevel":I
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_6

    const/4 v12, 0x1

    .line 287
    .local v12, "isLegacyCamera":Z
    :goto_2
    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->getCameraParameters(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    move-result-object v26

    .line 290
    .local v26, "parameters":Landroid/hardware/Camera$Parameters;
    :goto_3
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v6, v1}, Lcom/meizu/media/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 291
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v6, v1}, Lcom/meizu/media/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 292
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v6, v1}, Lcom/meizu/media/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 293
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 294
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 295
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 296
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 297
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 298
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/media/camera/CameraInfo;->getFocusRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 299
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 300
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 301
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 302
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 303
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 304
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 305
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/media/camera/CameraInfo;->getPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 306
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v6, v1}, Lcom/meizu/media/camera/CameraInfo;->getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 307
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 308
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 309
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 310
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    sget-object v30, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 311
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/media/camera/CameraInfo;->getSurfaceSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 312
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/media/camera/CameraInfo;->getTargetFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 313
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/media/camera/CameraInfo;->getThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 314
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/media/camera/CameraInfo;->getVideoSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 317
    if-eqz v26, :cond_c

    .line 320
    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v27

    .line 321
    .local v27, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v29, "manual"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 323
    const/16 v19, 0x1

    .line 324
    .local v19, "manualCaps":I
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 325
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v19    # "manualCaps":I
    :cond_1
    :try_start_1
    const-string v29, "min-focus-position"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 332
    .local v24, "minFocus":Ljava/lang/String;
    const-string v29, "max-focus-position"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 333
    .local v21, "maxFocus":Ljava/lang/String;
    if-eqz v24, :cond_2

    if-nez v21, :cond_3

    .line 335
    :cond_2
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v30, "getCameraCharacteristics() - Cannot get manual focus min and max, use [0,499]"

    invoke-static/range {v29 .. v30}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v24, "0"

    .line 337
    const-string v21, "499"

    .line 339
    :cond_3
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v30, Landroid/util/Range;

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    .end local v21    # "maxFocus":Ljava/lang/String;
    .end local v24    # "minFocus":Ljava/lang/String;
    :goto_4
    :try_start_2
    const-string v29, "min-exposure-time"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 351
    .local v23, "minExp":Ljava/lang/String;
    const-string v29, "max-exposure-time"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 352
    .local v20, "maxExp":Ljava/lang/String;
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v30, Landroid/util/Range;

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    mul-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    mul-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 363
    .end local v20    # "maxExp":Ljava/lang/String;
    .end local v23    # "minExp":Ljava/lang/String;
    :goto_5
    :try_start_3
    const-string v29, "iso-values"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 364
    .local v18, "isoValuesStr":Ljava/lang/String;
    const-string v29, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 365
    .local v17, "isoValuesArr":[Ljava/lang/String;
    const v25, 0x7fffffff

    .line 366
    .local v25, "minISO":I
    const/high16 v22, -0x80000000

    .line 367
    .local v22, "maxISO":I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v11, v29, -0x1

    .local v11, "i":I
    :goto_6
    if-ltz v11, :cond_8

    .line 369
    aget-object v14, v17, v11

    .line 370
    .local v14, "isoRawValue":Ljava/lang/String;
    const-string v29, "^ISO[\\d]+$"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 372
    const/16 v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 373
    .local v16, "isoValueStr":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result v15

    .line 374
    .local v15, "isoValue":I
    move/from16 v0, v25

    if-ge v15, v0, :cond_4

    .line 375
    move/from16 v25, v15

    .line 376
    :cond_4
    move/from16 v0, v22

    if-le v15, v0, :cond_5

    .line 377
    move/from16 v22, v15

    .line 367
    .end local v15    # "isoValue":I
    .end local v16    # "isoValueStr":Ljava/lang/String;
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 284
    .end local v11    # "i":I
    .end local v12    # "isLegacyCamera":Z
    .end local v14    # "isoRawValue":Ljava/lang/String;
    .end local v17    # "isoValuesArr":[Ljava/lang/String;
    .end local v18    # "isoValuesStr":Ljava/lang/String;
    .end local v22    # "maxISO":I
    .end local v25    # "minISO":I
    .end local v26    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v27    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 287
    .restart local v12    # "isLegacyCamera":Z
    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 341
    .restart local v26    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v27    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    .line 343
    .restart local v7    # "e":Ljava/lang/Throwable;
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v30, "getCameraCharacteristics() - Error when get manual focus range, use [0,499]"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v30, Landroid/util/Range;

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    const v32, 0x43f98000    # 499.0f

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 354
    .end local v7    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v7

    .line 356
    .restart local v7    # "e":Ljava/lang/Throwable;
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v30, "getCameraCharacteristics() - Error when get manual exposure range, use [125000,1000000000]"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v30, Landroid/util/Range;

    const-wide/32 v32, 0x1e848

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    const-wide/32 v32, 0x3b9aca00

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 380
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v11    # "i":I
    .restart local v17    # "isoValuesArr":[Ljava/lang/String;
    .restart local v18    # "isoValuesStr":Ljava/lang/String;
    .restart local v22    # "maxISO":I
    .restart local v25    # "minISO":I
    :cond_8
    :try_start_4
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v30, Landroid/util/Range;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 391
    .end local v11    # "i":I
    .end local v17    # "isoValuesArr":[Ljava/lang/String;
    .end local v18    # "isoValuesStr":Ljava/lang/String;
    .end local v22    # "maxISO":I
    .end local v25    # "minISO":I
    :goto_7
    :try_start_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v4, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v28

    .line 393
    .local v28, "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v29

    add-int/lit8 v11, v29, -0x1

    .restart local v11    # "i":I
    :goto_8
    if-ltz v11, :cond_10

    .line 395
    move-object/from16 v0, v28

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 396
    .local v5, "awbStr":Ljava/lang/String;
    const-string v29, "auto"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 397
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 393
    :cond_9
    :goto_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    .line 382
    .end local v4    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "awbStr":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v28    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v7

    .line 384
    .restart local v7    # "e":Ljava/lang/Throwable;
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v30, "getCameraCharacteristics() - Error when get manual ISO range, use [100,1600]"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v30, Landroid/util/Range;

    const/16 v31, 0x64

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x640

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_7

    .line 398
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v4    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "awbStr":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v28    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    :try_start_6
    const-string v29, "cloudy-daylight"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 399
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    .line 409
    .end local v4    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "awbStr":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v28    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_4
    move-exception v7

    .line 411
    .restart local v7    # "e":Ljava/lang/Throwable;
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v30, "getCameraCharacteristics() - Error when get awb modes"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    .end local v7    # "e":Ljava/lang/Throwable;
    :goto_a
    :try_start_7
    const-string v29, "flip-mode-values"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 418
    .local v8, "flipModeValueStr":Ljava/lang/String;
    const-string v29, ","

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 419
    .local v9, "flipModeValues":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 420
    .local v13, "isMirrorSupported":Z
    const-string v29, "flip-h"

    move-object/from16 v0, v29

    invoke-static {v9, v0}, Lcom/oneplus/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    const-string v29, "flip-v"

    move-object/from16 v0, v29

    invoke-static {v9, v0}, Lcom/oneplus/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 422
    const/4 v13, 0x1

    .line 423
    :cond_b
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 432
    .end local v8    # "flipModeValueStr":Ljava/lang/String;
    .end local v9    # "flipModeValues":[Ljava/lang/String;
    .end local v13    # "isMirrorSupported":Z
    .end local v27    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    :goto_b
    sget-object v30, Lcom/meizu/media/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 433
    sget-object v30, Lcom/meizu/media/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 434
    sget-object v30, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 435
    sget-object v30, Lcom/meizu/media/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 436
    sget-object v30, Lcom/meizu/media/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 437
    sget-object v30, Lcom/meizu/media/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 438
    sget-object v30, Lcom/meizu/media/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 439
    sget-object v30, Lcom/meizu/media/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 440
    sget-object v30, Lcom/meizu/media/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 442
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v30, "getCameraCharacteristics() - End"

    invoke-static/range {v29 .. v30}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 400
    .restart local v4    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "awbStr":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v27    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    :try_start_8
    const-string v29, "daylight"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 401
    const/16 v29, 0x5

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 402
    :cond_e
    const-string v29, "fluorescent"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 403
    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 404
    :cond_f
    const-string v29, "incandescent"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 405
    const/16 v29, 0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 407
    .end local v5    # "awbStr":Ljava/lang/String;
    :cond_10
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_a

    .line 425
    .end local v4    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "i":I
    .end local v28    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_5
    move-exception v7

    .line 427
    .restart local v7    # "e":Ljava/lang/Throwable;
    sget-object v29, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v30, "getCameraCharacteristics() - Error when get mirror supported"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b
.end method

.method private getCameraParameters(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 252
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 253
    .local v0, "cameraDevice":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 254
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v0    # "cameraDevice":Landroid/hardware/Camera;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-object v2

    .line 257
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v4, "getCameraParameters() - Error when get camera parameters"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getFocusRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;
    .locals 3
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 449
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 450
    .local v0, "minFocusDistance":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 451
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 452
    :cond_0
    new-instance v1, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v1
.end method

.method private getIntListChars(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;
    .locals 4
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[I>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    .local p2, "charKey":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<[I>;"
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 460
    .local v2, "values":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 462
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_0
    return-object v1

    .line 465
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 466
    aget v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 475
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 476
    .local v2, "streamConfigMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/16 v4, 0x100

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 477
    .local v3, "values":[Landroid/util/Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v3, :cond_1

    .line 479
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_0
    return-object v1

    .line 482
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 483
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSurfaceSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 492
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 493
    .local v2, "streamConfigMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v4, Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    .line 494
    .local v3, "values":[Landroid/util/Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v3, :cond_1

    .line 496
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_0
    return-object v1

    .line 499
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 500
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTargetFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 509
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 510
    .local v0, "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-nez v0, :cond_1

    .line 512
    new-instance v3, Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_0
    return-object v2

    .line 515
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 516
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 5
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 525
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Size;

    .line 526
    .local v2, "values":[Landroid/util/Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v2, :cond_1

    .line 528
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v4, v4}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_0
    return-object v1

    .line 531
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 532
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getVideoSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 541
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 542
    .local v2, "streamConfigMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v4, Landroid/media/MediaRecorder;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    .line 543
    .local v3, "values":[Landroid/util/Size;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez v3, :cond_1

    .line 545
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_0
    return-object v1

    .line 548
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 549
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadCharacteristics()J
    .locals 44

    .prologue
    .line 574
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v42, "loadCharacteristics() - Start"

    invoke-static/range {v41 .. v42}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-wide/16 v20, 0x0

    .line 578
    .local v20, "hashCode":J
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 579
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/List;

    invoke-static/range {v41 .. v41}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 582
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 583
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/List;

    invoke-static/range {v41 .. v41}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 586
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 587
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/List;

    invoke-static/range {v41 .. v41}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 591
    .local v35, "rationalStr":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v34

    .line 592
    .local v34, "rational":Landroid/util/Rational;
    invoke-virtual/range {v34 .. v34}, Landroid/util/Rational;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 593
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 597
    .local v6, "exCompRangeStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 598
    const-string v41, ","

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, "exCompLowerUpperStr":[Ljava/lang/String;
    new-instance v5, Landroid/util/Range;

    const/16 v41, 0x0

    aget-object v41, v4, v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v41

    const/16 v42, 0x1

    aget-object v42, v4, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v5, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 600
    .local v5, "exCompRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v5}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 604
    .local v9, "exTimeRangeStr":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 605
    const-string v41, ","

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 606
    .local v7, "exTimeLowerUpperStr":[Ljava/lang/String;
    new-instance v8, Landroid/util/Range;

    const/16 v41, 0x0

    aget-object v41, v7, v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v41

    const/16 v42, 0x1

    aget-object v42, v7, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v8, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 607
    .local v8, "exTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v8}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, -0x1

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 611
    .local v10, "faceCount":I
    int-to-long v0, v10

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 612
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    sget-object v43, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 616
    .local v11, "flashAvailable":Ljava/lang/Boolean;
    invoke-virtual {v11}, Ljava/lang/Boolean;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 617
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v11}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 621
    .local v13, "focusRangeStr":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 622
    const-string v41, ","

    move-object/from16 v0, v41

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 623
    .local v14, "focusRangeStrs":[Ljava/lang/String;
    new-instance v12, Landroid/util/Range;

    const/16 v41, 0x0

    aget-object v41, v14, v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v41

    const/16 v42, 0x1

    aget-object v42, v14, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v12, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 624
    .local v12, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v12}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, -0x1

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 628
    .local v18, "hardwareLevel":I
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 629
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    sget-object v43, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 633
    .local v22, "isMirrorSupported":Ljava/lang/Boolean;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 634
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 638
    .local v24, "isoRangeStr":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 639
    const-string v41, ","

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 640
    .local v25, "isoRangeStrs":[Ljava/lang/String;
    new-instance v23, Landroid/util/Range;

    const/16 v41, 0x0

    aget-object v41, v25, v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v41

    const/16 v42, 0x1

    aget-object v42, v25, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 641
    .local v23, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 645
    .local v26, "lensFacing":I
    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 646
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, -0x1

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 650
    .local v27, "maxAE":I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 651
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, -0x1

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 655
    .local v28, "maxAF":I
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 656
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/high16 v43, -0x40800000    # -1.0f

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v29

    .line 660
    .local v29, "maxDigitalZoom":F
    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v41, v0

    add-float v41, v41, v29

    move/from16 v0, v41

    float-to-long v0, v0

    move-wide/from16 v20, v0

    .line 661
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 664
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 665
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/List;

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/util/Size;

    .line 666
    .local v39, "size":Landroid/util/Size;
    invoke-virtual/range {v39 .. v39}, Landroid/util/Size;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    goto :goto_0

    .line 669
    .end local v39    # "size":Landroid/util/Size;
    :cond_0
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 670
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/List;

    invoke-static/range {v41 .. v41}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, -0x1

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v36

    .line 674
    .local v36, "sensorOrientation":I
    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 675
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 679
    .local v31, "physicalSizeStr":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/util/SizeF;->parseSizeF(Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object v30

    .line 680
    .local v30, "physicalSize":Landroid/util/SizeF;
    invoke-virtual/range {v30 .. v30}, Landroid/util/SizeF;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 681
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 685
    .local v33, "pixelSizeStrg":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v32

    .line 686
    .local v32, "pixelSize":Landroid/util/Size;
    invoke-virtual/range {v32 .. v32}, Landroid/util/Size;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 687
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 691
    .local v38, "sensorRectStr":Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v37

    .line 692
    .local v37, "sensorRect":Landroid/graphics/Rect;
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 693
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 696
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 697
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/List;

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/util/Size;

    .line 698
    .restart local v39    # "size":Landroid/util/Size;
    invoke-virtual/range {v39 .. v39}, Landroid/util/Size;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    goto :goto_1

    .line 701
    .end local v39    # "size":Landroid/util/Size;
    :cond_1
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v40, "targetFPSRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v41, v0

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v17

    .line 703
    .local v17, "fpsRangesStr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_2

    .line 705
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 707
    .local v15, "fpsRangeStr":Ljava/lang/String;
    const-string v41, ","

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 708
    .local v16, "fpsRangeStrs":[Ljava/lang/String;
    new-instance v41, Landroid/util/Range;

    const/16 v42, 0x0

    aget-object v42, v16, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v43, v16, v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v43

    invoke-direct/range {v41 .. v43}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    .line 710
    goto :goto_2

    .line 712
    .end local v15    # "fpsRangeStr":Ljava/lang/String;
    .end local v16    # "fpsRangeStrs":[Ljava/lang/String;
    :cond_2
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 715
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 716
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/List;

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/util/Size;

    .line 717
    .restart local v39    # "size":Landroid/util/Size;
    invoke-virtual/range {v39 .. v39}, Landroid/util/Size;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    goto :goto_3

    .line 720
    .end local v39    # "size":Landroid/util/Size;
    :cond_3
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v42, Lcom/meizu/media/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraInfo;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 721
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/List;

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/util/Size;

    .line 722
    .restart local v39    # "size":Landroid/util/Size;
    invoke-virtual/range {v39 .. v39}, Landroid/util/Size;->hashCode()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v20, v20, v42

    goto :goto_4

    .line 724
    .end local v39    # "size":Landroid/util/Size;
    :cond_4
    sget-object v41, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v42, "loadCharacteristics() - End, hash code: "

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static/range {v41 .. v43}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 726
    return-wide v20
.end method

.method private loadIntegerListFromPrefs(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 560
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 561
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_0
    return-object v2

    .line 564
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    .local v0, "element":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadSizeListFromPrefs(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 733
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget-object v4, p0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 735
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 736
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v6, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_0
    return-object v2

    .line 739
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 740
    .local v0, "element":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private saveCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 55
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 749
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v53, "saveCharacteristics() - Start"

    invoke-static/range {v52 .. v53}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-wide/16 v18, 0x0

    .line 752
    .local v18, "hashCode":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/CameraInfo;->m_CharsPreference:Landroid/content/SharedPreferences;

    move-object/from16 v52, v0

    invoke-interface/range {v52 .. v52}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 753
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 756
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 757
    .local v4, "afModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v52

    if-lez v52, :cond_0

    .line 759
    invoke-static {v4}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 760
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-static {v4}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 764
    :cond_0
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 765
    .local v5, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v52

    if-lez v52, :cond_1

    .line 767
    invoke-static {v5}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 768
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-static {v5}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 772
    :cond_1
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 773
    .local v6, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v52

    if-lez v52, :cond_2

    .line 775
    invoke-static {v6}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 776
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-static {v6}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 780
    :cond_2
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Rational;

    .line 781
    .local v8, "evStep":Landroid/util/Rational;
    if-eqz v8, :cond_3

    .line 783
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual {v8}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 784
    invoke-virtual {v8}, Landroid/util/Rational;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 788
    :cond_3
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Range;

    .line 789
    .local v11, "exposureCompRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ","

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual {v11}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 790
    .local v9, "expCompRangeStr":Ljava/lang/String;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-interface {v7, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 791
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 794
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Range;

    .line 795
    .local v12, "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ","

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 796
    .local v10, "expTimeRangeStr":Ljava/lang/String;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-interface {v7, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 797
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 800
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 801
    .local v13, "faceCount":Ljava/lang/Integer;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 802
    invoke-virtual {v13}, Ljava/lang/Integer;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 805
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    .line 806
    .local v14, "flashAvailable":Ljava/lang/Boolean;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v53

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 807
    invoke-virtual {v14}, Ljava/lang/Boolean;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 810
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Range;

    .line 811
    .local v15, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ","

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 812
    .local v16, "focusStr":Ljava/lang/String;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v16

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 813
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 816
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 817
    .local v17, "hardwareLevel":Ljava/lang/Integer;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 818
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 821
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    .line 822
    .local v21, "isMirrorSupported":Ljava/lang/Boolean;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v53

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 823
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 826
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Range;

    .line 827
    .local v22, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ","

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v22 .. v22}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 828
    .local v23, "isoStr":Ljava/lang/String;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v23

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 829
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 832
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    .line 833
    .local v24, "lensFacing":Ljava/lang/Integer;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 834
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 837
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 838
    .local v25, "maxAE":Ljava/lang/Integer;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 839
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 842
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 843
    .local v26, "maxAF":Ljava/lang/Integer;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 844
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 847
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Float;

    .line 848
    .local v27, "maxDigitalZoom":Ljava/lang/Float;
    if-eqz v27, :cond_4

    .line 850
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v53

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 851
    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v53

    add-float v52, v52, v53

    move/from16 v0, v52

    float-to-long v0, v0

    move-wide/from16 v18, v0

    .line 855
    :cond_4
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    .line 856
    .local v29, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v52

    if-lez v52, :cond_6

    .line 858
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 859
    .local v30, "pictureSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/util/Size;

    .line 861
    .local v28, "pictureSize":Landroid/util/Size;
    invoke-virtual/range {v28 .. v28}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v30

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-virtual/range {v28 .. v28}, Landroid/util/Size;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 863
    goto :goto_0

    .line 864
    .end local v28    # "pictureSize":Landroid/util/Size;
    :cond_5
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 868
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v30    # "pictureSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/List;

    .line 869
    .local v31, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v52

    if-lez v52, :cond_7

    .line 871
    invoke-static/range {v31 .. v31}, Lcom/oneplus/util/ListUtils;->sumOfIntList(Ljava/util/List;)I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 872
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-static/range {v31 .. v31}, Lcom/oneplus/util/ListUtils;->toStringSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 876
    :cond_7
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .line 877
    .local v32, "sensorOrientation":Ljava/lang/Integer;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 878
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 881
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/util/SizeF;

    .line 882
    .local v33, "sensorPhysicalSize":Landroid/util/SizeF;
    invoke-virtual/range {v33 .. v33}, Landroid/util/SizeF;->toString()Ljava/lang/String;

    move-result-object v34

    .line 883
    .local v34, "sensorPhysicalSizeStr":Ljava/lang/String;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v34

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 884
    invoke-virtual/range {v33 .. v33}, Landroid/util/SizeF;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 887
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/util/Size;

    .line 888
    .local v35, "sensorPixelSizeFull":Landroid/util/Size;
    invoke-virtual/range {v35 .. v35}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v36

    .line 889
    .local v36, "sensorPixelSizeFullStr":Ljava/lang/String;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v36

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 890
    invoke-virtual/range {v35 .. v35}, Landroid/util/Size;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 893
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/graphics/Rect;

    .line 894
    .local v37, "sensorRect":Landroid/graphics/Rect;
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v38

    .line 895
    .local v38, "sensorRectStr":Ljava/lang/String;
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v38

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 896
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 899
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/List;

    .line 900
    .local v40, "surfaceSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v52

    if-lez v52, :cond_9

    .line 902
    new-instance v41, Ljava/util/HashSet;

    invoke-direct/range {v41 .. v41}, Ljava/util/HashSet;-><init>()V

    .line 903
    .local v41, "surfaceSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/util/Size;

    .line 905
    .local v39, "surfaceSize":Landroid/util/Size;
    invoke-virtual/range {v39 .. v39}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v41

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-virtual/range {v39 .. v39}, Landroid/util/Size;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 907
    goto :goto_1

    .line 908
    .end local v39    # "surfaceSize":Landroid/util/Size;
    :cond_8
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v41

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 912
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v41    # "surfaceSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/List;

    .line 913
    .local v44, "targetFPSRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-eqz v44, :cond_b

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v52

    if-lez v52, :cond_b

    .line 915
    new-instance v45, Ljava/util/HashSet;

    invoke-direct/range {v45 .. v45}, Ljava/util/HashSet;-><init>()V

    .line 916
    .local v45, "targetFPSRangesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/util/Range;

    .line 918
    .local v42, "targetFPSRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v42 .. v42}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ","

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v42 .. v42}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 919
    .local v43, "targetFPSRangeStr":Ljava/lang/String;
    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 921
    goto :goto_2

    .line 922
    .end local v42    # "targetFPSRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v43    # "targetFPSRangeStr":Ljava/lang/String;
    :cond_a
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_TARGET_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 926
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v45    # "targetFPSRangesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    .line 927
    .local v47, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v52

    if-lez v52, :cond_d

    .line 929
    new-instance v48, Ljava/util/HashSet;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashSet;-><init>()V

    .line 930
    .local v48, "thumbnailSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/util/Size;

    .line 932
    .local v46, "thumanailSize":Landroid/util/Size;
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v48

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 933
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 934
    goto :goto_3

    .line 935
    .end local v46    # "thumanailSize":Landroid/util/Size;
    :cond_c
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_THUMBNAIL_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v48

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 939
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v48    # "thumbnailSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/List;

    .line 940
    .local v50, "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->size()I

    move-result v52

    if-lez v52, :cond_f

    .line 942
    new-instance v51, Ljava/util/HashSet;

    invoke-direct/range {v51 .. v51}, Ljava/util/HashSet;-><init>()V

    .line 943
    .local v51, "videoSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/util/Size;

    .line 945
    .local v49, "videoSize":Landroid/util/Size;
    invoke-virtual/range {v49 .. v49}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-interface/range {v51 .. v52}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 946
    invoke-virtual/range {v49 .. v49}, Landroid/util/Size;->hashCode()I

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v18, v18, v52

    .line 947
    goto :goto_4

    .line 948
    .end local v49    # "videoSize":Landroid/util/Size;
    :cond_e
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 952
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v51    # "videoSizesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const-string v52, "HashCode"

    move-object/from16 v0, v52

    move-wide/from16 v1, v18

    invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 953
    const-string v52, "Version"

    const/16 v53, 0xe

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 954
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 956
    sget-object v52, Lcom/meizu/media/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v53, "saveCharacteristics() - End, hash code: "

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    invoke-static/range {v52 .. v54}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 957
    return-void
.end method
