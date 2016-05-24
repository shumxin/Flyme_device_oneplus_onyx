.class public Lcom/meizu/media/camera/LegacyCameraImpl;
.super Lcom/meizu/media/camera/BaseCamera;
.source "LegacyCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/LegacyCameraImpl$12;,
        Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;
    }
.end annotation


# static fields
.field private static final DUMP_PARAMETERS:Z = false

.field private static final JPEG_QUALITY_BURST:I = 0x5a

.field private static final MSG_AUTO_FOCUS_TIMEOUT:I = 0x2710

.field private static final TAKE_NEXT_PICTURE_ON_SHUTTER:Z = true

.field private static final TIMEOUT_AUTO_FOCUS:J = 0x1388L


# instance fields
.field private final m_AeAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private m_AeCallback:Ljava/lang/Object;

.field private m_AeRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;"
        }
    .end annotation
.end field

.field private m_AeState:Lcom/meizu/media/camera/AutoExposureState;

.field private final m_AfAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private m_AfRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final m_AutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private m_AwbMode:I

.field private m_BufferedPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private m_CameraParameters:Landroid/hardware/Camera$Parameters;

.field private m_CaptureHandle:Lcom/oneplus/base/Handle;

.field private m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_DefaultVideoPreviewFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_Device:Landroid/hardware/Camera;

.field private m_DigitalZoom:Ljava/lang/Float;

.field private m_DigitalZoomRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_ExposureCompensation:F

.field private m_ExposureTime:J

.field private m_FaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private m_FaceListIndex:I

.field private final m_FaceLists:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$Face;",
            ">;"
        }
    .end annotation
.end field

.field private m_FlashMode:Lcom/meizu/media/camera/FlashMode;

.field private m_FocusMode:Lcom/meizu/media/camera/FocusMode;

.field private m_FocusState:Lcom/meizu/media/camera/FocusState;

.field private m_FocusValue:F

.field private m_ForceCancelAutoFocus:Z

.field private m_ISOValue:I

.field private final m_Id:I

.field private m_IsAeLocked:Z

.field private m_IsAwbLocked:Z

.field private m_IsFaceDetectionEnabled:Z

.field private m_IsMirrored:Z

.field private m_IsPreviewCallbackAdded:Z

.field private m_IsRawCaptureEnabled:Z

.field private m_IsRecordingMode:Z

.field private m_JpegQuality:I

.field private m_MediaRecorder:Landroid/media/MediaRecorder;

.field private m_OneplusCallback:Ljava/lang/Object;

.field private m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private m_PictureSize:Landroid/util/Size;

.field private m_PostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private m_PreviewCallbackByteLength:I

.field private m_PreviewFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewFpsRangeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_PreviewSize:Landroid/util/Size;

.field private m_PreviewSizeBackup:Landroid/util/Size;

.field private m_RawCallback:Landroid/hardware/Camera$PictureCallback;

.field private m_ReceivedCaptureCompletedCount:I

.field private final m_ReceivedCaptureCompletedResults:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private m_ReceivedPictureCount:I

.field private final m_ReceivedPictures:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[",
            "Lcom/meizu/media/camera/media/ImagePlane;",
            ">;"
        }
    .end annotation
.end field

.field private m_ReceivedRawPictureCount:I

.field private final m_ReceivedRawPictures:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[",
            "Lcom/meizu/media/camera/media/ImagePlane;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneMode:I

.field private m_ShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private m_ShutterReceivedCount:I

.field private m_TakePictureFailedOnShutter:Z

.field private m_TargetCapturedFrameCount:I

.field private m_VideoSize:Landroid/util/Size;

.field private m_ZoomRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Lcom/meizu/media/camera/CameraInfo;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "cameraInfo"    # Lcom/meizu/media/camera/CameraInfo;

    .prologue
    .line 210
    invoke-direct {p0, p1, p4}, Lcom/meizu/media/camera/BaseCamera;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CameraInfo;)V

    .line 65
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeAreas:Ljava/util/List;

    .line 66
    sget-object v7, Lcom/meizu/media/camera/AutoExposureState;->INACTIVE:Lcom/meizu/media/camera/AutoExposureState;

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeState:Lcom/meizu/media/camera/AutoExposureState;

    .line 67
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfAreas:Ljava/util/List;

    .line 68
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    .line 70
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    .line 72
    const/4 v7, 0x1

    iput v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AwbMode:I

    .line 79
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    .line 82
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ExposureTime:J

    .line 84
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 85
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/util/List;

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    .line 87
    sget-object v7, Lcom/meizu/media/camera/FlashMode;->OFF:Lcom/meizu/media/camera/FlashMode;

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FlashMode:Lcom/meizu/media/camera/FlashMode;

    .line 88
    sget-object v7, Lcom/meizu/media/camera/FocusMode;->DISABLED:Lcom/meizu/media/camera/FocusMode;

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusMode:Lcom/meizu/media/camera/FocusMode;

    .line 89
    sget-object v7, Lcom/meizu/media/camera/FocusState;->INACTIVE:Lcom/meizu/media/camera/FocusState;

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 90
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusValue:F

    .line 94
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 96
    const/4 v7, -0x1

    iput v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ISOValue:I

    .line 100
    const/4 v7, -0x1

    iput v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_JpegQuality:I

    .line 102
    new-instance v7, Landroid/util/Size;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 104
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewFpsRangeMap:Ljava/util/Map;

    .line 106
    new-instance v7, Landroid/util/Size;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 109
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    .line 111
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    .line 113
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    .line 114
    const/4 v7, 0x0

    iput v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_SceneMode:I

    .line 118
    new-instance v7, Landroid/util/Size;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 124
    new-instance v7, Lcom/meizu/media/camera/LegacyCameraImpl$1;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/LegacyCameraImpl$1;-><init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 133
    new-instance v7, Lcom/meizu/media/camera/LegacyCameraImpl$2;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/LegacyCameraImpl$2;-><init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 142
    new-instance v7, Lcom/meizu/media/camera/LegacyCameraImpl$3;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/LegacyCameraImpl$3;-><init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_BufferedPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 150
    new-instance v7, Lcom/meizu/media/camera/LegacyCameraImpl$4;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/LegacyCameraImpl$4;-><init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 160
    new-instance v7, Lcom/meizu/media/camera/LegacyCameraImpl$5;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/LegacyCameraImpl$5;-><init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 168
    new-instance v7, Lcom/meizu/media/camera/LegacyCameraImpl$6;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/LegacyCameraImpl$6;-><init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 176
    new-instance v7, Lcom/meizu/media/camera/LegacyCameraImpl$7;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/LegacyCameraImpl$7;-><init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_RawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 184
    new-instance v7, Lcom/meizu/media/camera/LegacyCameraImpl$8;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/LegacyCameraImpl$8;-><init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 213
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    .line 216
    sget-object v7, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 219
    sget-object v7, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 220
    .local v1, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/FocusMode;>;"
    sget-object v7, Lcom/meizu/media/camera/FocusMode;->CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 221
    sget-object v7, Lcom/meizu/media/camera/FocusMode;->CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusMode:Lcom/meizu/media/camera/FocusMode;

    .line 228
    :goto_0
    sget-object v7, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 229
    .local v5, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 230
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 233
    :cond_0
    sget-object v7, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_FACE_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p4, v7}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 234
    .local v4, "maxFaceCount":I
    if-lez v4, :cond_3

    .line 236
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v8, "LegacyCameraImpl() - Max face count : "

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v7, v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 238
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v8, v7, v3

    .line 237
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 222
    .end local v3    # "i":I
    .end local v4    # "maxFaceCount":I
    .end local v5    # "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_1
    sget-object v7, Lcom/meizu/media/camera/FocusMode;->NORMAL_AF:Lcom/meizu/media/camera/FocusMode;

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 223
    sget-object v7, Lcom/meizu/media/camera/FocusMode;->NORMAL_AF:Lcom/meizu/media/camera/FocusMode;

    iput-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusMode:Lcom/meizu/media/camera/FocusMode;

    goto :goto_0

    .line 225
    :cond_2
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LegacyCameraImpl() - Initial focus mode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusMode:Lcom/meizu/media/camera/FocusMode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .restart local v4    # "maxFaceCount":I
    .restart local v5    # "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_3
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v8, "LegacyCameraImpl() - Face detection is unsupported"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v7, v7

    add-int/lit8 v3, v7, -0x1

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_4

    .line 244
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    aput-object v8, v7, v3

    .line 243
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 249
    :cond_4
    :try_start_0
    const-string v7, "android.hardware.Camera$Face"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 250
    .local v0, "faceClass":Ljava/lang/Class;
    const-string v7, "getIsSmile"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 251
    .local v2, "getIsSmileMethod":Ljava/lang/reflect/Method;
    sget-object v7, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 252
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v8, "LegacyCameraImpl() - smile capture is supported"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "faceClass":Ljava/lang/Class;
    .end local v2    # "getIsSmileMethod":Ljava/lang/reflect/Method;
    :goto_3
    sget-object v7, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_STEP:Lcom/oneplus/base/PropertyKey;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 260
    return-void

    .line 253
    :catch_0
    move-exception v6

    .line 254
    .local v6, "tr":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v8, "LegacyCameraImpl() - Failed to get smile capture information"

    invoke-static {v7, v8, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    sget-object v7, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/LegacyCameraImpl;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/LegacyCameraImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->onAutoFocus(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/media/camera/LegacyCameraImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->onAeStateChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/media/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/hardware/Camera;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->onDngImageReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/media/camera/LegacyCameraImpl;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "x2"    # Landroid/hardware/camera2/CaptureResult;
    .param p3, "x3"    # Landroid/hardware/Camera;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/LegacyCameraImpl;->onDngMetadataReceived(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/media/camera/LegacyCameraImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/LegacyCameraImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->onAutoFocusMoving(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/hardware/Camera;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->onBufferedPreviewCallbackReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/media/camera/LegacyCameraImpl;[Landroid/hardware/Camera$Face;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;
    .param p1, "x1"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->onFaceDetection([Landroid/hardware/Camera$Face;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/media/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/hardware/Camera;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->onPictureReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/media/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/hardware/Camera;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->onPostViewReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/media/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/hardware/Camera;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->onRawReceived([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/media/camera/LegacyCameraImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->onShutterReceived()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/media/camera/LegacyCameraImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/LegacyCameraImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addPreviewCallbacks()V
    .locals 5

    .prologue
    .line 277
    iget-boolean v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsPreviewCallbackAdded:Z

    if-eqz v2, :cond_0

    .line 306
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "addPreviewCallbacks() - Camera is released"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->getPreviewFormat()I

    move-result v1

    .line 289
    .local v1, "previewFormat":I
    packed-switch v1, :pswitch_data_0

    .line 295
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPreviewCallbacks() - Not supported preview format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported preview format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewCallbackByteLength:I

    .line 300
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "addPreviewCallbacks() - Bytes length: "

    iget v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewCallbackByteLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewCallbackByteLength:I

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_BufferedPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method private applyAeCallback()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 313
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 315
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "applyAeCallback() - Camera is released"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :goto_0
    return v3

    .line 320
    :cond_0
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeCallback:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 325
    :try_start_0
    const-string v5, "android.hardware.Camera$AECallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 326
    .local v0, "aeCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    new-instance v7, Lcom/meizu/media/camera/LegacyCameraImpl$9;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/LegacyCameraImpl$9;-><init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V

    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v0    # "aeCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string v5, "android.hardware.Camera$AECallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 353
    .restart local v0    # "aeCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setAECallback"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 354
    .local v2, "setAeCallbackMethod":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeCallback:Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 361
    goto :goto_0

    .line 342
    .end local v0    # "aeCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setAeCallbackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "applyAeCallback() - Cannot set AE callback"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 356
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 358
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "applyAeCallback() - Fail to set AE callback"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private applyAeLock(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 377
    :cond_0
    const/4 v0, 0x1

    .line 379
    :cond_1
    :goto_0
    return v0

    .line 372
    :cond_2
    if-eqz p1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "applyAeLock() - AE lock is unsupported"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private applyAeRegions(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 405
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v1

    .line 409
    :cond_1
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    .line 410
    .local v0, "maxMeteringAreas":I
    if-nez v0, :cond_3

    .line 411
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 414
    :cond_3
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeAreas:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->createCameraAreas(Ljava/util/List;ILjava/util/List;)V

    .line 417
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeAreas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 418
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :goto_1
    move v1, v2

    .line 423
    goto :goto_0

    .line 420
    :cond_4
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeAreas:Ljava/util/List;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_1
.end method

.method private applyAfRegions(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 431
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_1

    .line 449
    :cond_0
    :goto_0
    return v1

    .line 435
    :cond_1
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    .line 436
    .local v0, "maxFocusAreas":I
    if-nez v0, :cond_3

    .line 437
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 440
    :cond_3
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfAreas:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->createCameraAreas(Ljava/util/List;ILjava/util/List;)V

    .line 443
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfAreas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 444
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :goto_1
    move v1, v2

    .line 449
    goto :goto_0

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfAreas:Ljava/util/List;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_1
.end method

.method private applyAwbLock(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 386
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 395
    :cond_0
    const/4 v0, 0x1

    .line 397
    :cond_1
    :goto_0
    return v0

    .line 390
    :cond_2
    if-eqz p1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "applyAwbLock() - Awb lock is unsupported"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private applyAwbMode(I)Z
    .locals 2
    .param p1, "awbMode"    # I

    .prologue
    .line 456
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 458
    const-string v0, "auto"

    .line 459
    .local v0, "awbStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 474
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 475
    const/4 v1, 0x1

    .line 477
    .end local v0    # "awbStr":Ljava/lang/String;
    :goto_1
    return v1

    .line 462
    .restart local v0    # "awbStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "cloudy-daylight"

    .line 463
    goto :goto_0

    .line 465
    :pswitch_2
    const-string v0, "daylight"

    .line 466
    goto :goto_0

    .line 468
    :pswitch_3
    const-string v0, "fluorescent"

    .line 469
    goto :goto_0

    .line 471
    :pswitch_4
    const-string v0, "incandescent"

    goto :goto_0

    .line 477
    .end local v0    # "awbStr":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 459
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private applyDngImageCallbackBuffer()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 484
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v6, :cond_0

    .line 486
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "applyDngImageCallbackBuffer() - Camera is released"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :goto_0
    return v4

    .line 493
    :cond_0
    :try_start_0
    sget-object v6, Lcom/meizu/media/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 494
    .local v3, "sensorSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    new-array v1, v6, [B

    .line 495
    .local v1, "dngBuffer":[B
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyDngImageCallbackBuffer() - dngBuffer.length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "addDngImageCallbackBuffer"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, [B

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 498
    .local v0, "addDngImageCallbackBufferMethod":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 505
    goto :goto_0

    .line 500
    .end local v0    # "addDngImageCallbackBufferMethod":Ljava/lang/reflect/Method;
    .end local v1    # "dngBuffer":[B
    .end local v3    # "sensorSize":Landroid/util/Size;
    :catch_0
    move-exception v2

    .line 502
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "applyDngImageCallbackBuffer() - Fail to set DngImageCallbackBuffer"

    invoke-static {v5, v6, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private applyExposureCompensation(F)Z
    .locals 4
    .param p1, "ev"    # F

    .prologue
    .line 511
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v3, :cond_0

    .line 513
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 514
    .local v0, "index":I
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 515
    .local v2, "minIndex":I
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 516
    .local v1, "maxIndex":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 517
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 518
    const/4 v3, 0x1

    .line 520
    .end local v0    # "index":I
    .end local v1    # "maxIndex":I
    .end local v2    # "minIndex":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private applyExposureTime(J)Z
    .locals 5
    .param p1, "exposureTime"    # J

    .prologue
    .line 527
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 529
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "exposure-time"

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_0
    const/4 v0, 0x1

    .line 535
    :goto_1
    return v0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "exposure-time"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private applyFaceDetection(Z)Z
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 542
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/OperationState;

    .line 543
    .local v1, "previewState":Lcom/meizu/media/camera/OperationState;
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    if-ne v1, v3, :cond_1

    .line 547
    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-nez v3, :cond_2

    .line 548
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 551
    :goto_0
    const/4 v2, 0x1

    .line 559
    :cond_1
    :goto_1
    return v2

    .line 550
    :cond_2
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 555
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "applyFaceDetection() - Fail to start/stop face detection"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private applyFlashMode(Lcom/meizu/media/camera/FlashMode;)Z
    .locals 5
    .param p1, "flashMode"    # Lcom/meizu/media/camera/FlashMode;

    .prologue
    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, "success":Z
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/OperationState;

    .line 568
    .local v0, "previewState":Lcom/meizu/media/camera/OperationState;
    sget-object v2, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/meizu/media/camera/OperationState;->STOPPING:Lcom/meizu/media/camera/OperationState;

    if-ne v0, v2, :cond_1

    .line 569
    :cond_0
    const/4 v2, 0x0

    .line 592
    :goto_0
    return v2

    .line 571
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2

    .line 573
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/FlashMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 588
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported flash mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 576
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 590
    :goto_1
    const/4 v1, 0x1

    :cond_2
    move v2, v1

    .line 592
    goto :goto_0

    .line 579
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 582
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "on"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 585
    :pswitch_3
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private applyFocusMode(Lcom/meizu/media/camera/FocusMode;)Z
    .locals 3
    .param p1, "focusMode"    # Lcom/meizu/media/camera/FocusMode;

    .prologue
    const/4 v0, 0x0

    .line 599
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 601
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/FocusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 621
    :cond_0
    :goto_0
    return v0

    .line 605
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 619
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 608
    :pswitch_1
    iget-boolean v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 614
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private applyFocusPosition(F)Z
    .locals 6
    .param p1, "focusValue"    # F

    .prologue
    const/4 v3, 0x0

    .line 628
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_1

    .line 631
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 632
    .local v1, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v0, v2, p1

    .line 635
    .local v0, "focusPosition":F
    :goto_0
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "manual-focus-position"

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 636
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "manual-focus-pos-type"

    invoke-virtual {v2, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 637
    const/4 v2, 0x1

    .line 639
    .end local v0    # "focusPosition":F
    .end local v1    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :goto_1
    return v2

    .line 632
    .restart local v1    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .end local v1    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_1
    move v2, v3

    .line 639
    goto :goto_1
.end method

.method private applyISO(I)Z
    .locals 4
    .param p1, "iso"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 648
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "iso"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :goto_0
    const/4 v0, 0x1

    .line 654
    :goto_1
    return v0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "iso"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private applyManualCapture(Z)Z
    .locals 2
    .param p1, "isManual"    # Z

    .prologue
    .line 661
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 663
    if-eqz p1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 667
    const/4 v0, 0x1

    .line 669
    :goto_0
    return v0

    .line 666
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applySceneMode(I)Z

    move-result v0

    goto :goto_0

    .line 669
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyMirrorMode(Z)Z
    .locals 4
    .param p1, "isMirrored"    # Z

    .prologue
    const/4 v2, 0x0

    .line 676
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_3

    .line 678
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 693
    :goto_0
    return v1

    .line 680
    :cond_0
    if-eqz p1, :cond_2

    .line 682
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "applyMirrorMode() - Is mirror"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->calculateJpegOrientation()I

    move-result v0

    .line 684
    .local v0, "jpegOrientation":I
    rem-int/lit16 v1, v0, 0xb4

    if-nez v1, :cond_1

    .line 685
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "snapshot-picture-flip"

    const-string v3, "flip-h"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .end local v0    # "jpegOrientation":I
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 687
    .restart local v0    # "jpegOrientation":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "snapshot-picture-flip"

    const-string v3, "flip-v"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 690
    .end local v0    # "jpegOrientation":I
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "snapshot-picture-flip"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 693
    goto :goto_0
.end method

.method private applyOneplusCallback(Z)Z
    .locals 9
    .param p1, "isRawCapureEnabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 700
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 702
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "applyOneplusCallback() - Camera is released"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :goto_0
    return v3

    .line 707
    :cond_0
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_OneplusCallback:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 712
    :try_start_0
    const-string v5, "android.hardware.Camera$OneplusCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 713
    .local v1, "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    new-instance v7, Lcom/meizu/media/camera/LegacyCameraImpl$10;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/LegacyCameraImpl$10;-><init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V

    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_OneplusCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v1    # "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string v5, "android.hardware.Camera$OneplusCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 747
    .restart local v1    # "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setOneplusCallback"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 748
    .local v2, "setOneplusCallbackMethod":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_OneplusCallback:Ljava/lang/Object;

    :goto_1
    aput-object v5, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 755
    goto :goto_0

    .line 736
    .end local v1    # "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setOneplusCallbackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "applyOneplusCallback() - Cannot set Oneplus callback"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 748
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "setOneplusCallbackMethod":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 750
    .end local v1    # "oneplusCallbackInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setOneplusCallbackMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 752
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "applyOneplusCallback() - Fail to set Oneplus callback"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private applyParameters()Z
    .locals 3

    .prologue
    .line 761
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 767
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 769
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "applyParameters() - Error when set parameters"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 772
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private applyPictureSize(Landroid/util/Size;)Z
    .locals 3
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 785
    const/4 v0, 0x1

    .line 787
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyPreviewFpsRange(Landroid/util/Range;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2

    .line 810
    if-nez p1, :cond_0

    .line 812
    :try_start_0
    iget-boolean v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v2, :cond_1

    .line 813
    iget-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 817
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->mappingToDriverFpsRange(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    .line 818
    .local v0, "driverFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 819
    const/4 v2, 0x1

    .line 826
    .end local v0    # "driverFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_1
    return v2

    .line 815
    :cond_1
    iget-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v1

    .line 823
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "applyPreviewFpsRange() - Error when set preview FPS range"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 826
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private applyPreviewSize(Landroid/util/Size;)Z
    .locals 3
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 836
    const/4 v0, 0x1

    .line 838
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyRecordingMode(Z)Z
    .locals 1
    .param p1, "isRecordingMode"    # Z

    .prologue
    .line 794
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 797
    const/4 v0, 0x1

    .line 799
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applySceneMode(I)Z
    .locals 3
    .param p1, "sceneMode"    # I

    .prologue
    .line 845
    const/4 v1, 0x0

    .line 846
    .local v1, "success":Z
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_1

    .line 849
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 850
    const/4 v2, 0x1

    .line 857
    :goto_0
    return v2

    .line 853
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->mappingToLegacyScene(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "legacySceneMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 855
    const/4 v1, 0x1

    .end local v0    # "legacySceneMode":Ljava/lang/String;
    :cond_1
    move v2, v1

    .line 857
    goto :goto_0
.end method

.method private applyVideoSize(Landroid/util/Size;)Z
    .locals 4
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 864
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const/4 v0, 0x1

    .line 869
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyZoom(F)Z
    .locals 5
    .param p1, "digitalZoom"    # F

    .prologue
    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "success":Z
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 879
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->mappingToDriverZoom(Ljava/lang/Float;)I

    move-result v1

    .line 880
    .local v1, "zoom":I
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 882
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 883
    const/4 v0, 0x1

    .line 884
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "applyZoom() - Zoom: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    .end local v1    # "zoom":I
    :cond_0
    :goto_0
    return v0

    .line 888
    .restart local v1    # "zoom":I
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 890
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 891
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 892
    const/4 v0, 0x1

    .line 893
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "applyZoom() - Smooth zoom: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private calculateJpegOrientation()I
    .locals 3

    .prologue
    .line 948
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v0

    .line 949
    .local v0, "deviceOrientation":I
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_0

    .line 950
    neg-int v0, v0

    .line 951
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private captureInternal()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1075
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    if-eq v0, v3, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureInternal() - Capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1156
    :goto_0
    return v0

    .line 1080
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-eq v0, v3, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureInternal() - Preview state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1083
    goto :goto_0

    .line 1087
    :cond_1
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->prepareCaptureParameters()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "captureInternal() - Error when preparing capture parameters"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1090
    goto :goto_0

    .line 1094
    :cond_2
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1095
    goto :goto_0

    .line 1099
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1153
    :cond_4
    :goto_1
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move v0, v2

    .line 1156
    goto :goto_0

    .line 1103
    :sswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "captureInternal() - Take picture"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ne v0, v2, :cond_5

    .line 1109
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "captureInternal() - Set raw callback"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyDngImageCallbackBuffer()Z

    .line 1115
    invoke-direct {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyOneplusCallback(Z)Z

    .line 1118
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1126
    :goto_2
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->takePicture()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1128
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "captureInternal() - Take picture failed"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1129
    goto/16 :goto_0

    .line 1122
    :cond_5
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "captureInternal() - clear raw callback"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyOneplusCallback(Z)Z

    goto :goto_2

    .line 1135
    :sswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1137
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1139
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureInternal() - Set preview size to picture size : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for preview capturing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    iput-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    .line 1141
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1145
    :cond_6
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "captureInternal() - Invalid preview size and picture size"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1146
    goto/16 :goto_0

    .line 1099
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkAWBModes()V
    .locals 7

    .prologue
    .line 1163
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v5, :cond_2

    .line 1167
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    .local v0, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v4

    .line 1169
    .local v4, "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    .line 1171
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1172
    .local v1, "awbStr":Ljava/lang/String;
    const-string v5, "auto"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1173
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1174
    :cond_1
    const-string v5, "cloudy-daylight"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1175
    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1186
    .end local v0    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "awbStr":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1188
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "checkAWBModes() - Error when get awb modes"

    invoke-static {v5, v6, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1191
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    return-void

    .line 1176
    .restart local v0    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "awbStr":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    const-string v5, "daylight"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1177
    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1178
    :cond_4
    const-string v5, "fluorescent"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1179
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1180
    :cond_5
    const-string v5, "incandescent"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1181
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1183
    .end local v1    # "awbStr":Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1184
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "checkAWBModes() - AWB modes: "

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private checkDefaultPreviewFPSRange()V
    .locals 11

    .prologue
    const/16 v10, 0x1e

    const/4 v9, 0x0

    .line 1197
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v6, :cond_4

    .line 1199
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    if-nez v6, :cond_0

    .line 1203
    const/4 v6, 0x2

    :try_start_0
    new-array v4, v6, [I

    .line 1204
    .local v4, "range":[I
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v4}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 1205
    new-instance v6, Landroid/util/Range;

    const/4 v7, 0x0

    aget v7, v4, v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v4, v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    .line 1206
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkDefaultPreviewFPSRange() - Default photo preview FPS range: "

    iget-object v8, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    .end local v4    # "range":[I
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-nez v6, :cond_4

    .line 1215
    sget-object v6, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1216
    .local v3, "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1218
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    .line 1219
    .local v5, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v10, :cond_2

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v10, :cond_2

    .line 1221
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v2, v6, -0x14

    .line 1222
    .local v2, "lowerBoundDiff":I
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x14

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v2, v6, :cond_2

    .line 1223
    :cond_1
    iput-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 1216
    .end local v2    # "lowerBoundDiff":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1208
    .end local v1    # "i":I
    .end local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .end local v5    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1210
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkDefaultPreviewFPSRange() - Error when get photo preview FPS range"

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1226
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    .restart local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_3
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    if-eqz v6, :cond_5

    .line 1227
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkDefaultPreviewFPSRange() - Default video FPS range : "

    iget-object v8, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1240
    .end local v1    # "i":I
    .end local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_4
    :goto_2
    return-void

    .line 1230
    .restart local v1    # "i":I
    .restart local v3    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1232
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Range;

    iput-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    .line 1233
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDefaultPreviewFPSRange() - No suitable FPS range for video, use range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultVideoPreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1236
    :cond_6
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkDefaultPreviewFPSRange() - No suitable FPS range for video"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private checkManualExposureRange()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 1246
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_0

    .line 1250
    :try_start_0
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "min-exposure-time"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1251
    .local v3, "minExp":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "max-exposure-time"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1252
    .local v2, "maxExp":Ljava/lang/String;
    new-instance v1, Landroid/util/Range;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1253
    .local v1, "expRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    sget-object v4, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1254
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "checkManualExposureRange() - Exposure range: "

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    .end local v1    # "expRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v2    # "maxExp":Ljava/lang/String;
    .end local v3    # "minExp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1256
    :catch_0
    move-exception v0

    .line 1258
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "checkManualExposureRange() - Error when get manual exposure range, use [125000,1000000000]"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1259
    new-instance v1, Landroid/util/Range;

    const-wide/32 v4, 0x1e848

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v6, 0x3b9aca00

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1260
    .restart local v1    # "expRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    sget-object v4, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkManualFocusRange()V
    .locals 6

    .prologue
    .line 1269
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_0

    .line 1273
    :try_start_0
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "min-focus-position"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1274
    .local v3, "minFocus":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "max-focus-position"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1275
    .local v2, "maxFocus":Ljava/lang/String;
    new-instance v1, Landroid/util/Range;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1276
    .local v1, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v4, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1277
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "checkManualFocusRange() - Focus range: "

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    .end local v1    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .end local v2    # "maxFocus":Ljava/lang/String;
    .end local v3    # "minFocus":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1279
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "checkManualFocusRange() - Error when get manual focus range, use [0,499]"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1282
    new-instance v1, Landroid/util/Range;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v5, 0x43f98000    # 499.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1283
    .restart local v1    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v4, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkManualISORange()V
    .locals 13

    .prologue
    .line 1292
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v9, :cond_3

    .line 1296
    :try_start_0
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v10, "iso-values"

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1297
    .local v6, "isoValuesStr":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1298
    .local v5, "isoValuesArr":[Ljava/lang/String;
    const v8, 0x7fffffff

    .line 1299
    .local v8, "minISO":I
    const/high16 v7, -0x80000000

    .line 1300
    .local v7, "maxISO":I
    array-length v9, v5

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1302
    aget-object v2, v5, v1

    .line 1303
    .local v2, "isoRawValue":Ljava/lang/String;
    const-string v9, "^ISO[\\d]+$"

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1305
    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1306
    .local v4, "isoValueStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1307
    .local v3, "isoValue":I
    if-ge v3, v8, :cond_0

    .line 1308
    move v8, v3

    .line 1309
    :cond_0
    if-le v3, v7, :cond_1

    .line 1310
    move v7, v3

    .line 1300
    .end local v3    # "isoValue":I
    .end local v4    # "isoValueStr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1313
    .end local v2    # "isoRawValue":Ljava/lang/String;
    :cond_2
    sget-object v9, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v10, Landroid/util/Range;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v9, v10}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1314
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v10, "checkManualISORange() - ISO range: "

    sget-object v11, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v11}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    .end local v1    # "i":I
    .end local v5    # "isoValuesArr":[Ljava/lang/String;
    .end local v6    # "isoValuesStr":Ljava/lang/String;
    .end local v7    # "maxISO":I
    .end local v8    # "minISO":I
    :cond_3
    :goto_1
    return-void

    .line 1316
    :catch_0
    move-exception v0

    .line 1318
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v10, "checkManualISORange() - Error when get manual ISO range, use [100,1600]"

    invoke-static {v9, v10, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1319
    sget-object v9, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v10, Landroid/util/Range;

    const/16 v11, 0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x640

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v9, v10}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkPreviewFPSRanges()V
    .locals 8

    .prologue
    .line 1328
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v5, :cond_0

    .line 1332
    :try_start_0
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2

    .line 1333
    .local v2, "fpsRangesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    .local v4, "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1335
    .local v1, "fpsRange":[I
    new-instance v5, Landroid/util/Range;

    const/4 v6, 0x0

    aget v6, v1, v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v1, v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1339
    .end local v1    # "fpsRange":[I
    .end local v2    # "fpsRangesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "checkPreviewFPSRanges() - Error when get photo preview FPS range"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1344
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 1336
    .restart local v2    # "fpsRangesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "newFpsRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_1
    :try_start_1
    sget-object v5, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1337
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "checkPreviewFPSRanges() - FPS ranges: "

    invoke-static {v5, v6, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkZoomRange()V
    .locals 7

    .prologue
    .line 1350
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 1352
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1354
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 1355
    .local v1, "maxZoom":I
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1356
    .local v0, "maxDigitalZoomm":Ljava/lang/Float;
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    .line 1357
    new-instance v2, Landroid/util/Range;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    .line 1358
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1359
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "checkZoomRange() - Digital zoom range: "

    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    const-string v5, ", Zoom range: "

    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1362
    .end local v0    # "maxDigitalZoomm":Ljava/lang/Float;
    .end local v1    # "maxZoom":I
    :cond_0
    return-void
.end method

.method private closeInternal()V
    .locals 4

    .prologue
    .line 1410
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeInternal() - Release camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' [Start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 1412
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeInternal() - Release camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' [End]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1418
    :goto_0
    return-void

    .line 1414
    :catch_0
    move-exception v0

    .line 1416
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "closeInternal() - Cannot release camera, "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createCameraArea(Lcom/meizu/media/camera/Camera$MeteringRect;)Landroid/hardware/Camera$Area;
    .locals 8
    .param p1, "rect"    # Lcom/meizu/media/camera/Camera$MeteringRect;

    .prologue
    const/high16 v7, 0x44fa0000    # 2000.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    .line 1424
    if-nez p1, :cond_0

    .line 1425
    const/4 v2, 0x0

    .line 1433
    :goto_0
    return-object v2

    .line 1426
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/meizu/media/camera/Camera$MeteringRect;->getLeft()F

    move-result v2

    mul-float/2addr v2, v7

    sub-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/meizu/media/camera/Camera$MeteringRect;->getTop()F

    move-result v3

    mul-float/2addr v3, v7

    sub-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/meizu/media/camera/Camera$MeteringRect;->getRight()F

    move-result v4

    mul-float/2addr v4, v7

    sub-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {p1}, Lcom/meizu/media/camera/Camera$MeteringRect;->getBottom()F

    move-result v5

    mul-float/2addr v5, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1432
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/meizu/media/camera/Camera$MeteringRect;->getWeight()F

    move-result v1

    .line 1433
    .local v1, "weight":F
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {v3, v0, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    move-object v2, v3

    goto :goto_0

    :cond_1
    mul-float v2, v1, v6

    float-to-int v2, v2

    goto :goto_1
.end method

.method private createCameraAreas(Ljava/util/List;ILjava/util/List;)V
    .locals 4
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1440
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;"
    .local p3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p3, :cond_1

    .line 1442
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 1443
    if-eqz p1, :cond_1

    .line 1445
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1447
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-direct {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->createCameraArea(Lcom/meizu/media/camera/Camera$MeteringRect;)Landroid/hardware/Camera$Area;

    move-result-object v0

    .line 1448
    .local v0, "area":Landroid/hardware/Camera$Area;
    if-eqz v0, :cond_0

    .line 1449
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1445
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1453
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private dumpParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1461
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1462
    .local v4, "keyValuePairs":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v0, v2

    .line 1463
    .local v3, "keyValuePair":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "dumpParameters() - "

    invoke-static {v6, v7, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1465
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "keyValuePair":Ljava/lang/String;
    .end local v4    # "keyValuePairs":[Ljava/lang/String;
    .end local v5    # "len$":I
    :catch_0
    move-exception v1

    .line 1467
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "dumpParameters() - Error when dump parameters"

    invoke-static {v6, v7, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1469
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private getFocalLength()F
    .locals 4

    .prologue
    .line 1558
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    .line 1560
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v0

    .line 1561
    .local v0, "focalLength":F
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateFocalLength() - Focal length: "

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1567
    .end local v0    # "focalLength":F
    :cond_0
    :goto_0
    return v0

    .line 1566
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateFocalLength() - Cannot get focal length"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getPreviewFormat()I
    .locals 3

    .prologue
    .line 1574
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 1576
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    .line 1582
    :goto_0
    return v0

    .line 1581
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "getPreviewFormat() - Fail to get preview format, use NV21"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const/16 v0, 0x11

    goto :goto_0
.end method

.method private isRawCaptureNeeded()Z
    .locals 1

    .prologue
    .line 1589
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_SceneMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mappingToDriverFpsRange(Landroid/util/Range;)Landroid/util/Range;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1596
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewFpsRangeMap:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 1597
    .local v3, "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 1640
    .end local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_0
    return-object v4

    .line 1601
    .end local v4    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    mul-int/lit16 v14, v0, 0x3e8

    .line 1602
    .local v14, "requestFpsLower":I
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    mul-int/lit16 v15, v0, 0x3e8

    .line 1603
    .local v15, "requestFpsUpper":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v16

    .line 1606
    .local v16, "supportedFpsRagnes":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    .line 1608
    .local v17, "supportedFpsRange":[I
    const/4 v2, 0x0

    .line 1609
    .local v2, "chooseThis":Z
    const/16 v18, 0x0

    aget v18, v17, v18

    sub-int v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v10, v0

    .line 1610
    .local v10, "diffLower":D
    const/16 v18, 0x1

    aget v18, v17, v18

    sub-int v18, v18, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v12, v0

    .line 1611
    .local v12, "diffUpper":D
    if-nez v3, :cond_3

    .line 1613
    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v18, v10, v18

    if-gez v18, :cond_2

    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v18, v12, v18

    if-gez v18, :cond_2

    .line 1614
    const/4 v2, 0x1

    .line 1623
    :cond_2
    :goto_2
    if-eqz v2, :cond_1

    .line 1624
    new-instance v3, Landroid/util/Range;

    .end local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    aget v18, v17, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .restart local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 1616
    :cond_3
    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v18, v10, v18

    if-gez v18, :cond_2

    const-wide v18, 0x408f400000000000L    # 1000.0

    cmpg-double v18, v12, v18

    if-gez v18, :cond_2

    .line 1618
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v6, v0

    .line 1619
    .local v6, "diffChoosedLower":D
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v18, v18, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v8, v0

    .line 1620
    .local v8, "diffChoosedUpper":D
    cmpg-double v18, v10, v6

    if-gez v18, :cond_2

    cmpg-double v18, v12, v8

    if-gez v18, :cond_2

    .line 1621
    const/4 v2, 0x1

    goto :goto_2

    .line 1626
    .end local v2    # "chooseThis":Z
    .end local v6    # "diffChoosedLower":D
    .end local v8    # "diffChoosedUpper":D
    .end local v10    # "diffLower":D
    .end local v12    # "diffUpper":D
    .end local v17    # "supportedFpsRange":[I
    :cond_4
    if-eqz v3, :cond_5

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "mappingToDriverFPSRange() - Choosed FPS range: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1633
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewFpsRangeMap:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v16    # "supportedFpsRagnes":Ljava/util/List;, "Ljava/util/List<[I>;"
    :goto_4
    move-object v4, v3

    .line 1640
    .end local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v4    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_0

    .line 1630
    .end local v4    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v16    # "supportedFpsRagnes":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_5
    new-instance v3, Landroid/util/Range;

    .end local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1631
    .restart local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mappingToDriverFPSRange() - Cannot find suitable FPS range: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1637
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v16    # "supportedFpsRagnes":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_6
    new-instance v3, Landroid/util/Range;

    .end local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1638
    .restart local v3    # "choosedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mappingToDriverFPSRange() - No parameters, use original FPS range: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private mappingToDriverZoom(Ljava/lang/Float;)I
    .locals 4
    .param p1, "digitalZoom"    # Ljava/lang/Float;

    .prologue
    const/4 v1, 0x0

    .line 1647
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return v1

    .line 1649
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    invoke-virtual {v2, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1651
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v3, v1

    div-float v0, v2, v1

    .line 1652
    .local v0, "digitalZoomFactor":F
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ZoomRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v3, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0
.end method

.method private mappingToLegacyScene(I)Ljava/lang/String;
    .locals 1
    .param p1, "inSceneMode"    # I

    .prologue
    .line 1659
    const-string v0, "auto"

    .line 1660
    .local v0, "outSceneMode":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1717
    :goto_0
    :pswitch_0
    return-object v0

    .line 1667
    :pswitch_1
    const-string v0, "action"

    .line 1668
    goto :goto_0

    .line 1670
    :pswitch_2
    const-string v0, "portrait"

    .line 1671
    goto :goto_0

    .line 1673
    :pswitch_3
    const-string v0, "landscape"

    .line 1674
    goto :goto_0

    .line 1676
    :pswitch_4
    const-string v0, "night"

    .line 1677
    goto :goto_0

    .line 1679
    :pswitch_5
    const-string v0, "night-portrait"

    .line 1680
    goto :goto_0

    .line 1682
    :pswitch_6
    const-string v0, "theatre"

    .line 1683
    goto :goto_0

    .line 1685
    :pswitch_7
    const-string v0, "beach"

    .line 1686
    goto :goto_0

    .line 1688
    :pswitch_8
    const-string v0, "snow"

    .line 1689
    goto :goto_0

    .line 1691
    :pswitch_9
    const-string v0, "sunset"

    .line 1692
    goto :goto_0

    .line 1694
    :pswitch_a
    const-string v0, "steadyphoto"

    .line 1695
    goto :goto_0

    .line 1697
    :pswitch_b
    const-string v0, "fireworks"

    .line 1698
    goto :goto_0

    .line 1700
    :pswitch_c
    const-string v0, "sports"

    .line 1701
    goto :goto_0

    .line 1703
    :pswitch_d
    const-string v0, "party"

    .line 1704
    goto :goto_0

    .line 1706
    :pswitch_e
    const-string v0, "candlelight"

    .line 1707
    goto :goto_0

    .line 1709
    :pswitch_f
    const-string v0, "barcode"

    .line 1710
    goto :goto_0

    .line 1712
    :pswitch_10
    const-string v0, "hdr"

    .line 1713
    goto :goto_0

    .line 1660
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method private onAeStateChanged(I)V
    .locals 5
    .param p1, "aeState"    # I

    .prologue
    .line 1725
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeState:Lcom/meizu/media/camera/AutoExposureState;

    .line 1726
    .local v1, "oldState":Lcom/meizu/media/camera/AutoExposureState;
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeState:Lcom/meizu/media/camera/AutoExposureState;

    .line 1727
    .local v0, "newState":Lcom/meizu/media/camera/AutoExposureState;
    packed-switch p1, :pswitch_data_0

    .line 1739
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAeStateChanged() - Unknown AE state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    :goto_0
    if-eq v0, v1, :cond_0

    .line 1746
    iput-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeState:Lcom/meizu/media/camera/AutoExposureState;

    .line 1747
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAeStateChanged() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeState:Lcom/meizu/media/camera/AutoExposureState;

    invoke-virtual {p0, v2, v1, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1750
    :cond_0
    return-void

    .line 1730
    :pswitch_0
    sget-object v0, Lcom/meizu/media/camera/AutoExposureState;->CONVERGED:Lcom/meizu/media/camera/AutoExposureState;

    .line 1731
    goto :goto_0

    .line 1733
    :pswitch_1
    sget-object v0, Lcom/meizu/media/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/meizu/media/camera/AutoExposureState;

    .line 1734
    goto :goto_0

    .line 1736
    :pswitch_2
    sget-object v0, Lcom/meizu/media/camera/AutoExposureState;->SEARCHING:Lcom/meizu/media/camera/AutoExposureState;

    .line 1737
    goto :goto_0

    .line 1727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onAutoFocus(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 1758
    .local v0, "oldState":Lcom/meizu/media/camera/FocusState;
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FocusState:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/FocusState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1764
    sget-object v1, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    iput-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 1765
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {p0, v1, v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1766
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 1770
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1773
    if-eqz p1, :cond_0

    sget-object v1, Lcom/meizu/media/camera/FocusState;->FOCUSED:Lcom/meizu/media/camera/FocusState;

    :goto_0
    iput-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 1774
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {p0, v1, v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1775
    return-void

    .line 1773
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/FocusState;->UNFOCUSED:Lcom/meizu/media/camera/FocusState;

    goto :goto_0

    .line 1758
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onAutoFocusMoving(Z)V
    .locals 5
    .param p1, "start"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1781
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 1782
    .local v0, "oldState":Lcom/meizu/media/camera/FocusState;
    if-eqz p1, :cond_1

    .line 1784
    sget-object v1, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    if-eq v0, v1, :cond_0

    .line 1787
    const/16 v1, 0x2710

    const-wide/16 v2, 0x1388

    invoke-static {p0, v1, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1790
    sget-object v1, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    iput-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 1791
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {p0, v1, v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1796
    :cond_0
    :goto_0
    return-void

    .line 1794
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    if-ne v0, v1, :cond_0

    .line 1795
    invoke-direct {p0, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->onAutoFocus(Z)V

    goto :goto_0
.end method

.method private onAutoFocusTimeout()V
    .locals 2

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusTimeout()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->onAutoFocus(Z)V

    .line 1804
    return-void
.end method

.method private onBufferedPreviewCallbackReceived([BLandroid/hardware/Camera;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/16 v2, 0x11

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 1811
    sget-object v7, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v3}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v3

    aget v3, v7, v3

    packed-switch v3, :pswitch_data_0

    .line 1816
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferedPreviewCallbackReceived() - Invalid preview state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    :goto_0
    return-void

    .line 1821
    :pswitch_0
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1824
    if-eqz p1, :cond_0

    array-length v3, p1

    iget v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewCallbackByteLength:I

    if-eq v3, v7, :cond_1

    .line 1826
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onBufferedPreviewCallbackReceived() - Invalid preview data"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1831
    :cond_1
    const/4 v4, 0x0

    .line 1832
    .local v4, "planes":[Lcom/meizu/media/camera/media/ImagePlane;
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1833
    .local v9, "pictureFormat":I
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->hasHandlers(Lcom/oneplus/base/EventKey;)Z

    move-result v8

    .line 1834
    .local v8, "hasHandlers":Z
    const/16 v3, 0x100

    if-eq v9, v3, :cond_5

    move v10, v5

    .line 1835
    .local v10, "yuvCapture":Z
    :goto_1
    if-nez v8, :cond_2

    if-eqz v10, :cond_6

    .line 1836
    :cond_2
    new-array v4, v5, [Lcom/meizu/media/camera/media/ImagePlane;

    .end local v4    # "planes":[Lcom/meizu/media/camera/media/ImagePlane;
    new-instance v3, Lcom/meizu/media/camera/media/ImagePlane;

    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-direct {v3, p1, v5, v7}, Lcom/meizu/media/camera/media/ImagePlane;-><init>([BII)V

    aput-object v3, v4, v6

    .line 1841
    .restart local v4    # "planes":[Lcom/meizu/media/camera/media/ImagePlane;
    :goto_2
    if-eqz v8, :cond_3

    if-eqz v4, :cond_3

    .line 1842
    sget-object v11, Lcom/meizu/media/camera/LegacyCameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v5, v0

    invoke-static/range {v0 .. v7}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/meizu/media/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/meizu/media/camera/CameraCaptureEventArgs;

    move-result-object v3

    invoke-virtual {p0, v11, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1845
    :cond_3
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v3, v5, :cond_4

    .line 1847
    packed-switch v9, :pswitch_data_1

    .line 1856
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .end local v10    # "yuvCapture":Z
    :cond_5
    move v10, v6

    .line 1834
    goto :goto_1

    .line 1838
    .restart local v10    # "yuvCapture":Z
    :cond_6
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->removePreviewCallbacks()V

    goto :goto_2

    .line 1850
    :pswitch_1
    sget-object v11, Lcom/meizu/media/camera/LegacyCameraImpl;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v5, v0

    invoke-static/range {v0 .. v7}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/meizu/media/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/meizu/media/camera/CameraCaptureEventArgs;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_3

    .line 1811
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1847
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch
.end method

.method private onCaptureCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1863
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureCompleted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    iput v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    .line 1867
    iput v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 1868
    iput v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    .line 1869
    iput v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    .line 1870
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1871
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1872
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1873
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1874
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1876
    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1877
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applySceneMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 1882
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    if-eqz v0, :cond_1

    .line 1884
    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->stopPreview(I)V

    .line 1885
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSizeBackup:Landroid/util/Size;

    .line 1890
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1891
    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->stopPreview(I)V

    .line 1892
    :cond_2
    return-void
.end method

.method private onDngImageReceived([BLandroid/hardware/Camera;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1897
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1899
    :cond_0
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onDngImageReceived() - Do not need raw capture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    :goto_0
    return-void

    .line 1904
    :cond_1
    sget-object v6, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/OperationState;

    .line 1905
    .local v1, "captureState":Lcom/meizu/media/camera/OperationState;
    sget-object v6, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1911
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDngImageReceived() - Capture state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1914
    :pswitch_0
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_2

    .line 1916
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onDngImageReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1921
    :cond_2
    if-nez p1, :cond_3

    .line 1923
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onDngImageReceived() - data is null"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    invoke-direct {p0, v8, v8, v8}, Lcom/meizu/media/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/meizu/media/camera/media/ImagePlane;[Lcom/meizu/media/camera/media/ImagePlane;)V

    goto :goto_0

    .line 1929
    :cond_3
    new-array v5, v9, [Lcom/meizu/media/camera/media/ImagePlane;

    const/4 v6, 0x0

    new-instance v7, Lcom/meizu/media/camera/media/ImagePlane;

    array-length v8, p1

    invoke-direct {v7, p1, v9, v8}, Lcom/meizu/media/camera/media/ImagePlane;-><init>([BII)V

    aput-object v7, v5, v6

    .line 1932
    .local v5, "rawPicturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    iget v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    .line 1933
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1934
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_5

    .line 1937
    if-lez v2, :cond_4

    .line 1938
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    :cond_4
    aget-object v6, v5, v2

    invoke-virtual {v6}, Lcom/meizu/media/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1935
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1941
    :cond_5
    const-string v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onDngImageReceived() - Index : "

    iget v8, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1945
    iget v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_6

    iget v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    iget v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_6

    .line 1947
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onDngImageReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1952
    :cond_6
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 1953
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_7

    .line 1955
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1956
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onDngImageReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1961
    :cond_7
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/meizu/media/camera/media/ImagePlane;

    .line 1962
    .local v4, "picturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    if-nez v4, :cond_8

    .line 1964
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onDngImageReceived() - Wait for picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1970
    :cond_8
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 1973
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    invoke-direct {p0, v0, v4, v5}, Lcom/meizu/media/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/meizu/media/camera/media/ImagePlane;[Lcom/meizu/media/camera/media/ImagePlane;)V

    goto/16 :goto_0

    .line 1905
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onDngMetadataReceived(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V
    .locals 6
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p3, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1979
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1981
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "onDngMetadataReceived() - Do not need raw capture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    :goto_0
    return-void

    .line 1986
    :cond_1
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/OperationState;

    .line 1987
    .local v0, "captureState":Lcom/meizu/media/camera/OperationState;
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1993
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDngMetadataReceived() - Capture state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1996
    :pswitch_0
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v3, :cond_2

    .line 1998
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "onDngMetadataReceived() - No capture handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2003
    :cond_2
    iput-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2006
    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    .line 2009
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "onDngMetadataReceived() - Index : "

    iget v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2012
    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedCount:I

    iget v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v3, v4, :cond_3

    .line 2014
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "onDngMetadataReceived() - Unexpected call-back, drop"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2020
    :cond_3
    const/4 v2, 0x0

    .line 2022
    .local v2, "rawPicturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/meizu/media/camera/media/ImagePlane;

    .line 2023
    .local v1, "picturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    if-nez v1, :cond_4

    .line 2025
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "onDngMetadataReceived() - Wait for picture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v3, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2031
    :cond_4
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "rawPicturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    check-cast v2, [Lcom/meizu/media/camera/media/ImagePlane;

    .line 2032
    .restart local v2    # "rawPicturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    if-nez v2, :cond_5

    .line 2034
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "onDngMetadataReceived() - Wait for raw picture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v3, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2040
    :cond_5
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "picturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    check-cast v1, [Lcom/meizu/media/camera/media/ImagePlane;

    .line 2043
    .restart local v1    # "picturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    invoke-direct {p0, p2, v1, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/meizu/media/camera/media/ImagePlane;[Lcom/meizu/media/camera/media/ImagePlane;)V

    goto/16 :goto_0

    .line 1987
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onFaceDetection([Landroid/hardware/Camera$Face;)V
    .locals 5
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 2050
    iget-boolean v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    if-nez v3, :cond_1

    .line 2074
    :cond_0
    :goto_0
    return-void

    .line 2054
    :cond_1
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceListIndex:I

    aget-object v0, v3, v4

    .line 2055
    .local v0, "currentFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$Face;>;"
    if-eqz p1, :cond_2

    array-length v3, p1

    if-nez v3, :cond_3

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2059
    :cond_3
    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceListIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceListIndex:I

    .line 2060
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceListIndex:I

    aget-object v2, v3, v4

    .line 2061
    .local v2, "newFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$Face;>;"
    if-eqz p1, :cond_4

    array-length v3, p1

    if-lez v3, :cond_4

    .line 2063
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 2064
    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/meizu/media/camera/Camera$Face;->obtain(Landroid/hardware/Camera$Face;)Lcom/meizu/media/camera/Camera$Face;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2063
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2068
    .end local v1    # "i":I
    :cond_4
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2071
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_5

    .line 2072
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/Camera$Face;

    invoke-virtual {v3}, Lcom/meizu/media/camera/Camera$Face;->recycle()V

    .line 2071
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2073
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/meizu/media/camera/media/ImagePlane;[Lcom/meizu/media/camera/media/ImagePlane;)V
    .locals 20
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "picturePlanes"    # [Lcom/meizu/media/camera/media/ImagePlane;
    .param p3, "rawPicturePlanes"    # [Lcom/meizu/media/camera/media/ImagePlane;

    .prologue
    .line 2087
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/meizu/media/camera/OperationState;

    .line 2088
    .local v18, "captureState":Lcom/meizu/media/camera/OperationState;
    sget-object v19, Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;->FRAME_COUNT_REACHED:Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;

    .line 2091
    .local v19, "takingPictureResult":Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    if-nez v2, :cond_4

    .line 2092
    :cond_0
    sget-object v19, Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_JPEG:Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;

    .line 2101
    :cond_1
    :goto_0
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$LegacyCameraImpl$TakingPictureResult:[I

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2112
    .local v8, "takenTime":J
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PICTURE_FORMAT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2113
    .local v4, "pictureFormat":I
    sget-object v10, Lcom/meizu/media/camera/LegacyCameraImpl;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v9}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/meizu/media/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/meizu/media/camera/CameraCaptureEventArgs;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2115
    invoke-direct/range {p0 .. p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2117
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Size;

    .line 2118
    .local v13, "sensorSize":Landroid/util/Size;
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictureCount:I

    add-int/lit8 v11, v3, -0x1

    const/16 v12, 0x20

    move-object/from16 v14, p3

    move-object/from16 v15, p1

    move-wide/from16 v16, v8

    invoke-static/range {v10 .. v17}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/meizu/media/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/meizu/media/camera/CameraCaptureEventArgs;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2125
    .end local v4    # "pictureFormat":I
    .end local v8    # "takenTime":J
    .end local v13    # "sensorSize":Landroid/util/Size;
    :cond_2
    :goto_1
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$LegacyCameraImpl$TakingPictureResult:[I

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 2157
    :cond_3
    :goto_2
    return-void

    .line 2093
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_6

    .line 2094
    :cond_5
    sget-object v19, Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_RAW:Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;

    goto/16 :goto_0

    .line 2095
    :cond_6
    sget-object v2, Lcom/meizu/media/camera/OperationState;->STOPPING:Lcom/meizu/media/camera/OperationState;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_7

    .line 2096
    sget-object v19, Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;->CAPTURE_STOPPING:Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;

    goto/16 :goto_0

    .line 2097
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ge v2, v3, :cond_1

    .line 2098
    :cond_8
    sget-object v19, Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;->TAKE_NEXT_PICTURE:Lcom/meizu/media/camera/LegacyCameraImpl$TakingPictureResult;

    goto/16 :goto_0

    .line 2106
    :pswitch_0
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;I)Lcom/meizu/media/camera/CameraCaptureEventArgs;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_1

    .line 2128
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPictureReceived() - Frame count reached, start completing capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto :goto_2

    .line 2133
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    if-eqz v2, :cond_3

    .line 2135
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    .line 2136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPictureReceived() - Take next picture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    invoke-direct/range {p0 .. p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->takePicture()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPictureReceived() - Cannot take next picture, stop"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto/16 :goto_2

    .line 2147
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPictureReceived() - Capture failed, start completing capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto/16 :goto_2

    .line 2152
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "onPictureReceived() - Already stop capture, start completing capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    invoke-direct/range {p0 .. p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->onCaptureCompleted()V

    goto/16 :goto_2

    .line 2101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2125
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private onPictureReceived([BLandroid/hardware/Camera;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2163
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v6, :cond_0

    .line 2165
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onPictureReceived() - No capture handle"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    :goto_0
    return-void

    .line 2168
    :cond_0
    sget-object v6, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/OperationState;

    .line 2169
    .local v1, "captureState":Lcom/meizu/media/camera/OperationState;
    sget-object v6, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2175
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPictureReceived() - Capture state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2180
    :pswitch_0
    if-nez p1, :cond_1

    .line 2182
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onPictureReceived() - data is null"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    invoke-direct {p0, v8, v8, v8}, Lcom/meizu/media/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/meizu/media/camera/media/ImagePlane;[Lcom/meizu/media/camera/media/ImagePlane;)V

    goto :goto_0

    .line 2188
    :cond_1
    new-array v4, v9, [Lcom/meizu/media/camera/media/ImagePlane;

    const/4 v6, 0x0

    new-instance v7, Lcom/meizu/media/camera/media/ImagePlane;

    array-length v8, p1

    invoke-direct {v7, p1, v9, v8}, Lcom/meizu/media/camera/media/ImagePlane;-><init>([BII)V

    aput-object v7, v4, v6

    .line 2191
    .local v4, "picturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    iget v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    .line 2192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2193
    .local v3, "logBuffer":Ljava/lang/StringBuilder;
    const-string v6, "{ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2194
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 2196
    if-lez v2, :cond_2

    .line 2197
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    :cond_2
    aget-object v6, v4, v2

    invoke-virtual {v6}, Lcom/meizu/media/camera/media/ImagePlane;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2194
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2200
    :cond_3
    const-string v6, " }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onPictureReceived() - Index : "

    iget v8, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, ", picture data size : "

    invoke-static {v6, v7, v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2204
    iget v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictureCount:I

    iget v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v6, v7, :cond_4

    .line 2206
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onPictureReceived() - Unexpected picture, drop"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2211
    :cond_4
    const/4 v0, 0x0

    .line 2212
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    const/4 v5, 0x0

    .line 2214
    .local v5, "rawPicturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->isRawCaptureNeeded()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2216
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2217
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    if-nez v0, :cond_5

    .line 2219
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2220
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onPictureReceived() - Received picture before capture completed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2224
    :cond_5
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedRawPictures:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "rawPicturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    check-cast v5, [Lcom/meizu/media/camera/media/ImagePlane;

    .line 2225
    .restart local v5    # "rawPicturePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    if-nez v5, :cond_6

    .line 2227
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "onPictureReceived() - Wait for raw picture"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedPictures:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2232
    :cond_6
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ReceivedCaptureCompletedResults:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2236
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    :cond_7
    invoke-direct {p0, v0, v4, v5}, Lcom/meizu/media/camera/LegacyCameraImpl;->onPictureReceived(Landroid/hardware/camera2/CaptureResult;[Lcom/meizu/media/camera/media/ImagePlane;[Lcom/meizu/media/camera/media/ImagePlane;)V

    goto/16 :goto_0

    .line 2169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onPostViewReceived([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2081
    return-void
.end method

.method private onRawReceived([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2245
    return-void
.end method

.method private onShutterReceived()V
    .locals 4

    .prologue
    .line 2252
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/OperationState;

    .line 2253
    .local v0, "captureState":Lcom/meizu/media/camera/OperationState;
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2259
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterReceived() - Capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    :cond_0
    :goto_0
    return-void

    .line 2262
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v1, :cond_1

    .line 2264
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onShutterReceived() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2269
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onShutterReceived() - Index : "

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2270
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    .line 2273
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    iget v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-le v1, v2, :cond_2

    .line 2275
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onShutterReceived() - Unexpected call-back, drop"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2280
    :cond_2
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;I)Lcom/meizu/media/camera/CameraCaptureEventArgs;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2285
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ShutterReceivedCount:I

    iget v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    if-ge v1, v2, :cond_0

    .line 2287
    :cond_3
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onShutterReceived() - Take next picture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    .line 2289
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->takePicture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2291
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "onShutterReceived() - Cannot take next picture on shutter"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TakePictureFailedOnShutter:Z

    goto :goto_0

    .line 2253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private openInternal(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 2348
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openInternal() - Open camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' [Start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    .line 2350
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openInternal() - Open camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' [End]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2360
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2352
    :catch_0
    move-exception v0

    .line 2354
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openInternal() - Fail to start opening camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2355
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;

    const/4 v3, -0x4

    invoke-direct {v2, p0, v3}, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;-><init>(Lcom/meizu/media/camera/Camera;I)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2356
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareCaptureParameters()Z
    .locals 14

    .prologue
    .line 2368
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v9, :cond_0

    .line 2370
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v10, "prepareCaptureParameters() - Camera parameters is null"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    const/4 v9, 0x0

    .line 2441
    :goto_0
    return v9

    .line 2377
    :cond_0
    :try_start_0
    iget v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 2378
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v10, "sports"

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2381
    :cond_1
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v8

    .line 2382
    .local v8, "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v7, 0x0

    .line 2383
    .local v7, "thumbSize":Landroid/util/Size;
    const/4 v6, 0x0

    .line 2384
    .local v6, "thumbPixelCount":I
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    .line 2386
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-static {v9}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v4

    .line 2387
    .local v4, "ratio":Lcom/oneplus/util/AspectRatio;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 2389
    new-instance v5, Landroid/util/Size;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v10, v9, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v5, v10, v9}, Landroid/util/Size;-><init>(II)V

    .line 2390
    .local v5, "size":Landroid/util/Size;
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v10

    mul-int v3, v9, v10

    .line 2391
    .local v3, "pixelCount":I
    invoke-static {v5}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v9

    if-ne v9, v4, :cond_2

    if-le v3, v6, :cond_2

    .line 2393
    move-object v7, v5

    .line 2394
    move v6, v3

    .line 2387
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2398
    .end local v1    # "i":I
    .end local v3    # "pixelCount":I
    .end local v4    # "ratio":Lcom/oneplus/util/AspectRatio;
    .end local v5    # "size":Landroid/util/Size;
    :cond_3
    if-eqz v7, :cond_5

    .line 2399
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v10, "prepareCaptureParameters() - Thumbnail image size : "

    invoke-static {v9, v10, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2405
    :goto_2
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 2408
    iget v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 2410
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v10, "prepareCaptureParameters() - JPEG quality : "

    iget v11, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2411
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    iget v10, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2420
    :goto_3
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->calculateJpegOrientation()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2423
    sget-object v9, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v9}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 2424
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_4

    .line 2426
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 2427
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 2428
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 2429
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 2433
    :cond_4
    iget-boolean v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsMirrored:Z

    invoke-direct {p0, v9}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyMirrorMode(Z)Z

    .line 2441
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2402
    .end local v2    # "location":Landroid/location/Location;
    :cond_5
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    const/16 v11, 0x64

    const/16 v12, 0x64

    const/4 v13, 0x1

    invoke-static {v9, v10, v11, v12, v13}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v7

    .line 2403
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prepareCaptureParameters() - Cannot find thumbnail image size with same aspect ratio, use "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2435
    .end local v6    # "thumbPixelCount":I
    .end local v7    # "thumbSize":Landroid/util/Size;
    .end local v8    # "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catch_0
    move-exception v0

    .line 2437
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v10, "prepareCaptureParameters() - Error when preparing parameters"

    invoke-static {v9, v10, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2438
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2415
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "thumbPixelCount":I
    .restart local v7    # "thumbSize":Landroid/util/Size;
    .restart local v8    # "thumbSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_6
    :try_start_1
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v10, "prepareCaptureParameters() - JPEG quality for burst : "

    const/16 v11, 0x5a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2416
    iget-object v9, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    const/16 v10, 0x5a

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private preparePreviewParameters()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2449
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyPreviewFpsRange(Landroid/util/Range;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2451
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "preparePreviewParameters() - Error when apply preview FPS range"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2532
    :goto_0
    return v1

    .line 2456
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyPreviewSize(Landroid/util/Size;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2458
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "preparePreviewParameters() - Error when apply preview size"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2459
    goto :goto_0

    .line 2463
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applySceneMode(I)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 2464
    goto :goto_0

    .line 2467
    :cond_2
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyExposureCompensation(F)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 2468
    goto :goto_0

    .line 2471
    :cond_3
    iget-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyAeLock(Z)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 2472
    goto :goto_0

    .line 2475
    :cond_4
    iget-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyAwbLock(Z)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 2476
    goto :goto_0

    .line 2479
    :cond_5
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FlashMode:Lcom/meizu/media/camera/FlashMode;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyFlashMode(Lcom/meizu/media/camera/FlashMode;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 2480
    goto :goto_0

    .line 2483
    :cond_6
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusMode:Lcom/meizu/media/camera/FocusMode;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyFocusMode(Lcom/meizu/media/camera/FocusMode;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    .line 2484
    goto :goto_0

    .line 2487
    :cond_7
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyAeRegions(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyAfRegions(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    move v1, v2

    .line 2488
    goto :goto_0

    .line 2491
    :cond_9
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 2492
    .local v0, "pictureSize":Landroid/util/Size;
    iget-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v1, :cond_a

    .line 2494
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 2495
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyVideoSize(Landroid/util/Size;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2497
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "preparePreviewParameters() - Error when apply video size"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2498
    goto/16 :goto_0

    .line 2501
    :cond_a
    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyPictureSize(Landroid/util/Size;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2503
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "preparePreviewParameters() - Error when apply picture size"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2504
    goto/16 :goto_0

    .line 2508
    :cond_b
    iget-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyRecordingMode(Z)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2510
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "preparePreviewParameters() - Error when apply recording mode"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2511
    goto/16 :goto_0

    .line 2515
    :cond_c
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyZoom(F)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2517
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "preparePreviewParameters() - Error when apply zoom"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2518
    goto/16 :goto_0

    .line 2522
    :cond_d
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CONTROL_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2524
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyManualCapture(Z)Z

    .line 2525
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AwbMode:I

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyAwbMode(I)Z

    .line 2526
    iget-wide v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ExposureTime:J

    invoke-direct {p0, v2, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyExposureTime(J)Z

    .line 2527
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusValue:F

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyFocusPosition(F)Z

    .line 2528
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ISOValue:I

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyISO(I)Z

    .line 2532
    :cond_e
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private reconnectCamera()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2539
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 2551
    :goto_0
    return v1

    .line 2544
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2551
    const/4 v1, 0x1

    goto :goto_0

    .line 2546
    :catch_0
    move-exception v0

    .line 2548
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "reconnectCamera() - Error when reconnect"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private removePreviewCallbacks()V
    .locals 2

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 2561
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "removePreviewCallbacks() - Camera is released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    :goto_0
    return-void

    .line 2566
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsPreviewCallbackAdded:Z

    goto :goto_0
.end method

.method private setAWBModeProp(I)Z
    .locals 5
    .param p1, "awbMode"    # I

    .prologue
    .line 2729
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2730
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2731
    iget v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AwbMode:I

    if-ne v2, p1, :cond_0

    .line 2732
    const/4 v2, 0x1

    .line 2751
    :goto_0
    return v2

    .line 2733
    :cond_0
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2734
    .local v0, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2736
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAWBModeProp() - Invalid awb mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2737
    const/4 v2, 0x0

    goto :goto_0

    .line 2740
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setAWBModeProp() - Awb mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2743
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AwbMode:I

    .line 2744
    .local v1, "oldAwbMode":I
    iput p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AwbMode:I

    .line 2747
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyAwbMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2748
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2751
    :cond_2
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private setAeLockProp(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2635
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2636
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2637
    iget-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    if-ne v1, p1, :cond_0

    .line 2646
    :goto_0
    return v0

    .line 2641
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyAeLock(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2642
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2645
    :cond_1
    iput-boolean p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    .line 2646
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setAeRegionsProp(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2674
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2675
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2676
    if-nez p1, :cond_0

    .line 2677
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2678
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2679
    const/4 v1, 0x0

    .line 2693
    :goto_0
    return v1

    .line 2682
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    .line 2683
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2684
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    .line 2689
    :goto_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyAeRegions(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2690
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2693
    :cond_2
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    invoke-virtual {p0, v1, v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2686
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    goto :goto_1
.end method

.method private setAfRegionsProp(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2702
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;"
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2703
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2704
    if-nez p1, :cond_0

    .line 2705
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2706
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2707
    const/4 v1, 0x0

    .line 2721
    :goto_0
    return v1

    .line 2710
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    .line 2711
    .local v0, "oldRegions":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2712
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    .line 2717
    :goto_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyAfRegions(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2718
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2721
    :cond_2
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    invoke-virtual {p0, v1, v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2714
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    goto :goto_1
.end method

.method private setAwbLockProp(Z)Z
    .locals 3
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2654
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2655
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2656
    iget-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    if-ne v1, p1, :cond_0

    .line 2665
    :goto_0
    return v0

    .line 2660
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyAwbLock(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2661
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2664
    :cond_1
    iput-boolean p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    .line 2665
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setCameraDisplayOrientation()V
    .locals 9

    .prologue
    .line 2758
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v6, :cond_0

    .line 2760
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v7, "setCameraDisplayOrientation() - Camera is released"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    :goto_0
    return-void

    .line 2763
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2764
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_2

    instance-of v6, v1, Landroid/app/Activity;

    if-eqz v6, :cond_2

    move-object v0, v1

    .line 2766
    check-cast v0, Landroid/app/Activity;

    .line 2767
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 2768
    .local v5, "rotation":I
    const/4 v2, 0x0

    .line 2769
    .local v2, "degrees":I
    packed-switch v5, :pswitch_data_0

    .line 2785
    :goto_1
    sget-object v6, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2786
    .local v3, "orientation":I
    sget-object v6, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v6, v7, :cond_1

    .line 2788
    add-int v6, v3, v2

    rem-int/lit16 v4, v6, 0x168

    .line 2789
    .local v4, "result":I
    rsub-int v6, v4, 0x168

    rem-int/lit16 v4, v6, 0x168

    .line 2793
    :goto_2
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v6, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 2772
    .end local v3    # "orientation":I
    .end local v4    # "result":I
    :pswitch_0
    const/4 v2, 0x0

    .line 2773
    goto :goto_1

    .line 2775
    :pswitch_1
    const/16 v2, 0x5a

    .line 2776
    goto :goto_1

    .line 2778
    :pswitch_2
    const/16 v2, 0xb4

    .line 2779
    goto :goto_1

    .line 2781
    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_1

    .line 2792
    .restart local v3    # "orientation":I
    :cond_1
    sub-int v6, v3, v2

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v4, v6, 0x168

    .restart local v4    # "result":I
    goto :goto_2

    .line 2796
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "degrees":I
    .end local v3    # "orientation":I
    .end local v4    # "result":I
    .end local v5    # "rotation":I
    :cond_2
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCameraDisplayOrientation() - Invalid context: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDigitalZoomProp(F)Z
    .locals 3
    .param p1, "zoom"    # F

    .prologue
    const/4 v0, 0x0

    .line 2803
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2804
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2805
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2812
    :cond_0
    :goto_0
    return v0

    .line 2807
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoomRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2809
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    .line 2810
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyZoom(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2811
    :cond_3
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2812
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DigitalZoom:Ljava/lang/Float;

    invoke-super {p0, v0, v1}, Lcom/meizu/media/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setExposureCompensationProp(F)Z
    .locals 8
    .param p1, "ev"    # F

    .prologue
    .line 2820
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2821
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2824
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 2825
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2826
    .local v2, "step":F
    div-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    mul-float p1, v3, v2

    .line 2827
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2828
    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    .line 2829
    .local v0, "oldEv":F
    sub-float v3, v0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 2830
    const/4 v3, 0x0

    .line 2838
    :goto_0
    return v3

    .line 2833
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyExposureCompensation(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2834
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2837
    :cond_1
    iput p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    .line 2838
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private setExposureTimeProp(J)Z
    .locals 7
    .param p1, "exposureTime"    # J

    .prologue
    .line 2846
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2847
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2848
    iget-wide v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ExposureTime:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_0

    .line 2849
    const/4 v1, 0x1

    .line 2876
    :goto_0
    return v1

    .line 2850
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2851
    .local v0, "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    cmp-long v1, p1, v4

    if-eqz v1, :cond_1

    .line 2853
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-lez v1, :cond_3

    .line 2855
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "setExposureTimeProp() - Exposure time is too large, trim to upper"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2865
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "setExposureTimeProp() - Exposure time : "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2868
    iget-wide v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ExposureTime:J

    .line 2869
    .local v2, "oldExposureTime":J
    iput-wide p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ExposureTime:J

    .line 2872
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyExposureTime(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2873
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2876
    :cond_2
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2858
    .end local v2    # "oldExposureTime":J
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-gez v1, :cond_1

    .line 2860
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "setExposureTimeProp() - Exposure time is too small, trim to lower"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_1
.end method

.method private setFaceDetectionProp(Z)Z
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2884
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2885
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2886
    iget-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    if-ne v1, p1, :cond_0

    .line 2894
    :goto_0
    return v0

    .line 2890
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyFaceDetection(Z)Z

    .line 2893
    iput-boolean p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    .line 2894
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setFlashModeProp(Lcom/meizu/media/camera/FlashMode;)Z
    .locals 5
    .param p1, "flashMode"    # Lcom/meizu/media/camera/FlashMode;

    .prologue
    const/4 v2, 0x0

    .line 2902
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2903
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FlashMode:Lcom/meizu/media/camera/FlashMode;

    .line 2904
    .local v0, "oldFlashMode":Lcom/meizu/media/camera/FlashMode;
    if-ne v0, p1, :cond_0

    move v1, v2

    .line 2918
    :goto_0
    return v1

    .line 2907
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/meizu/media/camera/FlashMode;->OFF:Lcom/meizu/media/camera/FlashMode;

    if-eq p1, v1, :cond_1

    .line 2909
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setFlashModeProp() - No flash on camera \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2910
    goto :goto_0

    .line 2913
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyFlashMode(Lcom/meizu/media/camera/FlashMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2914
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2916
    :cond_2
    iput-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FlashMode:Lcom/meizu/media/camera/FlashMode;

    .line 2918
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setFocusModeProp(Lcom/meizu/media/camera/FocusMode;)Z
    .locals 6
    .param p1, "focusMode"    # Lcom/meizu/media/camera/FocusMode;

    .prologue
    const/4 v3, 0x0

    .line 2926
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2927
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2928
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusMode:Lcom/meizu/media/camera/FocusMode;

    .line 2929
    .local v0, "oldFocusMode":Lcom/meizu/media/camera/FocusMode;
    if-ne v0, p1, :cond_0

    move v2, v3

    .line 2951
    :goto_0
    return v2

    .line 2931
    :cond_0
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2933
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFocusModeProp() - Invalid focus mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 2934
    goto :goto_0

    .line 2938
    :cond_1
    iput-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusMode:Lcom/meizu/media/camera/FocusMode;

    .line 2939
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyFocusMode(Lcom/meizu/media/camera/FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2941
    sget-object v2, Lcom/meizu/media/camera/FocusMode;->MANUAL:Lcom/meizu/media/camera/FocusMode;

    if-ne p1, v2, :cond_2

    .line 2943
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 2944
    .local v1, "oldFocusState":Lcom/meizu/media/camera/FocusState;
    sget-object v2, Lcom/meizu/media/camera/FocusState;->INACTIVE:Lcom/meizu/media/camera/FocusState;

    iput-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 2945
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {p0, v2, v1, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2947
    .end local v1    # "oldFocusState":Lcom/meizu/media/camera/FocusState;
    :cond_2
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2951
    :cond_3
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private setFocusProp(F)Z
    .locals 5
    .param p1, "focusValue"    # F

    .prologue
    .line 2959
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2960
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2961
    iget v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusValue:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 2962
    const/4 v2, 0x1

    .line 2989
    :goto_0
    return v2

    .line 2963
    :cond_0
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2964
    .local v0, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    .line 2966
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    .line 2968
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setFocusProp() - Focus value is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2978
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setFocusProp() - Focus : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2981
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusValue:F

    .line 2982
    .local v1, "oldFocus":F
    iput p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusValue:F

    .line 2985
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyFocusPosition(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2986
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 2989
    :cond_2
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 2971
    .end local v1    # "oldFocus":F
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 2973
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setFocusProp() - Focus value is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_1
.end method

.method private setISOProp(I)Z
    .locals 5
    .param p1, "iso"    # I

    .prologue
    .line 2997
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2998
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2999
    iget v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ISOValue:I

    if-ne v2, p1, :cond_0

    .line 3000
    const/4 v2, 0x1

    .line 3027
    :goto_0
    return v2

    .line 3001
    :cond_0
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 3002
    .local v0, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 3004
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_3

    .line 3006
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setISOProp() - ISO value is too large, trim to upper"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3016
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setISOProp() - ISO value : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3019
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ISOValue:I

    .line 3020
    .local v1, "oldIsoValue":I
    iput p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ISOValue:I

    .line 3023
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyISO(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3024
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3027
    :cond_2
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 3009
    .end local v1    # "oldIsoValue":I
    :cond_3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 3011
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setISOProp() - ISO value is too small, trim to lower"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1
.end method

.method private setJpegQualityProp(I)Z
    .locals 2
    .param p1, "quality"    # I

    .prologue
    .line 3034
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3035
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 3036
    :cond_0
    const/4 v0, 0x0

    .line 3038
    :goto_0
    return v0

    .line 3037
    :cond_1
    iput p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_JpegQuality:I

    .line 3038
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/meizu/media/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setManualCaptureProp(Ljava/lang/Boolean;)Z
    .locals 2
    .param p1, "isManual"    # Ljava/lang/Boolean;

    .prologue
    .line 3046
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3047
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3048
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3049
    .local v0, "oldIsManual":Z
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3050
    const/4 v1, 0x0

    .line 3057
    :goto_0
    return v1

    .line 3053
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyManualCapture(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3054
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3057
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v1, p1}, Lcom/meizu/media/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setMirrorModeProp(Ljava/lang/Boolean;)Z
    .locals 3
    .param p1, "isMirrored"    # Ljava/lang/Boolean;

    .prologue
    .line 3065
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3066
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3067
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3068
    .local v0, "oldIsMirrored":Z
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3069
    const/4 v1, 0x0

    .line 3079
    :goto_0
    return v1

    .line 3072
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsMirrored:Z

    .line 3075
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyMirrorMode(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3076
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3079
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setPictureSizeProp(Landroid/util/Size;)Z
    .locals 4
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 3087
    if-nez p1, :cond_0

    .line 3088
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No picture size specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3089
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3091
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPictureSizeProp() - Size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not contained in size list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid picture size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3094
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3095
    const/4 v1, 0x0

    .line 3103
    :goto_0
    return v1

    .line 3098
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPictureSizeProp() - Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3100
    .local v0, "prevSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    .line 3103
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setPreviewFpsRangeProp(Landroid/util/Range;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3111
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3112
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3115
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    invoke-virtual {v1, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3116
    :cond_0
    const/4 v1, 0x0

    .line 3126
    :goto_0
    return v1

    .line 3119
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewFpsRangeProp() - FPS range : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 3121
    .local v0, "oldRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    .line 3122
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyPreviewFpsRange(Landroid/util/Range;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3123
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3126
    :cond_2
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setPreviewReceiverProp(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 3134
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3135
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 3136
    .local v0, "prevReceiver":Ljava/lang/Object;
    if-ne v0, p1, :cond_0

    .line 3137
    const/4 v1, 0x0

    .line 3144
    :goto_0
    return v1

    .line 3138
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-eq v1, v2, :cond_1

    .line 3140
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewReceiver() - Preview state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot change preview receiver when preview state is not STOPPED."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3144
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v1, p1}, Lcom/meizu/media/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setPreviewSizeProp(Landroid/util/Size;)Z
    .locals 6
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v3, 0x0

    .line 3152
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3153
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3156
    if-nez p1, :cond_0

    .line 3157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No preview size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3158
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 3159
    .local v1, "oldSize":Landroid/util/Size;
    invoke-virtual {p1, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 3193
    :goto_0
    return v2

    .line 3161
    :cond_1
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3163
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreviewSizeProp() - Invalid preview size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 3164
    goto :goto_0

    .line 3169
    :cond_2
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 3178
    :pswitch_0
    const/4 v0, 0x0

    .line 3183
    .local v0, "needRestartPreview":Z
    :goto_1
    iput-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    .line 3186
    if-eqz v0, :cond_3

    .line 3188
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setPreviewSizeProp() - Restart preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->startPreviewInternal()Z

    .line 3193
    :cond_3
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 3173
    .end local v0    # "needRestartPreview":Z
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setPreviewSizeProp() - Stop preview to change preview size"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->stopPreviewInternal()V

    .line 3175
    const/4 v0, 0x1

    .line 3176
    .restart local v0    # "needRestartPreview":Z
    goto :goto_1

    .line 3169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRawCaptureProp(Z)Z
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 3523
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRawCaptureProp() - isEnabled is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3524
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3525
    iget-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    if-ne v1, p1, :cond_0

    .line 3529
    :goto_0
    return v0

    .line 3527
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    .line 3529
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setRecordingModeProp(Z)Z
    .locals 5
    .param p1, "isRecordingMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3201
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3202
    iget-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-ne v1, p1, :cond_0

    .line 3238
    :goto_0
    return v2

    .line 3204
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-eq v1, v3, :cond_1

    .line 3206
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecordingModeProp() - Current capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot change recording mode due to current capture state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3210
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRecordingModeProp() - Recording mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 3223
    :pswitch_0
    const/4 v0, 0x0

    .line 3228
    .local v0, "needRestartPreview":Z
    :goto_1
    iput-boolean p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    .line 3231
    if-eqz v0, :cond_2

    .line 3233
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setRecordingModeProp() - Restart preview"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->startPreview(I)Z

    .line 3238
    :cond_2
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 3218
    .end local v0    # "needRestartPreview":Z
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setRecordingModeProp() - Stop preview to change recording mode"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->stopPreview(I)V

    .line 3220
    const/4 v0, 0x1

    .line 3221
    .restart local v0    # "needRestartPreview":Z
    goto :goto_1

    :cond_3
    move v1, v2

    .line 3238
    goto :goto_2

    .line 3214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSceneModeProp(I)Z
    .locals 6
    .param p1, "sceneMode"    # I

    .prologue
    const/4 v2, 0x0

    .line 3246
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3247
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3248
    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_SceneMode:I

    if-ne v3, p1, :cond_0

    .line 3266
    :goto_0
    return v2

    .line 3252
    :cond_0
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3253
    .local v1, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 3255
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSceneModeProp() - Invalid scene mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3259
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setSceneModeProp() - Scene mode : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3261
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->applySceneMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3262
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3264
    :cond_2
    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_SceneMode:I

    .line 3265
    .local v0, "oldSceneMode":I
    iput p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_SceneMode:I

    .line 3266
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private setVideoSizeProp(Landroid/util/Size;)Z
    .locals 5
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v2, 0x0

    .line 3274
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3275
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3276
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 3288
    :cond_0
    :goto_0
    :pswitch_0
    if-nez p1, :cond_1

    .line 3289
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No video size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3280
    :pswitch_1
    iget-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    if-eqz v1, :cond_0

    .line 3281
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "setVideoSizeProp() - Apply video size when starting preview next time"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3290
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3292
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVideoSizeProp() - Invalid video size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3303
    :goto_1
    return v1

    .line 3295
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 3296
    goto :goto_1

    .line 3298
    :cond_3
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "setVideoSizeProp() - Video size : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3301
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3302
    .local v0, "oldSize":Landroid/util/Size;
    iput-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    .line 3303
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 3276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startPreviewDirectlyInternal()Z
    .locals 4

    .prologue
    .line 3428
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewInternal() - Start preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' [Start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 3430
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewInternal() - Start preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' [End]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3439
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3432
    :catch_0
    move-exception v0

    .line 3434
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewInternal() - Fail to start preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3435
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startPreviewInternal()Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 3447
    sget-object v7, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    .line 3448
    .local v2, "receiver":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 3517
    :cond_0
    :goto_0
    return v6

    .line 3452
    :cond_1
    instance-of v7, v2, Landroid/view/SurfaceHolder;

    if-eqz v7, :cond_2

    move-object v1, v2

    .line 3454
    check-cast v1, Landroid/view/SurfaceHolder;

    .line 3455
    .local v1, "holder":Landroid/view/SurfaceHolder;
    const/4 v3, 0x0

    .line 3456
    .local v3, "retryCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3461
    .local v4, "startTimeMillis":J
    :goto_1
    if-nez v3, :cond_3

    .line 3462
    :try_start_0
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v8, "startPreviewInternal() - Set preview display"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3465
    :goto_2
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v7, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3491
    .end local v1    # "holder":Landroid/view/SurfaceHolder;
    .end local v3    # "retryCount":I
    .end local v4    # "startTimeMillis":J
    :cond_2
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->preparePreviewParameters()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3493
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v8, "startPreviewInternal() - Error when preparing preview parameters"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3464
    .restart local v1    # "holder":Landroid/view/SurfaceHolder;
    .restart local v3    # "retryCount":I
    .restart local v4    # "startTimeMillis":J
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v8, "startPreviewInternal() - Set preview display, retry: "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3468
    :catch_0
    move-exception v0

    .line 3470
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 3474
    const-wide/16 v8, 0xa

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 3478
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3482
    :cond_4
    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v8, "startPreviewInternal() - Error when set preview display, stop retry"

    invoke-static {v7, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3497
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "holder":Landroid/view/SurfaceHolder;
    .end local v3    # "retryCount":I
    .end local v4    # "startTimeMillis":J
    :cond_5
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z

    .line 3500
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->addPreviewCallbacks()V

    .line 3503
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->startPreviewDirectlyInternal()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3507
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 3508
    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 3511
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyAeCallback()Z

    .line 3514
    iget-boolean v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-direct {p0, v6}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyFaceDetection(Z)Z

    .line 3517
    const/4 v6, 0x1

    goto :goto_0

    .line 3476
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "holder":Landroid/view/SurfaceHolder;
    .restart local v3    # "retryCount":I
    .restart local v4    # "startTimeMillis":J
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method private stopCaptureInternal(Z)V
    .locals 3
    .param p1, "abortCaptures"    # Z

    .prologue
    .line 3567
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    if-nez v1, :cond_1

    .line 3569
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "stopCaptureInternal() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3590
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3572
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/OperationState;

    .line 3573
    .local v0, "captureState":Lcom/meizu/media/camera/OperationState;
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3585
    :pswitch_1
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/OperationState;->STOPPING:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3588
    if-eqz p1, :cond_0

    .line 3589
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->onCaptureCompleted()V

    goto :goto_0

    .line 3573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stopPreviewDirectlyInternal()V
    .locals 4

    .prologue
    .line 3642
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPreviewDirectlyInternal() - Stop preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' [Start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3643
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 3644
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPreviewDirectlyInternal() - Stop preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' [End]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3651
    :goto_0
    return-void

    .line 3646
    :catch_0
    move-exception v0

    .line 3648
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPreviewDirectlyInternal() - Fail to stop preview \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private stopPreviewInternal()V
    .locals 3

    .prologue
    .line 3658
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->removePreviewCallbacks()V

    .line 3659
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3662
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->stopPreviewDirectlyInternal()V

    .line 3665
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3666
    .local v0, "handler":Landroid/os/Handler;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3667
    return-void
.end method

.method private takePicture()Z
    .locals 6

    .prologue
    .line 3705
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_RawCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PostviewCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3713
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3707
    :catch_0
    move-exception v0

    .line 3709
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - Error when taking picture"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3710
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateParameters()V
    .locals 3

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 3740
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "updateParameters() - Camera is released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3762
    :cond_0
    :goto_0
    return-void

    .line 3745
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    .line 3748
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->checkPreviewFPSRanges()V

    .line 3749
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->checkDefaultPreviewFPSRange()V

    .line 3752
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->checkZoomRange()V

    .line 3755
    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_JpegQuality:I

    if-gez v0, :cond_0

    .line 3757
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v0

    iput v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_JpegQuality:I

    .line 3758
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "updateParameters() - Default JPEG quality : "

    iget v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3759
    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_JpegQuality:I

    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 3760
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, v1, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    iget v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsPreviewCallbackAdded:Z

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->addPreviewCallbacks()V

    .line 269
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/BaseCamera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 270
    return-void
.end method

.method public bindMediaRecorder(Landroid/media/MediaRecorder;I)Z
    .locals 5
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 906
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 907
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 908
    if-nez p1, :cond_0

    .line 910
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "bindMediaRecorder() - Recorder is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :goto_0
    return v1

    .line 913
    :cond_0
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-eq v3, v4, :cond_1

    .line 915
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindMediaRecorder() - Current capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 920
    :cond_1
    iput-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 925
    :try_start_0
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    .line 928
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {p1, v3}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 931
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 941
    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "bindMediaRecorder() - Cannot bind media recorder"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 936
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->reconnectCamera()Z

    .line 937
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    goto :goto_0
.end method

.method public calculateViewAngles(Landroid/graphics/Rect;I)Landroid/util/SizeF;
    .locals 10
    .param p1, "cropRegion"    # Landroid/graphics/Rect;
    .param p2, "flags"    # I

    .prologue
    .line 960
    sget-object v5, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 961
    .local v2, "focalLength":F
    sget-object v5, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SizeF;

    .line 962
    .local v3, "sensorPhysicalSize":Landroid/util/SizeF;
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    div-float/2addr v5, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    double-to-float v0, v6

    .line 963
    .local v0, "anglesX":F
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v3}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    div-float/2addr v5, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    double-to-float v1, v6

    .line 966
    .local v1, "anglesY":F
    if-nez p1, :cond_0

    .line 967
    new-instance v5, Landroid/util/SizeF;

    invoke-direct {v5, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    .line 971
    :goto_0
    return-object v5

    .line 970
    :cond_0
    sget-object v5, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 971
    .local v4, "sensorSizeFull":Landroid/util/Size;
    new-instance v5, Landroid/util/SizeF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v1

    invoke-direct {v5, v6, v7}, Landroid/util/SizeF;-><init>(FF)V

    goto :goto_0
.end method

.method public cancelAutoFocus(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 984
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/OperationState;

    .line 985
    .local v2, "previewState":Lcom/meizu/media/camera/OperationState;
    sget-object v3, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-eq v2, v3, :cond_0

    .line 987
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 1006
    :goto_0
    return-void

    .line 992
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "cancelAutoFocus() - Cancel current auto-focus"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    :try_start_0
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :goto_1
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 1004
    .local v1, "oldState":Lcom/meizu/media/camera/FocusState;
    sget-object v3, Lcom/meizu/media/camera/FocusState;->INACTIVE:Lcom/meizu/media/camera/FocusState;

    iput-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 1005
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {p0, v3, v1, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 997
    .end local v1    # "oldState":Lcom/meizu/media/camera/FocusState;
    :catch_0
    move-exception v0

    .line 999
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v4, "cancelAutoFocus() - Fail to cancel auto-focus"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public capture(II)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "frameCount"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 1014
    if-nez p1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture() - Invalid frame count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1067
    :goto_0
    return-object v1

    .line 1021
    :cond_0
    const/4 v0, 0x0

    .line 1022
    .local v0, "captureLater":Z
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 1023
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-eq v1, v3, :cond_1

    .line 1025
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture() - Capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1026
    goto :goto_0

    .line 1028
    :cond_1
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 1033
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture() - Current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1034
    goto :goto_0

    .line 1036
    :pswitch_0
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_1

    .line 1041
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture() - Preview state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1042
    goto/16 :goto_0

    .line 1046
    :pswitch_1
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v1, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1049
    new-instance v1, Lcom/meizu/media/camera/LegacyCameraImpl$11;

    const-string v3, "Capture"

    invoke-direct {v1, p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl$11;-><init>(Lcom/meizu/media/camera/LegacyCameraImpl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    .line 1059
    iput p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_TargetCapturedFrameCount:I

    .line 1060
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->captureInternal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1062
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v1, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-object v1, v2

    .line 1063
    goto/16 :goto_0

    .line 1067
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_CaptureHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 1028
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1036
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public close(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 1370
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 1371
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 1372
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/Camera$State;

    .line 1373
    .local v1, "state":Lcom/meizu/media/camera/Camera$State;
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1381
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close() - Invalid state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :goto_0
    :pswitch_0
    return-void

    .line 1386
    :pswitch_1
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/Camera$State;->CLOSING:Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1389
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 1390
    .local v0, "oldFocusState":Lcom/meizu/media/camera/FocusState;
    sget-object v2, Lcom/meizu/media/camera/FocusState;->INACTIVE:Lcom/meizu/media/camera/FocusState;

    iput-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 1391
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {p0, v2, v0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1394
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->closeInternal()V

    .line 1397
    iput-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    .line 1398
    iput-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_DefaultPhotoPreviewFpsRange:Landroid/util/Range;

    .line 1401
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/Camera$State;->CLOSED:Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 1477
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeRegions:Ljava/util/List;

    .line 1529
    :goto_0
    return-object v0

    .line 1479
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AeState:Lcom/meizu/media/camera/AutoExposureState;

    goto :goto_0

    .line 1481
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1482
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AfRegions:Ljava/util/List;

    goto :goto_0

    .line 1483
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 1484
    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AwbMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1485
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 1486
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->getCameraCharacteristic()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    goto :goto_0

    .line 1487
    :cond_4
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 1488
    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ExposureCompensation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1489
    :cond_5
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 1490
    iget-wide v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ExposureTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1491
    :cond_6
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 1492
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceLists:[Ljava/util/List;

    iget v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FaceListIndex:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 1493
    :cond_7
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 1494
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FlashMode:Lcom/meizu/media/camera/FlashMode;

    goto :goto_0

    .line 1495
    :cond_8
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 1496
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->getFocalLength()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1497
    :cond_9
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 1498
    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1499
    :cond_a
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 1500
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusMode:Lcom/meizu/media/camera/FocusMode;

    goto :goto_0

    .line 1501
    :cond_b
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 1502
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    goto :goto_0

    .line 1503
    :cond_c
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 1504
    iget-boolean v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsAeLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1505
    :cond_d
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 1506
    iget-boolean v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsAwbLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1507
    :cond_e
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 1508
    iget-boolean v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsFaceDetectionEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1509
    :cond_f
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 1510
    iget-boolean v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsMirrored:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1511
    :cond_10
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_11

    .line 1512
    iget-boolean v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRawCaptureEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1513
    :cond_11
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 1514
    iget-boolean v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_IsRecordingMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1515
    :cond_12
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 1516
    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ISOValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 1517
    :cond_13
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 1518
    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_JpegQuality:I

    if-ltz v0, :cond_14

    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_JpegQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1519
    :cond_15
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_16

    .line 1520
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PictureSize:Landroid/util/Size;

    goto/16 :goto_0

    .line 1521
    :cond_16
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_17

    .line 1522
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewFpsRange:Landroid/util/Range;

    goto/16 :goto_0

    .line 1523
    :cond_17
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_18

    .line 1524
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_PreviewSize:Landroid/util/Size;

    goto/16 :goto_0

    .line 1525
    :cond_18
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_19

    .line 1526
    iget v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_SceneMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 1527
    :cond_19
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1a

    .line 1528
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_VideoSize:Landroid/util/Size;

    goto/16 :goto_0

    .line 1529
    :cond_1a
    invoke-super {p0, p1}, Lcom/meizu/media/camera/BaseCamera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1542
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1549
    invoke-super {p0, p1}, Lcom/meizu/media/camera/BaseCamera;->handleMessage(Landroid/os/Message;)V

    .line 1552
    :goto_0
    return-void

    .line 1545
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->onAutoFocusTimeout()V

    goto :goto_0

    .line 1542
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public open(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2304
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 2305
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 2306
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera$State;

    .line 2307
    .local v0, "state":Lcom/meizu/media/camera/Camera$State;
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/Camera$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2315
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open() - Invalid state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2338
    :goto_0
    :pswitch_1
    return v1

    .line 2320
    :pswitch_2
    sget-object v3, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/Camera$State;->OPENING:Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {p0, v3, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2323
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->openInternal(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 2324
    goto :goto_0

    .line 2327
    :cond_0
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setCameraDisplayOrientation()V

    .line 2330
    iget-object v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 2333
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->updateParameters()V

    .line 2336
    sget-object v2, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/Camera$State;->OPENED:Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 2579
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2580
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setAeRegionsProp(Ljava/util/List;)Z

    move-result v0

    .line 2627
    :goto_0
    return v0

    .line 2581
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 2582
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setAfRegionsProp(Ljava/util/List;)Z

    move-result v0

    goto :goto_0

    .line 2583
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 2584
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setAWBModeProp(I)Z

    move-result v0

    goto :goto_0

    .line 2585
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 2586
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setDigitalZoomProp(F)Z

    move-result v0

    goto :goto_0

    .line 2587
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 2588
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setExposureCompensationProp(F)Z

    move-result v0

    goto :goto_0

    .line 2589
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_4
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 2590
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->setExposureTimeProp(J)Z

    move-result v0

    goto :goto_0

    .line 2591
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_5
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 2592
    check-cast p2, Lcom/meizu/media/camera/FlashMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setFlashModeProp(Lcom/meizu/media/camera/FlashMode;)Z

    move-result v0

    goto :goto_0

    .line 2593
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_6
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 2594
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setFocusProp(F)Z

    move-result v0

    goto :goto_0

    .line 2595
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_7
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 2596
    check-cast p2, Lcom/meizu/media/camera/FocusMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setFocusModeProp(Lcom/meizu/media/camera/FocusMode;)Z

    move-result v0

    goto :goto_0

    .line 2597
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_8
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 2598
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setAeLockProp(Z)Z

    move-result v0

    goto :goto_0

    .line 2599
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_9
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    .line 2600
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setAwbLockProp(Z)Z

    move-result v0

    goto/16 :goto_0

    .line 2601
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_a
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    .line 2602
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setFaceDetectionProp(Z)Z

    move-result v0

    goto/16 :goto_0

    .line 2603
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_b
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_c

    .line 2604
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setMirrorModeProp(Ljava/lang/Boolean;)Z

    move-result v0

    goto/16 :goto_0

    .line 2605
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_c
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_d

    .line 2606
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setJpegQualityProp(I)Z

    move-result v0

    goto/16 :goto_0

    .line 2607
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_d
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_e

    .line 2608
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setPictureSizeProp(Landroid/util/Size;)Z

    move-result v0

    goto/16 :goto_0

    .line 2609
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_e
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_f

    .line 2610
    check-cast p2, Landroid/util/Range;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setPreviewFpsRangeProp(Landroid/util/Range;)Z

    move-result v0

    goto/16 :goto_0

    .line 2611
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_f
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_10

    .line 2612
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setPreviewReceiverProp(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 2613
    :cond_10
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_11

    .line 2614
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setPreviewSizeProp(Landroid/util/Size;)Z

    move-result v0

    goto/16 :goto_0

    .line 2615
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_11
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_12

    .line 2616
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setManualCaptureProp(Ljava/lang/Boolean;)Z

    move-result v0

    goto/16 :goto_0

    .line 2617
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_12
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_13

    .line 2618
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setRawCaptureProp(Z)Z

    move-result v0

    goto/16 :goto_0

    .line 2619
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_13
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_14

    .line 2620
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setRecordingModeProp(Z)Z

    move-result v0

    goto/16 :goto_0

    .line 2621
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_14
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_15

    .line 2622
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setISOProp(I)Z

    move-result v0

    goto/16 :goto_0

    .line 2623
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_15
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_16

    .line 2624
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->setSceneModeProp(I)Z

    move-result v0

    goto/16 :goto_0

    .line 2625
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_16
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_17

    .line 2626
    check-cast p2, Landroid/util/Size;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->setVideoSizeProp(Landroid/util/Size;)Z

    move-result v0

    goto/16 :goto_0

    .line 2627
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_17
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public startAutoFocus(I)Z
    .locals 10
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3313
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3314
    sget-object v5, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/OperationState;

    .line 3315
    .local v2, "previewState":Lcom/meizu/media/camera/OperationState;
    sget-object v5, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-eq v2, v5, :cond_0

    .line 3317
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAutoFocus() - Preview state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3369
    :goto_0
    return v3

    .line 3321
    :cond_0
    iput-boolean v3, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 3324
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 3325
    .local v1, "oldState":Lcom/meizu/media/camera/FocusState;
    sget-object v5, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FocusState:[I

    invoke-virtual {v1}, Lcom/meizu/media/camera/FocusState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 3348
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startAutoFocus() - Start auto-focus"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_AutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3352
    const/16 v5, 0x2710

    const/4 v6, 0x1

    const-wide/16 v8, 0x1388

    invoke-static {p0, v5, v6, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 3355
    sget-object v5, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/meizu/media/camera/FocusMode;->CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

    if-eq v5, v6, :cond_1

    .line 3356
    sget-object v5, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    iput-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 3360
    :goto_2
    sget-object v5, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {p0, v5, v1, v6}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v4

    .line 3369
    goto :goto_0

    .line 3329
    :pswitch_0
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startAutoFocus() - Cancel current auto-focus"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3332
    :try_start_1
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3338
    :goto_3
    sget-object v5, Lcom/meizu/media/camera/FocusState;->INACTIVE:Lcom/meizu/media/camera/FocusState;

    iput-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    .line 3339
    sget-object v5, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {p0, v5, v1, v6}, Lcom/meizu/media/camera/LegacyCameraImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3340
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;

    goto :goto_1

    .line 3334
    :catch_0
    move-exception v0

    .line 3336
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v6, "startAutoFocus() - Fail to cancel auto-focus"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3358
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    sget-object v5, Lcom/meizu/media/camera/FocusState;->STARTING:Lcom/meizu/media/camera/FocusState;

    iput-object v5, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_FocusState:Lcom/meizu/media/camera/FocusState;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3362
    :catch_1
    move-exception v0

    .line 3364
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v5, "startAutoFocus() - Fail to start auto-focus"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startPreview(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3378
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3379
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3380
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera$State;

    .line 3381
    .local v0, "state":Lcom/meizu/media/camera/Camera$State;
    sget-object v1, Lcom/meizu/media/camera/Camera$State;->OPENED:Lcom/meizu/media/camera/Camera$State;

    if-eq v0, v1, :cond_0

    .line 3383
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPreview() - Camera state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3418
    :goto_0
    return v1

    .line 3386
    :cond_0
    sget-object v4, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 3394
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open() - Invalid preview state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3395
    goto :goto_0

    :pswitch_1
    move v1, v3

    .line 3392
    goto :goto_0

    .line 3399
    :pswitch_2
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v1, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3402
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->startPreviewInternal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3405
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v1, v3}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move v1, v2

    .line 3407
    goto :goto_0

    .line 3411
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v1, v4}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3413
    iget-boolean v1, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    if-eqz v1, :cond_2

    .line 3415
    iput-boolean v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_ForceCancelAutoFocus:Z

    .line 3416
    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/LegacyCameraImpl;->cancelAutoFocus(I)V

    :cond_2
    move v1, v3

    .line 3418
    goto :goto_0

    .line 3386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startVideoRecording(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 3537
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3538
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3539
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 3541
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "startVideoRecording() - No media recorder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3559
    :goto_0
    return v1

    .line 3548
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 3550
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->preparePreviewParameters()Z

    .line 3551
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->applyParameters()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3559
    const/4 v1, 0x1

    goto :goto_0

    .line 3553
    :catch_0
    move-exception v0

    .line 3555
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "startVideoRecording() - Fail to start video recording"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopPreview(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 3598
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3599
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3612
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPING:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3615
    sget-object v1, Lcom/meizu/media/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 3630
    :goto_1
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->stopPreviewInternal()V

    .line 3633
    sget-object v0, Lcom/meizu/media/camera/LegacyCameraImpl;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/LegacyCameraImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3634
    :goto_2
    :pswitch_2
    return-void

    .line 3607
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview() - Stop while starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3620
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview() - Wait for capture stop"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3624
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview() - Cancel capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3625
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V

    goto :goto_1

    .line 3599
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 3615
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public stopVideoRecording(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 3675
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3676
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3677
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 3679
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "stopVideoRecording() - No media recorder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3696
    :goto_0
    return v1

    .line 3686
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "stopVideoRecording() - MediaRecorder.stop [start]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3687
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 3688
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "stopVideoRecording() - MediaRecorder.stop [end]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3696
    const/4 v1, 0x1

    goto :goto_0

    .line 3690
    :catch_0
    move-exception v0

    .line 3692
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;

    const-string v3, "stopVideoRecording() - Fail to stop recorder"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unbindMediaRecorder(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 3722
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyAccess()V

    .line 3723
    invoke-virtual {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->verifyReleaseState()V

    .line 3726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 3729
    invoke-direct {p0}, Lcom/meizu/media/camera/LegacyCameraImpl;->reconnectCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3730
    const/4 v0, 0x0

    .line 3731
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
