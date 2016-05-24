.class public Lcom/meizu/media/camera/CameraThread;
.super Lcom/oneplus/base/BaseThread;
.source "CameraThread.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/CameraThread$36;,
        Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;,
        Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;,
        Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;,
        Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;,
        Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;,
        Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;,
        Lcom/meizu/media/camera/CameraThread$VideoParams;,
        Lcom/meizu/media/camera/CameraThread$ResourceIdTable;
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

.field private static final DURATION_FAKE_SHUTTER_DELAY:J = 0x1eL

.field private static final DURATION_VIDEO_CAPTURE_DELAY:J = 0x12cL

.field private static final DURATION_VIDEO_REC_LIMIT_CHECK_FAST:J = 0x1f4L

.field private static final DURATION_VIDEO_REC_LIMIT_CHECK_FASTEST:J = 0x64L

.field public static final EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CameraEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CameraOpenFailedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/media/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_SHUTTER:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_IGNORE_STORAGE_CHECK:I = 0x8

.field public static final FLAG_LOCK_FOCUS_BEFORE_CAPTURE:I = 0x10

.field public static final FLAG_NEED_REVIEW:I = 0x4

.field public static final FLAG_NO_SHUTTER_SOUND:I = 0x2

.field public static final FLAG_SYNCHRONOUS:I = 0x1

.field private static final KERNEL_FILE_IO_BUFFER_SIZE:J = 0x1400000L

.field private static final MSG_CAPTURE_VIDEO:I = 0x271a

.field private static final MSG_CHECK_REMAINING_MEDIA_COUNT:I = 0x2724

.field private static final MSG_CHECK_VIDEO_REC_LIMIT:I = 0x272e

.field private static final MSG_FAKE_SHUTTER:I = 0x2738

.field private static final MSG_SCREEN_SIZE_CHANGED:I = 0x2710

.field public static final PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PROP_CAMERA:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/Rotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/MediaResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/media/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/CaptureCompleteReason;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/PhotoCaptureState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/ScreenSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/CaptureCompleteReason;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/VideoCaptureState;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_KEY_IS_MIRRORED:Ljava/lang/String; = "IsMirrored"

.field public static final SETTINGS_KEY_RAW_CAPTURE:Ljava/lang/String; = "RawCapture"

.field public static final SETTINGS_KEY_SHUTTER_SOUND:Ljava/lang/String; = "ShutterSound"

.field private static final STORAGE_RESERVED_SPACE_PHOTO:J = 0x6400000L

.field private static final STORAGE_RESERVED_SPACE_VIDEO:J = 0x6400000L

.field private static final THRESHOLD_INVALID_VIDEO_DURATION:J = 0x3e8L

.field private static final THRESHOLD_VIDEO_REC_LIMIT_CHECK_FAST:J = 0xfL

.field private static final THRESHOLD_VIDEO_REC_LIMIT_CHECK_FASTEST:J = 0xaL


# instance fields
.field private final m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/meizu/media/camera/AutoExposureState;",
            ">;"
        }
    .end annotation
.end field

.field private m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

.field private m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

.field private m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

.field private m_CameraDeviceManager:Lcom/meizu/media/camera/CameraDeviceManager;

.field private final m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/meizu/media/camera/CameraOpenFailedEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_CameraPreviewStartFlags:I

.field private final m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/meizu/media/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/meizu/media/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CloseCamerasRunnable:Ljava/lang/Runnable;

.field private volatile m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

.field private final m_Context:Landroid/content/Context;

.field private m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

.field private final m_DefaultPhotoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

.field private m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

.field private final m_DefaultVideoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

.field private m_FileManager:Lcom/meizu/media/camera/io/FileManager;

.field private m_FocusController:Lcom/meizu/media/camera/FocusController;

.field private final m_InitialComponentBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/component/ComponentBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_InitialMediaType:Lcom/meizu/media/camera/media/MediaType;

.field private volatile m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

.field private m_IsHighComponentsCreated:Z

.field private m_IsMaxFileSizeDesignated:Z

.field private m_IsMediaStoreUpdatePaused:Z

.field private m_IsNormalComponentsCreated:Z

.field private m_IsPictureReceived:Z

.field private m_LastBurstPhotoTime:J

.field private m_LastCapturedJpeg:[B

.field private m_LastVideoCaptureCompleteReason:Lcom/meizu/media/camera/CaptureCompleteReason;

.field private m_LocationManager:Lcom/meizu/media/camera/location/LocationManager;

.field private m_MediaRecorder:Landroid/media/MediaRecorder;

.field private m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private m_MediaRecorderStartTime:J

.field private final m_PendingCameraPreviewStartRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PendingCameraPreviewStopRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

.field private m_PhotoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

.field private m_PhotoCaptureHandlerHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field protected m_PreAEState:Lcom/meizu/media/camera/AutoExposureState;

.field private m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

.field private m_PreparedPhotoCaptureCompleteReason:Lcom/meizu/media/camera/CaptureCompleteReason;

.field private m_RawPhotoCaptureHandleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/CaptureHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_RemainingMediaCountStateFs:Landroid/os/StatFs;

.field private volatile m_ResourceIdTable:Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private final m_ShutterHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_StorageManager:Lcom/oneplus/io/StorageManager;

.field private m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

.field private m_VideoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

.field private m_VideoCaptureHandlerHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private m_VideoFilePath:Ljava/lang/String;

.field private m_VideoLocation:Landroid/location/Location;

.field private m_VideoSnapshotDisableHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

.field private m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const-wide/16 v14, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    new-instance v1, Lcom/meizu/media/camera/CameraDeviceManagerBuilder;

    invoke-direct {v1}, Lcom/meizu/media/camera/CameraDeviceManagerBuilder;-><init>()V

    aput-object v1, v0, v12

    new-instance v1, Lcom/meizu/media/camera/ExposureControllerBuilder;

    invoke-direct {v1}, Lcom/meizu/media/camera/ExposureControllerBuilder;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/meizu/media/camera/WhiteBalanceControllerBuilder;

    invoke-direct {v1}, Lcom/meizu/media/camera/WhiteBalanceControllerBuilder;-><init>()V

    aput-object v1, v0, v10

    const/4 v1, 0x3

    new-instance v2, Lcom/meizu/media/camera/io/FileManagerBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/io/FileManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/meizu/media/camera/FocusControllerBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/FocusControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 145
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AvailableCameras"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    .line 149
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Camera"

    const-class v2, Lcom/meizu/media/camera/Camera;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    .line 153
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CameraPreviewState"

    const-class v2, Lcom/meizu/media/camera/OperationState;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    sget-object v6, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    .line 157
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string v7, "CaptureRotation"

    const-class v8, Lcom/oneplus/base/Rotation;

    const-class v9, Lcom/meizu/media/camera/CameraThread;

    sget-object v11, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/meizu/media/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 161
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCameraPreviewReceived"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    .line 165
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCapturingRawPhoto"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    .line 169
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsVideoSnapshotEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 173
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string v7, "MediaResultInfo"

    const-class v8, Lcom/meizu/media/camera/MediaResultInfo;

    const-class v9, Lcom/meizu/media/camera/CameraThread;

    move v10, v12

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    .line 177
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaType"

    const-class v2, Lcom/meizu/media/camera/media/MediaType;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    sget-object v5, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 181
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PhotoCaptureCompleteReason"

    const-class v2, Lcom/meizu/media/camera/CaptureCompleteReason;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    sget-object v5, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    .line 185
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PhotoCaptureState"

    const-class v2, Lcom/meizu/media/camera/PhotoCaptureState;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    sget-object v5, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 189
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "RemainingPhotoCount"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 193
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "RemainingVideoDurationSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 197
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ScreenSize"

    const-class v2, Lcom/oneplus/base/ScreenSize;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    sget-object v5, Lcom/oneplus/base/ScreenSize;->EMPTY:Lcom/oneplus/base/ScreenSize;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 201
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "VideoCaptureCompleteReason"

    const-class v2, Lcom/meizu/media/camera/CaptureCompleteReason;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    sget-object v5, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    .line 205
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "VideoCaptureState"

    const-class v2, Lcom/meizu/media/camera/VideoCaptureState;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    sget-object v5, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 211
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "BurstPhotoReceived"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 215
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CameraError"

    const-class v2, Lcom/meizu/media/camera/CameraEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    .line 219
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CaptureStarted"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    .line 223
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CameraOpenFailed"

    const-class v2, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    .line 227
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "DefaultPhotoCaptureCompleted"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    .line 231
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "DefaultVideoCaptureCompleted"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    .line 235
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaFileSaved"

    const-class v2, Lcom/meizu/media/camera/media/MediaEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    .line 239
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSaveCancelled"

    const-class v2, Lcom/meizu/media/camera/media/MediaEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 243
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSaveFailed"

    const-class v2, Lcom/meizu/media/camera/media/MediaEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    .line 247
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSaved"

    const-class v2, Lcom/meizu/media/camera/media/MediaEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    .line 251
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "Shutter"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    .line 633
    const-string v0, "ShutterSound"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    const-string v0, "RawCapture"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    const-string v0, "IsMirrored"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 636
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 647
    const-string v0, "Camera Thread"

    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/base/BaseThread;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V

    .line 263
    new-instance v0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/PhotoCaptureHandler;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 265
    new-instance v0, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/VideoCaptureHandler;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultVideoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    .line 299
    iput-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 305
    sget-object v0, Lcom/meizu/media/camera/AutoExposureState;->INACTIVE:Lcom/meizu/media/camera/AutoExposureState;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PreAEState:Lcom/meizu/media/camera/AutoExposureState;

    .line 309
    new-instance v0, Lcom/meizu/media/camera/CameraThread$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$1;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CloseCamerasRunnable:Ljava/lang/Runnable;

    .line 320
    new-instance v0, Lcom/meizu/media/camera/CameraThread$2;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$2;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 328
    new-instance v0, Lcom/meizu/media/camera/CameraThread$3;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$3;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 336
    new-instance v0, Lcom/meizu/media/camera/CameraThread$4;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$4;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 345
    new-instance v0, Lcom/meizu/media/camera/CameraThread$5;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$5;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 356
    new-instance v0, Lcom/meizu/media/camera/CameraThread$6;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$6;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    .line 364
    new-instance v0, Lcom/meizu/media/camera/CameraThread$7;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$7;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    .line 373
    new-instance v0, Lcom/meizu/media/camera/CameraThread$8;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$8;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 381
    new-instance v0, Lcom/meizu/media/camera/CameraThread$9;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$9;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    .line 389
    new-instance v0, Lcom/meizu/media/camera/CameraThread$10;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$10;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 397
    new-instance v0, Lcom/meizu/media/camera/CameraThread$11;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$11;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 405
    new-instance v0, Lcom/meizu/media/camera/CameraThread$12;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraThread$12;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 648
    if-nez p1, :cond_0

    .line 649
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread;->m_Context:Landroid/content/Context;

    .line 651
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/CameraThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->closeCamerasInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;
    .param p2, "x2"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->onCameraPreviewReceivedStateChanged(Lcom/meizu/media/camera/Camera;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CaptureEventArgs;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->onShutter(Lcom/meizu/media/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->removePhotoCaptureHandler(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->removeVideoCaptureHandler(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->stopPhotoCapture(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;
    .param p2, "x2"    # Lcom/meizu/media/camera/CaptureCompleteReason;
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraThread;->stopVideoCapture(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/media/camera/CameraThread;)Lcom/oneplus/base/component/ComponentManager;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/media/camera/CameraThread;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->onAvailableCamerasChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/media/camera/CameraThread;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->onSavingQueueStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/media/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/media/MediaEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/media/MediaEventArgs;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->resetCapturingRawPhotoProperty(Lcom/meizu/media/camera/media/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/OperationState;Lcom/meizu/media/camera/OperationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;
    .param p2, "x2"    # Lcom/meizu/media/camera/OperationState;
    .param p3, "x3"    # Lcom/meizu/media/camera/OperationState;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraThread;->onCameraPreviewStateChanged(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/OperationState;Lcom/meizu/media/camera/OperationState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/media/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/meizu/media/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/meizu/media/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/FocusState;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/FocusState;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->onFocusStateChanged(Lcom/meizu/media/camera/FocusState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "x2"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->capturePhotoInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;
    .param p2, "x2"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->captureVideoInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->closeCameraInternal(Lcom/meizu/media/camera/Camera;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/meizu/media/camera/CameraThread;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->enableVideoSnapshot(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/meizu/media/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/meizu/media/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->onCaptureCompleted(Lcom/meizu/media/camera/Camera;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;
    .param p2, "x2"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->openCameraInternal(Lcom/meizu/media/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/meizu/media/camera/CameraThread;Landroid/media/MediaRecorder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Landroid/media/MediaRecorder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraThread;->onMediaRecorderErrorReceived(Landroid/media/MediaRecorder;II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/meizu/media/camera/CameraThread;Landroid/media/MediaRecorder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Landroid/media/MediaRecorder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraThread;->onMediaRecorderInfoReceived(Landroid/media/MediaRecorder;II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/media/MediaType;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/media/MediaType;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->setMediaTypeInternal(Lcom/meizu/media/camera/media/MediaType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;
    .param p2, "x2"    # Landroid/util/Size;
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/media/camera/CameraThread;->startCameraPreviewInternal(Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;[ZI)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;
    .param p2, "x2"    # [Z
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraThread;->stopCameraPreviewInternal(Lcom/meizu/media/camera/Camera;[ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/meizu/media/camera/CameraThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "x2"    # Lcom/meizu/media/camera/CaptureCompleteReason;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;
    .param p2, "x2"    # Lcom/meizu/media/camera/CaptureCompleteReason;
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraThread;->stopVideoCaptureInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->onCameraError(Lcom/meizu/media/camera/Camera;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraOpenFailedEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->onCameraOpenFailed(Lcom/meizu/media/camera/CameraOpenFailedEventArgs;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/media/camera/CameraThread;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->onShutter(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->onCaptureFailed(Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->onPictureReceived(Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraThread;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->onRawPictureReceived(Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method private bindToHighComponents()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 715
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/meizu/media/camera/io/FileManager;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/io/FileManager;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    .line 716
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    if-eqz v0, :cond_3

    .line 718
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    sget-object v1, Lcom/meizu/media/camera/io/FileManager;->PROP_IS_SAVING_QUEUE_FULL:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/CameraThread$15;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraThread$15;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/io/FileManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 726
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    sget-object v1, Lcom/meizu/media/camera/io/FileManager;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/CameraThread$16;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraThread$16;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 734
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    sget-object v1, Lcom/meizu/media/camera/io/FileManager;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/CameraThread$17;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraThread$17;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 743
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    sget-object v1, Lcom/meizu/media/camera/io/FileManager;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/CameraThread$18;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraThread$18;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 752
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    sget-object v1, Lcom/meizu/media/camera/io/FileManager;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/CameraThread$19;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraThread$19;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/io/FileManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 766
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/meizu/media/camera/media/AudioManager;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/AudioManager;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

    .line 767
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

    if-eqz v0, :cond_5

    .line 769
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ResourceIdTable:Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

    if-eqz v0, :cond_2

    .line 771
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ResourceIdTable:Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/meizu/media/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_ResourceIdTable:Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/meizu/media/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/meizu/media/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ResourceIdTable:Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/meizu/media/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    if-eqz v0, :cond_4

    .line 774
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_ResourceIdTable:Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/meizu/media/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/meizu/media/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    .line 777
    :goto_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ResourceIdTable:Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/meizu/media/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_ResourceIdTable:Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/meizu/media/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/meizu/media/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ResourceIdTable:Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

    iget v0, v0, Lcom/meizu/media/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    if-eqz v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_ResourceIdTable:Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

    iget v1, v1, Lcom/meizu/media/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    invoke-interface {v0, v1, v4, v3}, Lcom/meizu/media/camera/media/AudioManager;->loadSound(III)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;

    .line 787
    :cond_2
    :goto_2
    invoke-static {}, Lcom/meizu/media/camera/CameraApplication;->current()Lcom/meizu/media/camera/CameraApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/io/StorageManager;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 788
    return-void

    .line 763
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "bindToInitialComponents() - No FileManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_4
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 784
    :cond_5
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "bindToInitialComponents() - No AudioManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private bindToInitialComponents()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 689
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v2, Lcom/meizu/media/camera/CameraDeviceManager;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/CameraDeviceManager;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraDeviceManager:Lcom/meizu/media/camera/CameraDeviceManager;

    .line 690
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraDeviceManager:Lcom/meizu/media/camera/CameraDeviceManager;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraDeviceManager:Lcom/meizu/media/camera/CameraDeviceManager;

    sget-object v1, Lcom/meizu/media/camera/CameraDeviceManager;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/CameraThread$14;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraThread$14;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/CameraDeviceManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 700
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraDeviceManager:Lcom/meizu/media/camera/CameraDeviceManager;

    sget-object v2, Lcom/meizu/media/camera/CameraDeviceManager;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/meizu/media/camera/CameraDeviceManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/meizu/media/camera/CameraThread;->onAvailableCamerasChanged(Ljava/util/List;Ljava/util/List;)V

    .line 708
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "bindToInitialComponents() - No CameraDeviceManager"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 705
    goto :goto_0
.end method

.method private bindToNormalComponents()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 795
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/meizu/media/camera/FocusController;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/FocusController;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    .line 796
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v1, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/CameraThread$20;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraThread$20;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 811
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/meizu/media/camera/location/LocationManager;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/location/LocationManager;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_LocationManager:Lcom/meizu/media/camera/location/LocationManager;

    .line 812
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_LocationManager:Lcom/meizu/media/camera/location/LocationManager;

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "bindToNormalComponents() - No LocationManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_0
    return-void

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "bindToNormalComponents() - No FocusController"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private capturePhotoInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;)Z
    .locals 9
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1041
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 1042
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    sget-object v1, Lcom/meizu/media/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1043
    sget-object v1, Lcom/meizu/media/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1044
    sget-object v1, Lcom/meizu/media/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1045
    sget-object v1, Lcom/meizu/media/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1048
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1051
    sget-object v1, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    iput-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/meizu/media/camera/CaptureCompleteReason;

    .line 1052
    iget v1, p1, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    invoke-interface {v0, v1, v3}, Lcom/meizu/media/camera/Camera;->capture(II)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 1053
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "capturePhotoInternal() - Fail to capture"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    sget-object v1, Lcom/meizu/media/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1057
    sget-object v1, Lcom/meizu/media/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1058
    sget-object v1, Lcom/meizu/media/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1059
    sget-object v1, Lcom/meizu/media/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1060
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1078
    :goto_0
    return v3

    .line 1065
    :cond_0
    iget v1, p1, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-ne v1, v8, :cond_2

    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/meizu/media/camera/AutoExposureState;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/FlashMode;->ON:Lcom/meizu/media/camera/FlashMode;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/AutoExposureState;->SEARCHING:Lcom/meizu/media/camera/AutoExposureState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_PreAEState:Lcom/meizu/media/camera/AutoExposureState;

    sget-object v2, Lcom/meizu/media/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/meizu/media/camera/AutoExposureState;

    if-eq v1, v2, :cond_2

    .line 1070
    :cond_1
    const/16 v2, 0x2738

    const-wide/16 v6, 0x1e

    move-object v1, p0

    move v4, v3

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    .line 1074
    :cond_2
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1075
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v3, v8

    .line 1078
    goto :goto_0
.end method

.method private capturePhotoInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Z)Z
    .locals 14
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "isFocusFinished"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 887
    iput-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    .line 888
    iput-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_LastCapturedJpeg:[B

    .line 889
    iput-boolean v9, p0, Lcom/meizu/media/camera/CameraThread;->m_IsPictureReceived:Z

    .line 892
    sget-object v10, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v7}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v7

    aget v7, v10, v7

    packed-switch v7, :pswitch_data_0

    .line 900
    :cond_0
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "capturePhotoInternal() - Capture state is "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/meizu/media/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1033
    :goto_0
    return v9

    .line 897
    :pswitch_0
    if-eqz p2, :cond_0

    .line 906
    :pswitch_1
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    sget-object v10, Lcom/meizu/media/camera/io/FileManager;->PROP_IS_SAVING_QUEUE_FULL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v10}, Lcom/meizu/media/camera/io/FileManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 908
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "capturePhotoInternal() - Media saving queue is full"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/meizu/media/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 913
    :cond_1
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "capturePhotoInternal() - Handle : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", focus finished : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/Camera;

    .line 917
    .local v2, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v2, :cond_2

    .line 919
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "capturePhotoInternal() - No primary camera"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/meizu/media/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 925
    :cond_2
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v7, v10, :cond_3

    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    if-eq v7, v10, :cond_3

    .line 927
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "capturePhotoInternal() - Video recording not ready , cancel snaphot."

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/meizu/media/camera/CaptureCompleteReason;->INVALID_STATE:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 933
    :cond_3
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v10, Lcom/meizu/media/camera/PhotoCaptureState;->STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v10}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 936
    if-nez p2, :cond_5

    .line 938
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 939
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-gtz v7, :cond_5

    .line 941
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "capturePhotoInternal() - No enough storage space"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/meizu/media/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 943
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v7, v8, :cond_4

    .line 944
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 946
    :cond_4
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 952
    :cond_5
    if-nez p2, :cond_7

    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v10, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v10}, Lcom/meizu/media/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    if-eq v7, v10, :cond_6

    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v10, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v10}, Lcom/meizu/media/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/meizu/media/camera/FocusState;->STARTING:Lcom/meizu/media/camera/FocusState;

    if-ne v7, v10, :cond_7

    .line 956
    :cond_6
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v9, "capturePhotoInternal() - Waiting for focus complete"

    invoke-static {v7, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    move v9, v8

    .line 958
    goto/16 :goto_0

    .line 962
    :cond_7
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v10, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v10}, Lcom/meizu/media/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/meizu/media/camera/FocusMode;->CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

    if-ne v7, v10, :cond_a

    sget-object v7, Lcom/meizu/media/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v7}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/meizu/media/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/meizu/media/camera/AutoExposureState;

    if-eq v7, v10, :cond_8

    iget v7, p1, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_a

    :cond_8
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 967
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v10, "capturePhotoInternal() - Lock focus"

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v10, Lcom/meizu/media/camera/FocusController;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v10}, Lcom/meizu/media/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_9

    move v6, v8

    .line 969
    .local v6, "waitForLock":Z
    :goto_1
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    invoke-interface {v7, v9}, Lcom/meizu/media/camera/FocusController;->lockFocus(I)Lcom/oneplus/base/Handle;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    .line 970
    if-eqz v6, :cond_a

    .line 972
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v9, "capturePhotoInternal() - Waiting for focus lock"

    invoke-static {v7, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    move v9, v8

    .line 974
    goto/16 :goto_0

    .end local v6    # "waitForLock":Z
    :cond_9
    move v6, v9

    .line 968
    goto :goto_1

    .line 979
    :cond_a
    const/4 v4, 0x0

    .line 983
    .local v4, "handlerHandle":Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;
    :try_start_0
    sget-object v7, Lcom/meizu/media/camera/Camera;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    sget-object v10, Lcom/meizu/media/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 984
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_LocationManager:Lcom/meizu/media/camera/location/LocationManager;

    if-eqz v7, :cond_b

    .line 985
    sget-object v7, Lcom/meizu/media/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    iget-object v10, p0, Lcom/meizu/media/camera/CameraThread;->m_LocationManager:Lcom/meizu/media/camera/location/LocationManager;

    sget-object v11, Lcom/meizu/media/camera/location/LocationManager;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/meizu/media/camera/location/LocationManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 986
    :cond_b
    sget-object v7, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v7}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v7, v10, :cond_c

    .line 987
    sget-object v7, Lcom/meizu/media/camera/Camera;->PROP_IS_MIRRORED:Lcom/oneplus/base/PropertyKey;

    iget-object v10, p0, Lcom/meizu/media/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v11, "IsMirrored"

    invoke-virtual {v10, v11}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 990
    :cond_c
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_d

    .line 992
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    move-object v4, v0

    .line 993
    iget-object v7, v4, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    iget v10, p1, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    invoke-interface {v7, v2, p1, v10}, Lcom/meizu/media/camera/PhotoCaptureHandler;->capture(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/CaptureHandle;I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 995
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "capturePhotoInternal() - Capture process is handled by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v7, v4, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    iput-object v7, p1, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    .line 997
    iget-object v7, v4, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    sget-object v10, Lcom/meizu/media/camera/PhotoCaptureHandler;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v11, p0, Lcom/meizu/media/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v7, v10, v11}, Lcom/meizu/media/camera/PhotoCaptureHandler;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1002
    :cond_d
    if-nez v4, :cond_10

    .line 1004
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v10, "capturePhotoInternal() - Use default capture process"

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->capturePhotoInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 1006
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Fail to use default photo capture process."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 1012
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "capturePhotoInternal() - Fail to capture"

    invoke-static {v7, v8, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1013
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/meizu/media/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1014
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v7, v8, :cond_13

    .line 1015
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1000
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "i":I
    :cond_e
    const/4 v4, 0x0

    .line 990
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1007
    :cond_f
    :try_start_1
    iget-object v4, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1022
    :cond_10
    iput-object v4, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 1023
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    .line 1024
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/meizu/media/camera/PhotoCaptureState;->CAPTURING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v9}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1025
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v9, Lcom/meizu/media/camera/CaptureEventArgs;

    iget-object v10, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v9, v10}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;)V

    invoke-virtual {p0, v7, v9}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1026
    sget-object v7, Lcom/meizu/media/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v7}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1027
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v7, v9}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1028
    :cond_11
    iget v7, p1, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-eq v7, v8, :cond_12

    iget-boolean v7, p0, Lcom/meizu/media/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    if-eqz v7, :cond_12

    .line 1030
    iput-boolean v8, p0, Lcom/meizu/media/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    .line 1031
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    invoke-interface {v7}, Lcom/meizu/media/camera/io/FileManager;->pauseInsert()V

    :cond_12
    move v9, v8

    .line 1033
    goto/16 :goto_0

    .line 1017
    .end local v5    # "i":I
    .restart local v3    # "ex":Ljava/lang/Throwable;
    :cond_13
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 892
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private captureVideoInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Z)Z
    .locals 14
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;
    .param p2, "isShutterSoundPlayed"    # Z

    .prologue
    .line 1133
    sget-object v1, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureVideoInternal() - Video capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const/4 v0, 0x0

    .line 1260
    :goto_0
    return v0

    .line 1138
    :pswitch_0
    if-eqz p2, :cond_0

    .line 1144
    :pswitch_1
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/media/camera/Camera;

    .line 1145
    .local v8, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v8, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - No primary camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const/4 v0, 0x0

    goto :goto_0

    .line 1150
    :cond_1
    iget-object v11, p1, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;->params:Lcom/meizu/media/camera/CameraThread$VideoParams;

    .line 1152
    .local v11, "params":Lcom/meizu/media/camera/CameraThread$VideoParams;
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - Handle : "

    const-string v3, ", resolution : "

    iget-object v4, v11, Lcom/meizu/media/camera/CameraThread$VideoParams;->resolution:Lcom/meizu/media/camera/media/Resolution;

    const-string v5, ", shutter sound played : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1155
    if-nez p2, :cond_3

    .line 1158
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1159
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1161
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - No enough storage space"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1163
    const/4 v0, 0x0

    goto :goto_0

    .line 1167
    :cond_2
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->prepareVideoFilePath()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1168
    const/4 v0, 0x0

    goto :goto_0

    .line 1172
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->STARTING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1175
    const-wide/16 v12, 0x0

    .line 1176
    .local v12, "shutterSoundTime":J
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1178
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoStartSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 1179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1183
    :cond_4
    if-nez p2, :cond_7

    .line 1186
    sget-object v0, Lcom/meizu/media/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, v11, Lcom/meizu/media/camera/CameraThread$VideoParams;->resolution:Lcom/meizu/media/camera/media/Resolution;

    invoke-virtual {v1}, Lcom/meizu/media/camera/media/Resolution;->toSize()Landroid/util/Size;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1189
    new-instance v10, Landroid/media/MediaRecorder;

    invoke-direct {v10}, Landroid/media/MediaRecorder;-><init>()V

    .line 1192
    .local v10, "mediaRecorder":Landroid/media/MediaRecorder;
    const/4 v0, 0x0

    invoke-interface {v8, v10, v0}, Lcom/meizu/media/camera/Camera;->bindMediaRecorder(Landroid/media/MediaRecorder;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1194
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1195
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1196
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1200
    :cond_5
    invoke-direct {p0, v8, v10, v11}, Lcom/meizu/media/camera/CameraThread;->prepareMediaRecorder(Lcom/meizu/media/camera/Camera;Landroid/media/MediaRecorder;Lcom/meizu/media/camera/CameraThread$VideoParams;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1202
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - Fail to prepare media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :try_start_0
    invoke-virtual {v10}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/meizu/media/camera/Camera;->unbindMediaRecorder(I)Z

    .line 1215
    :goto_1
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1216
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1217
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1207
    :catch_0
    move-exception v9

    .line 1209
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - Error when release"

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1213
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/meizu/media/camera/Camera;->unbindMediaRecorder(I)Z

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Lcom/meizu/media/camera/Camera;->unbindMediaRecorder(I)Z

    throw v0

    .line 1219
    :cond_6
    iput-object v10, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 1222
    const-wide/16 v0, 0x12c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v12

    sub-long v6, v0, v2

    .line 1223
    .local v6, "delay":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_7

    .line 1225
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureVideoInternal() - Start video recording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    const/16 v2, 0x271a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    .line 1227
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    .line 1228
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1233
    .end local v6    # "delay":J
    .end local v10    # "mediaRecorder":Landroid/media/MediaRecorder;
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/meizu/media/camera/Camera;->startVideoRecording(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1235
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "captureVideoInternal() - Fail to start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1237
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/meizu/media/camera/Camera;->unbindMediaRecorder(I)Z

    .line 1238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    .line 1239
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 1240
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1241
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1242
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1246
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorderStartTime:J

    .line 1249
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    if-nez v0, :cond_9

    .line 1250
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultVideoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    .line 1251
    :cond_9
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    .line 1252
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    iget-object v1, v1, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;->captureHandler:Lcom/meizu/media/camera/VideoCaptureHandler;

    iput-object v1, v0, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;->captureHandler:Lcom/meizu/media/camera/VideoCaptureHandler;

    .line 1253
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1254
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    invoke-direct {v1, v2}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1257
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->checkVideoRecordingLimitation()V

    .line 1260
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkRemainingMediaCountInternal()V
    .locals 4

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2724

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1286
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->getFreeSpace()J

    move-result-wide v0

    .line 1289
    .local v0, "freeSpace":J
    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->checkRemainingPhotoCount(J)V

    .line 1290
    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->checkRemainingVideoDuration(J)V

    .line 1291
    return-void
.end method

.method private checkRemainingPhotoCount(J)V
    .locals 9
    .param p1, "freeSpace"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 1298
    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {p0, p1, p2, v1}, Lcom/meizu/media/camera/CameraThread;->getFreeSpace(JLcom/meizu/media/camera/media/MediaType;)J

    move-result-wide p1

    .line 1299
    cmp-long v1, p1, v6

    if-gtz v1, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "checkRemainingPhotoCount() - Storage is full"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1318
    :goto_0
    return-void

    .line 1307
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 1308
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_1

    .line 1310
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "checkRemainingPhotoCount() - No primary camera"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1316
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    sget-object v4, Lcom/meizu/media/camera/Camera;->PROP_JPEG_QUALITY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lcom/meizu/media/camera/media/FileSizeEstimator;->estimateJpegFileSize(Landroid/util/Size;I)J

    move-result-wide v2

    .line 1317
    .local v2, "fileSize":J
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    div-long v4, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkRemainingVideoDuration(J)V
    .locals 11
    .param p1, "freeSpace"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 1325
    sget-object v5, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {p0, p1, p2, v5}, Lcom/meizu/media/camera/CameraThread;->getFreeSpace(JLcom/meizu/media/camera/media/MediaType;)J

    move-result-wide p1

    .line 1326
    cmp-long v5, p1, v8

    if-gtz v5, :cond_0

    .line 1328
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "checkRemainingVideoDuration() - Storage is full"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1355
    :goto_0
    return-void

    .line 1334
    :cond_0
    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 1335
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_1

    .line 1337
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "checkRemainingVideoDuration() - No primary camera"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1343
    :cond_1
    sget-object v5, Lcom/meizu/media/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v5}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 1344
    .local v4, "videoSize":Landroid/util/Size;
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/meizu/media/camera/CameraThread;->createCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 1345
    .local v1, "profile":Landroid/media/CamcorderProfile;
    if-nez v1, :cond_2

    .line 1347
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "checkRemainingVideoDuration() - Cannot create camcorder profile"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1353
    :cond_2
    const-wide/16 v6, 0x1

    invoke-static {v1, v6, v7}, Lcom/meizu/media/camera/media/FileSizeEstimator;->estimateVideoFileSize(Landroid/media/CamcorderProfile;J)J

    move-result-wide v2

    .line 1354
    .local v2, "dataSize":J
    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    div-long v6, p1, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkVideoRecordingLimitation()V
    .locals 9

    .prologue
    const/16 v8, 0x272e

    .line 1362
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    if-eq v2, v3, :cond_0

    .line 1377
    :goto_0
    return-void

    .line 1364
    :cond_0
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1365
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1366
    .local v0, "duration":J
    const-wide/16 v2, 0xf

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1367
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x5

    div-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1368
    :cond_1
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1369
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1370
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 1371
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1374
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "checkVideoRecordingLimitation() - Storage limitation reached"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    sget-object v3, Lcom/meizu/media/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/meizu/media/camera/CaptureCompleteReason;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/meizu/media/camera/CameraThread;->stopVideoCaptureInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    goto :goto_0
.end method

.method private closeCameraInternal(Lcom/meizu/media/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCameraInternal() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCameraInternal() - Camera : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1415
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/meizu/media/camera/Camera;->close(I)V

    .line 1416
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCameraInternal() - End"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    return-void
.end method

.method private closeCamerasInternal()V
    .locals 4

    .prologue
    .line 1435
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "closeCamerasInternal() - Start"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1437
    .local v0, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1438
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/Camera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/Camera;->close(I)V

    .line 1437
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1439
    :cond_0
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "closeCamerasInternal() - End"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 1445
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 1447
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1453
    :cond_0
    return-void

    .line 1448
    :catch_0
    move-exception v0

    .line 1449
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "closeVideoFileDescriptor() - Error, "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;Z)Z
    .locals 7
    .param p1, "captureHandlerHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "handle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p3, "reason"    # Lcom/meizu/media/camera/CaptureCompleteReason;
    .param p4, "checkHandles"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1504
    if-nez p2, :cond_0

    .line 1506
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "completeCaptureInternal() - Capture handle is null, skip"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    :goto_0
    return v2

    .line 1510
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeCaptureInternal() - Handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    sget-object v3, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p2}, Lcom/meizu/media/camera/CaptureHandle;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1620
    :goto_1
    iget-boolean v3, p0, Lcom/meizu/media/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    if-eqz v3, :cond_1

    .line 1622
    iput-boolean v2, p0, Lcom/meizu/media/camera/CameraThread;->m_IsMediaStoreUpdatePaused:Z

    .line 1623
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    invoke-interface {v2}, Lcom/meizu/media/camera/io/FileManager;->resumeInsert()V

    .line 1627
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1518
    :pswitch_0
    if-eqz p4, :cond_3

    .line 1520
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    if-eq v3, p1, :cond_2

    .line 1522
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeCaptureInternal() - Invalid capture handler handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1525
    :cond_2
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    if-eq p2, v3, :cond_3

    .line 1527
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeCaptureInternal() - Invalid capture handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1533
    :cond_3
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, p3}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1536
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    iget-object v3, v3, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    if-nez v3, :cond_4

    .line 1537
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/meizu/media/camera/CaptureEventArgs;

    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v4, v5}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;)V

    invoke-virtual {p0, v3, v4}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1540
    :cond_4
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    iget v3, v3, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 1542
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "completeCaptureInternal() - Need review, stop preview"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 1544
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-eqz v0, :cond_5

    .line 1545
    invoke-interface {v0, v2}, Lcom/meizu/media/camera/Camera;->stopPreview(I)V

    .line 1549
    .end local v0    # "camera":Lcom/meizu/media/camera/Camera;
    :cond_5
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    .line 1552
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    iget-object v3, v3, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    if-eqz v3, :cond_6

    .line 1553
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    iget-object v3, v3, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    sget-object v4, Lcom/meizu/media/camera/PhotoCaptureHandler;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/PhotoCaptureHandler;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1556
    :cond_6
    iput-object v6, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    .line 1557
    iput-object v6, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    .line 1560
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v3, v4, :cond_7

    .line 1562
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "completeCaptureInternal() - Complete video snapshot"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/VideoCaptureState;->STOPPING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v3, v4, :cond_7

    .line 1564
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    iget-object v4, p0, Lcom/meizu/media/camera/CameraThread;->m_LastVideoCaptureCompleteReason:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-direct {p0, v3, v4, v2}, Lcom/meizu/media/camera/CameraThread;->stopVideoCaptureInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    .line 1566
    :cond_7
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v3, v4, :cond_8

    .line 1567
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v3, v4}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1569
    :cond_8
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v3, v4}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1575
    :pswitch_1
    if-eqz p4, :cond_a

    .line 1577
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    if-eq v3, p1, :cond_9

    .line 1579
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeCaptureInternal() - Invalid capture handler handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1582
    :cond_9
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    if-eq p2, v3, :cond_a

    .line 1584
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeCaptureInternal() - Invalid capture handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1591
    :cond_a
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, p3}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1594
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {v4, p2}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;)V

    invoke-virtual {p0, v3, v4}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1597
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_b

    .line 1600
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/MediaResultInfo;

    .line 1601
    .local v1, "info":Lcom/meizu/media/camera/MediaResultInfo;
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/meizu/media/camera/media/MediaEventArgs;

    iget-object v5, v1, Lcom/meizu/media/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    invoke-direct {v4, p2, v6, v5, v6}, Lcom/meizu/media/camera/media/MediaEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3, v4}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1603
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 1607
    .end local v1    # "info":Lcom/meizu/media/camera/MediaResultInfo;
    :cond_b
    iput-object v6, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    .line 1608
    iput-object v6, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    .line 1611
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v3, v4, :cond_c

    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v3, v4, :cond_c

    .line 1612
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v3, v4}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1614
    :cond_c
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v3, v4}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createCamcorderProfile(II)Landroid/media/CamcorderProfile;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1634
    sparse-switch p2, :sswitch_data_0

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCamcorderProfile() - Unknown video size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1637
    :sswitch_0
    const/16 v0, 0xf00

    if-ne p1, v0, :cond_0

    .line 1638
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    .line 1642
    :sswitch_1
    const/16 v0, 0x780

    if-ne p1, v0, :cond_0

    .line 1643
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    .line 1647
    :sswitch_2
    const/16 v0, 0x500

    if-ne p1, v0, :cond_0

    .line 1648
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    .line 1652
    :sswitch_3
    const/16 v0, 0xb0

    if-ne p1, v0, :cond_0

    .line 1653
    const/16 v0, 0x3ea

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    .line 1634
    nop

    :sswitch_data_0
    .sparse-switch
        0x90 -> :sswitch_3
        0x2d0 -> :sswitch_2
        0x438 -> :sswitch_1
        0x870 -> :sswitch_0
    .end sparse-switch
.end method

.method private enableVideoSnapshot(Lcom/oneplus/base/Handle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 1693
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->verifyAccess()V

    .line 1694
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 1698
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1700
    :cond_0
    return-void
.end method

.method private getFreeSpace()J
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    .line 1749
    :try_start_0
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    iget-object v8, p0, Lcom/meizu/media/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    sget-object v9, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-static {v5, v8, v9}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v4

    .line 1750
    .local v4, "storage":Lcom/oneplus/io/Storage;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/oneplus/io/Storage;->getDirectoryPath()Ljava/lang/String;

    move-result-object v1

    .line 1751
    .local v1, "path":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    if-eqz v5, :cond_1

    .line 1752
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    invoke-virtual {v5, v1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 1755
    :goto_1
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    sget-object v8, Lcom/meizu/media/camera/io/FileManager;->PROP_SAVING_QUEUE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v8}, Lcom/meizu/media/camera/io/FileManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1756
    .local v2, "savingQueueSize":J
    :goto_2
    const-wide/16 v8, 0x0

    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1761
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "savingQueueSize":J
    .end local v4    # "storage":Lcom/oneplus/io/Storage;
    :goto_3
    return-wide v6

    .line 1750
    .restart local v4    # "storage":Lcom/oneplus/io/Storage;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1754
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_RemainingMediaCountStateFs:Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1758
    .end local v1    # "path":Ljava/lang/String;
    .end local v4    # "storage":Lcom/oneplus/io/Storage;
    :catch_0
    move-exception v0

    .line 1760
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "getFreeSpace() - Fail to get free storage space"

    invoke-static {v5, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v4    # "storage":Lcom/oneplus/io/Storage;
    :cond_2
    move-wide v2, v6

    .line 1755
    goto :goto_2
.end method

.method private getFreeSpace(JLcom/meizu/media/camera/media/MediaType;)J
    .locals 3
    .param p1, "totalFreeSpace"    # J
    .param p3, "mediaType"    # Lcom/meizu/media/camera/media/MediaType;

    .prologue
    .line 1770
    if-nez p3, :cond_0

    .line 1779
    .end local p1    # "totalFreeSpace":J
    :goto_0
    return-wide p1

    .line 1772
    .restart local p1    # "totalFreeSpace":J
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p3}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1775
    :pswitch_0
    const-wide/32 v0, 0x6400000

    sub-long/2addr p1, v0

    goto :goto_0

    .line 1777
    :pswitch_1
    const-wide/32 v0, 0x7800000

    sub-long/2addr p1, v0

    goto :goto_0

    .line 1772
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFreeSpace(Lcom/meizu/media/camera/media/MediaType;)J
    .locals 2
    .param p1, "mediaType"    # Lcom/meizu/media/camera/media/MediaType;

    .prologue
    .line 1766
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->getFreeSpace()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meizu/media/camera/CameraThread;->getFreeSpace(JLcom/meizu/media/camera/media/MediaType;)J

    move-result-wide v0

    return-wide v0
.end method

.method private onAvailableCamerasChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1844
    .local p1, "oldCameras":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera;>;"
    .local p2, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1846
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 1847
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1849
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1850
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1851
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1852
    sget-object v2, Lcom/meizu/media/camera/Camera;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1853
    sget-object v2, Lcom/meizu/media/camera/Camera;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1844
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1856
    .end local v0    # "camera":Lcom/meizu/media/camera/Camera;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 1858
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 1859
    .restart local v0    # "camera":Lcom/meizu/media/camera/Camera;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1861
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraPreviewReceivedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1862
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1863
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_AECallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1864
    sget-object v2, Lcom/meizu/media/camera/Camera;->EVENT_ERROR:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraErrorHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1865
    sget-object v2, Lcom/meizu/media/camera/Camera;->EVENT_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraOpenFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1856
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1870
    .end local v0    # "camera":Lcom/meizu/media/camera/Camera;
    :cond_3
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p2}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1871
    return-void
.end method

.method private onCameraError(Lcom/meizu/media/camera/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 1877
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraError() - Camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CameraEventArgs;

    invoke-direct {v1, p1}, Lcom/meizu/media/camera/CameraEventArgs;-><init>(Lcom/meizu/media/camera/Camera;)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1882
    :cond_0
    return-void
.end method

.method private onCameraOpenFailed(Lcom/meizu/media/camera/CameraOpenFailedEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/meizu/media/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpenFailed() - Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1889
    return-void
.end method

.method private onCameraPreviewReceivedStateChanged(Lcom/meizu/media/camera/Camera;Z)V
    .locals 2
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "isReceived"    # Z

    .prologue
    .line 1895
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1900
    :goto_0
    return-void

    .line 1899
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onCameraPreviewStateChanged(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/OperationState;Lcom/meizu/media/camera/OperationState;)V
    .locals 5
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "prevState"    # Lcom/meizu/media/camera/OperationState;
    .param p3, "state"    # Lcom/meizu/media/camera/OperationState;

    .prologue
    .line 1907
    sget-object v2, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne p3, v2, :cond_3

    .line 1909
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1911
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;

    .line 1912
    .local v1, "request":Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;
    iget-object v2, v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/meizu/media/camera/Camera;

    if-ne v2, p1, :cond_0

    .line 1914
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraPreviewStateChanged() - Continue stopping preview for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1916
    iget-object v2, v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;->result:[Z

    iget v3, v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;->flags:I

    invoke-direct {p0, p1, v2, v3}, Lcom/meizu/media/camera/CameraThread;->stopCameraPreviewInternal(Lcom/meizu/media/camera/Camera;[ZI)Z

    .line 1909
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1919
    .end local v1    # "request":Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;
    :cond_1
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p3, :cond_3

    .line 1979
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 1924
    :cond_3
    sget-object v2, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-ne p3, v2, :cond_6

    .line 1926
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 1928
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;

    .line 1929
    .local v1, "request":Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v2, v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/meizu/media/camera/Camera;

    if-ne v2, p1, :cond_4

    .line 1931
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraPreviewStateChanged() - Continue starting preview for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1933
    iget-object v2, v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;->previewSize:Landroid/util/Size;

    iget-object v3, v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;->previewReceiver:Ljava/lang/Object;

    iget v4, v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;->flags:I

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/meizu/media/camera/CameraThread;->startCameraPreviewInternal(Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z

    .line 1926
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1936
    .end local v1    # "request":Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;
    :cond_5
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p3, :cond_2

    .line 1941
    .end local v0    # "i":I
    :cond_6
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 1945
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p3}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1948
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_8

    .line 1950
    sget-object v2, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-eq p3, v2, :cond_7

    sget-object v2, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-ne p3, v2, :cond_8

    .line 1952
    :cond_7
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "onCameraPreviewStateChanged() - Release media recorder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 1954
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    .line 1959
    :cond_8
    iget v2, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraPreviewStartFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_9

    .line 1960
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1963
    :cond_9
    sget-object v2, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne p3, v2, :cond_b

    .line 1966
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_a

    .line 1967
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1968
    :cond_a
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v2, v3, :cond_2

    .line 1969
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1974
    :cond_b
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_c

    .line 1975
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1976
    :cond_c
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v2, v3, :cond_2

    .line 1977
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private onCaptureCompleted(Lcom/meizu/media/camera/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 1986
    sget-object v0, Lcom/meizu/media/camera/Camera;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_CaptureFailedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1987
    sget-object v0, Lcom/meizu/media/camera/Camera;->EVENT_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_PictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1988
    sget-object v0, Lcom/meizu/media/camera/Camera;->EVENT_RAW_PICTURE_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPictureReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1989
    sget-object v0, Lcom/meizu/media/camera/Camera;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1990
    sget-object v0, Lcom/meizu/media/camera/Camera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1993
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 1998
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraThread;->m_IsPictureReceived:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2001
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2002
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2005
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultPhotoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/meizu/media/camera/CaptureCompleteReason;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/meizu/media/camera/CaptureCompleteReason;

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/meizu/media/camera/CameraThread;->completeCapture(Lcom/oneplus/base/Handle;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)Z

    .line 2009
    return-void

    .line 2005
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    goto :goto_0
.end method

.method private onCaptureFailed(Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .prologue
    .line 2016
    return-void
.end method

.method private onFocusStateChanged(Lcom/meizu/media/camera/FocusState;)V
    .locals 2
    .param p1, "focusState"    # Lcom/meizu/media/camera/FocusState;

    .prologue
    .line 2023
    sget-object v0, Lcom/meizu/media/camera/FocusState;->STARTING:Lcom/meizu/media/camera/FocusState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onFocusStateChanged() - Continue capturing photo"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->capturePhotoInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Z)Z

    .line 2030
    :cond_0
    return-void
.end method

.method private onMediaRecorderErrorReceived(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eq v0, p1, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRecorderErrorReceived() - Unknown media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    :goto_0
    return-void

    .line 2044
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 2053
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaRecorderErrorReceived() - What : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    :goto_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/meizu/media/camera/CaptureCompleteReason;->UNKNOWN_ERROR:Lcom/meizu/media/camera/CaptureCompleteReason;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->stopVideoCaptureInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2047
    :sswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaRecorderErrorReceived() - What : MEDIA_ERROR_SERVER_DIED, extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2050
    :sswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaRecorderErrorReceived() - What : MEDIA_RECORDER_ERROR_UNKNOWN, extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2044
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private onMediaRecorderInfoReceived(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x0

    .line 2066
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eq v0, p1, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRecorderInfoReceived() - Unknown media recorder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    :goto_0
    return-void

    .line 2073
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2087
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaRecorderInfoReceived() - What : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2076
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRecorderInfoReceived() - Max duration reached"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/meizu/media/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->stopVideoCaptureInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2080
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRecorderInfoReceived() - Max file size reached"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraThread;->m_IsMaxFileSizeDesignated:Z

    if-eqz v0, :cond_1

    .line 2082
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/meizu/media/camera/CaptureCompleteReason;->MAX_FILE_SIZE_REACHED:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->stopVideoCaptureInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2084
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    sget-object v1, Lcom/meizu/media/camera/CaptureCompleteReason;->STORAGE_FULL:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->stopVideoCaptureInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    goto :goto_0

    .line 2073
    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPictureReceived(Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 9
    .param p1, "e"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2096
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onPictureReceived() - Index : "

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2099
    iput-boolean v3, p0, Lcom/meizu/media/camera/CameraThread;->m_IsPictureReceived:Z

    .line 2102
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 2104
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/meizu/media/camera/media/ImagePlane;

    move-result-object v8

    .line 2105
    .local v8, "planes":[Lcom/meizu/media/camera/media/ImagePlane;
    if-eqz v8, :cond_3

    array-length v0, v8

    if-ne v0, v3, :cond_3

    .line 2106
    aget-object v0, v8, v4

    invoke-virtual {v0}, Lcom/meizu/media/camera/media/ImagePlane;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_LastCapturedJpeg:[B

    .line 2112
    .end local v8    # "planes":[Lcom/meizu/media/camera/media/ImagePlane;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    iget v0, v0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-eq v0, v3, :cond_2

    .line 2114
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

    if-eqz v0, :cond_1

    .line 2115
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultBurstShutterSoundHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v0, v1, v4}, Lcom/meizu/media/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 2116
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;I)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2120
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/media/camera/MediaResultInfo;

    .line 2121
    .local v7, "info":Lcom/meizu/media/camera/MediaResultInfo;
    if-nez v7, :cond_6

    .line 2123
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->isBurstPhotoCapture()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2124
    new-instance v0, Lcom/meizu/media/camera/io/PhotoSaveTask;

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v0, v1, v2, p1}, Lcom/meizu/media/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->saveMedia(Lcom/meizu/media/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    .line 2136
    :goto_1
    return-void

    .line 2108
    .end local v7    # "info":Lcom/meizu/media/camera/MediaResultInfo;
    .restart local v8    # "planes":[Lcom/meizu/media/camera/media/ImagePlane;
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onPictureReceived() - Invalid picture planes"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2127
    .end local v8    # "planes":[Lcom/meizu/media/camera/media/ImagePlane;
    .restart local v7    # "info":Lcom/meizu/media/camera/MediaResultInfo;
    :cond_4
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v0

    if-nez v0, :cond_5

    .line 2128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/media/camera/CameraThread;->m_LastBurstPhotoTime:J

    .line 2129
    :cond_5
    new-instance v0, Lcom/meizu/media/camera/io/BurstPhotoSaveTask;

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    iget-wide v4, p0, Lcom/meizu/media/camera/CameraThread;->m_LastBurstPhotoTime:J

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/meizu/media/camera/io/BurstPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CameraCaptureEventArgs;JI)V

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->saveMedia(Lcom/meizu/media/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 2132
    :cond_6
    iget-object v0, v7, Lcom/meizu/media/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v0, :cond_7

    .line 2133
    new-instance v0, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    iget-object v3, v7, Lcom/meizu/media/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Landroid/net/Uri;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->saveMedia(Lcom/meizu/media/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 2135
    :cond_7
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onPictureReceived() - No output URI specified, no need to save picture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onRawPictureReceived(Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 8
    .param p1, "e"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .prologue
    .line 2141
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "onRawPictureReceived() - Index : "

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getFrameIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2144
    const/4 v1, 0x0

    .line 2145
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v0, 0x0

    .line 2147
    .local v0, "captureResult":Landroid/hardware/camera2/CaptureResult;
    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/Camera;

    sget-object v6, Lcom/meizu/media/camera/Camera;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v5, :cond_0

    .line 2148
    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/Camera;

    sget-object v6, Lcom/meizu/media/camera/Camera;->PROP_CAMERA_CHARACTERISTICS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    .line 2150
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getCaptureResult()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/hardware/camera2/CaptureResult;

    if-eqz v5, :cond_1

    .line 2151
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getCaptureResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    .line 2153
    .restart local v0    # "captureResult":Landroid/hardware/camera2/CaptureResult;
    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 2155
    :cond_2
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "onRawPictureReceived() - parameters type is incorrect"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    :goto_0
    return-void

    .line 2160
    :cond_3
    new-instance v2, Landroid/hardware/camera2/DngCreator;

    invoke-direct {v2, v1, v0}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    .line 2161
    .local v2, "dngCreator":Landroid/hardware/camera2/DngCreator;
    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/Camera;

    sget-object v6, Lcom/meizu/media/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2162
    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/Camera;

    sget-object v6, Lcom/meizu/media/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    .line 2163
    :cond_4
    const/4 v3, 0x1

    .line 2164
    .local v3, "orientation":I
    sget-object v6, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$base$Rotation:[I

    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/Camera;

    sget-object v7, Lcom/meizu/media/camera/Camera;->PROP_PICTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v7}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Rotation;

    invoke-virtual {v5}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 2179
    :goto_1
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    .line 2182
    new-instance v4, Lcom/meizu/media/camera/io/RawPhotoSaveTask;

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v4, v5, v6, p1, v2}, Lcom/meizu/media/camera/io/RawPhotoSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CameraCaptureEventArgs;Landroid/hardware/camera2/DngCreator;)V

    .line 2185
    .local v4, "task":Lcom/meizu/media/camera/io/RawPhotoSaveTask;
    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraThread;->saveMedia(Lcom/meizu/media/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2167
    .end local v4    # "task":Lcom/meizu/media/camera/io/RawPhotoSaveTask;
    :pswitch_0
    const/4 v3, 0x1

    .line 2168
    goto :goto_1

    .line 2170
    :pswitch_1
    const/4 v3, 0x6

    .line 2171
    goto :goto_1

    .line 2173
    :pswitch_2
    const/4 v3, 0x3

    .line 2174
    goto :goto_1

    .line 2176
    :pswitch_3
    const/16 v3, 0x8

    goto :goto_1

    .line 2164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onSavingQueueStateChanged(Z)V
    .locals 2
    .param p1, "isFull"    # Z

    .prologue
    .line 2193
    if-nez p1, :cond_1

    .line 2201
    :cond_0
    :goto_0
    return-void

    .line 2196
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onSavingQueueStateChanged() - Media saving queue is full"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    sget-object v1, Lcom/meizu/media/camera/CaptureCompleteReason;->SAVING_QUEUE_FULL:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V

    goto :goto_0
.end method

.method private onShutter(I)V
    .locals 3
    .param p1, "frameIndex"    # I

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Index : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2209
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2211
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Not capturing"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    :cond_0
    :goto_0
    return-void

    .line 2216
    :cond_1
    if-nez p1, :cond_2

    .line 2218
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    iget-boolean v0, v0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->isFastCaptureEnabled:Z

    if-nez v0, :cond_0

    .line 2220
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2738

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2224
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    iget v0, v0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_3

    .line 2229
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->playDefaultShutterSound()V

    .line 2233
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v1, v2, p1}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;I)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method

.method private onShutter(Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/meizu/media/camera/CaptureEventArgs;

    .prologue
    .line 2241
    if-nez p1, :cond_0

    .line 2243
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - No event data"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    :goto_0
    return-void

    .line 2246
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2248
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutter() - Unknown capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2253
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method

.method private openCameraInternal(Lcom/meizu/media/camera/Camera;I)Z
    .locals 6
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2416
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2418
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCameraInternal() - Camera "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not contained in available camera list"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    :goto_0
    return v3

    .line 2423
    :cond_0
    sget-object v4, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$State;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 2433
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "openCameraInternal() - Open "

    invoke-static {v1, v4, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2436
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Lcom/meizu/media/camera/Camera;->open(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2438
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCameraInternal() - Fail to open "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2442
    :catch_0
    move-exception v0

    .line 2444
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :pswitch_0
    move v3, v2

    .line 2427
    goto :goto_0

    .line 2448
    :cond_1
    sget-object v4, Lcom/meizu/media/camera/Camera;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2451
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/Camera;->PROP_IS_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2452
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2454
    iget-boolean v1, p0, Lcom/meizu/media/camera/CameraThread;->m_IsHighComponentsCreated:Z

    if-nez v1, :cond_2

    .line 2456
    iput-boolean v2, p0, Lcom/meizu/media/camera/CameraThread;->m_IsHighComponentsCreated:Z

    .line 2457
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    :cond_2
    move v3, v2

    .line 2461
    goto :goto_0

    :cond_3
    move v1, v3

    .line 2448
    goto :goto_1

    .line 2423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private prepareMediaRecorder(Lcom/meizu/media/camera/Camera;Landroid/media/MediaRecorder;Lcom/meizu/media/camera/CameraThread$VideoParams;)Z
    .locals 12
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p3, "params"    # Lcom/meizu/media/camera/CameraThread$VideoParams;

    .prologue
    .line 2542
    const/4 v3, 0x0

    .line 2543
    .local v3, "isProfilePrepared":Z
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2545
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2547
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    iget-object v0, v7, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;->captureHandler:Lcom/meizu/media/camera/VideoCaptureHandler;

    .line 2550
    .local v0, "captureHandler":Lcom/meizu/media/camera/VideoCaptureHandler;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/meizu/media/camera/VideoCaptureHandler;->prepareCamcorderProfile(Lcom/meizu/media/camera/Camera;Landroid/media/MediaRecorder;Lcom/meizu/media/camera/CameraThread$VideoParams;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2552
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepareMediaRecorder() - Profile is prepared by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    iput-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2554
    const/4 v3, 0x1

    .line 2571
    .end local v0    # "captureHandler":Lcom/meizu/media/camera/VideoCaptureHandler;
    .end local v2    # "i":I
    :cond_0
    if-nez v3, :cond_5

    .line 2574
    :try_start_1
    iget-object v6, p3, Lcom/meizu/media/camera/CameraThread$VideoParams;->resolution:Lcom/meizu/media/camera/media/Resolution;

    .line 2575
    .local v6, "resolution":Lcom/meizu/media/camera/media/Resolution;
    invoke-virtual {v6}, Lcom/meizu/media/camera/media/Resolution;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/meizu/media/camera/media/Resolution;->getHeight()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/meizu/media/camera/CameraThread;->createCamcorderProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    .line 2576
    .local v5, "profile":Landroid/media/CamcorderProfile;
    if-nez v5, :cond_2

    .line 2578
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepareMediaRecorder() - Unknown resolution : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/meizu/media/camera/Camera;->unbindMediaRecorder(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2580
    const/4 v7, 0x0

    .line 2675
    .end local v5    # "profile":Landroid/media/CamcorderProfile;
    .end local v6    # "resolution":Lcom/meizu/media/camera/media/Resolution;
    :goto_1
    return v7

    .line 2558
    .restart local v0    # "captureHandler":Lcom/meizu/media/camera/VideoCaptureHandler;
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .line 2560
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepareMediaRecorder() - Fail to prepare media recorder by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2561
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/meizu/media/camera/Camera;->unbindMediaRecorder(I)Z

    .line 2562
    const/4 v7, 0x0

    goto :goto_1

    .line 2545
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 2584
    .end local v0    # "captureHandler":Lcom/meizu/media/camera/VideoCaptureHandler;
    .end local v2    # "i":I
    .restart local v5    # "profile":Landroid/media/CamcorderProfile;
    .restart local v6    # "resolution":Lcom/meizu/media/camera/media/Resolution;
    :cond_2
    const/4 v7, 0x5

    :try_start_2
    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2587
    invoke-virtual {p2, v5}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 2599
    sget-object v7, Lcom/meizu/media/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/Rotation;

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v7

    sget-object v8, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v8}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v8

    sub-int v4, v7, v8

    .line 2600
    .local v4, "orientation":I
    sget-object v7, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v7}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v7, v8, :cond_3

    .line 2601
    neg-int v4, v4

    .line 2602
    :cond_3
    if-gez v4, :cond_4

    .line 2603
    add-int/lit16 v4, v4, 0x168

    .line 2604
    :cond_4
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "prepareMediaRecorder() - Orientation : "

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2605
    invoke-virtual {p2, v4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2609
    .end local v4    # "orientation":I
    .end local v5    # "profile":Landroid/media/CamcorderProfile;
    .end local v6    # "resolution":Lcom/meizu/media/camera/media/Resolution;
    :cond_5
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_LocationManager:Lcom/meizu/media/camera/location/LocationManager;

    if-eqz v7, :cond_6

    .line 2610
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_LocationManager:Lcom/meizu/media/camera/location/LocationManager;

    sget-object v8, Lcom/meizu/media/camera/location/LocationManager;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/meizu/media/camera/location/LocationManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    iput-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    .line 2612
    :cond_6
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    if-eqz v7, :cond_7

    .line 2613
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v7, v8

    iget-object v8, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 2617
    :cond_7
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v7, :cond_c

    .line 2618
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 2623
    :goto_2
    iget-wide v8, p3, Lcom/meizu/media/camera/CameraThread$VideoParams;->maxFileSize:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    iget-wide v8, p3, Lcom/meizu/media/camera/CameraThread$VideoParams;->maxFileSize:J

    sget-object v7, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {p0, v7}, Lcom/meizu/media/camera/CameraThread;->getFreeSpace(Lcom/meizu/media/camera/media/MediaType;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_d

    .line 2625
    :cond_8
    sget-object v7, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {p0, v7}, Lcom/meizu/media/camera/CameraThread;->getFreeSpace(Lcom/meizu/media/camera/media/MediaType;)J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 2626
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/meizu/media/camera/CameraThread;->m_IsMaxFileSizeDesignated:Z

    .line 2633
    :goto_3
    iget-wide v8, p3, Lcom/meizu/media/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    .line 2634
    iget-wide v8, p3, Lcom/meizu/media/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    long-to-int v7, v8

    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2637
    :cond_9
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-nez v7, :cond_a

    .line 2639
    new-instance v7, Lcom/meizu/media/camera/CameraThread$28;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/CameraThread$28;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 2648
    :cond_a
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-nez v7, :cond_b

    .line 2650
    new-instance v7, Lcom/meizu/media/camera/CameraThread$29;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/CameraThread$29;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    iput-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 2659
    :cond_b
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2660
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2663
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "prepareMediaRecorder() - MediaRecorder.prepare [start]"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->prepare()V

    .line 2665
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "prepareMediaRecorder() - MediaRecorder.prepare [end]"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 2620
    :cond_c
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2670
    :catch_1
    move-exception v1

    .line 2672
    .restart local v1    # "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v8, "prepareMediaRecorder() - Fail to prepare media recorder "

    invoke-static {v7, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2673
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 2674
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/meizu/media/camera/Camera;->unbindMediaRecorder(I)Z

    .line 2675
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2630
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_d
    :try_start_3
    iget-wide v8, p3, Lcom/meizu/media/camera/CameraThread$VideoParams;->maxFileSize:J

    invoke-virtual {p2, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 2631
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/meizu/media/camera/CameraThread;->m_IsMaxFileSizeDesignated:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private prepareVideoFilePath()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2489
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->closeVideoFileDescriptor()V

    .line 2492
    iget-object v8, p0, Lcom/meizu/media/camera/CameraThread;->m_Context:Landroid/content/Context;

    instance-of v8, v8, Lcom/meizu/media/camera/CameraActivity;

    if-eqz v8, :cond_0

    .line 2495
    iget-object v8, p0, Lcom/meizu/media/camera/CameraThread;->m_Context:Landroid/content/Context;

    check-cast v8, Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/meizu/media/camera/CameraActivity;->isVideoServiceMode()Z

    move-result v7

    .line 2496
    .local v7, "videoService":Z
    if-eqz v7, :cond_0

    .line 2498
    sget-object v8, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/MediaResultInfo;

    .line 2499
    .local v5, "info":Lcom/meizu/media/camera/MediaResultInfo;
    if-eqz v5, :cond_0

    iget-object v8, v5, Lcom/meizu/media/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 2503
    :try_start_0
    iget-object v8, p0, Lcom/meizu/media/camera/CameraThread;->m_Context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v11, v5, Lcom/meizu/media/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    const-string v12, "rw"

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2504
    iget-object v8, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v11, "prepareVideoFilePath() - Video file path : "

    iget-object v12, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 2534
    .end local v5    # "info":Lcom/meizu/media/camera/MediaResultInfo;
    .end local v7    # "videoService":Z
    :goto_0
    return v8

    .line 2506
    .restart local v5    # "info":Lcom/meizu/media/camera/MediaResultInfo;
    .restart local v7    # "videoService":Z
    :catch_0
    move-exception v3

    .line 2508
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v9, "prepareVideoFilePath() - Error when open extra output"

    invoke-static {v8, v9, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v8, v10

    .line 2509
    goto :goto_0

    .line 2518
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v5    # "info":Lcom/meizu/media/camera/MediaResultInfo;
    .end local v7    # "videoService":Z
    :cond_0
    iget-object v8, p0, Lcom/meizu/media/camera/CameraThread;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    iget-object v11, p0, Lcom/meizu/media/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    sget-object v12, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-static {v8, v11, v12}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v6

    .line 2519
    .local v6, "storage":Lcom/oneplus/io/Storage;
    invoke-static {v6}, Lcom/oneplus/io/StorageUtils;->getDcimPath(Lcom/oneplus/io/Storage;)Ljava/lang/String;

    move-result-object v1

    .line 2520
    .local v1, "dcimPath":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2521
    sget-object v8, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2522
    :cond_1
    new-instance v2, Ljava/io/File;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v10

    const-string v11, "Camera"

    aput-object v11, v8, v9

    invoke-static {v8}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2523
    .local v2, "directory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2525
    iget-object v8, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prepareVideoFilePath() - Fail to create "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v10

    .line 2526
    goto :goto_0

    .line 2530
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2531
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VID_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".mp4"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2532
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    .line 2533
    iget-object v8, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prepareVideoFilePath() - Video file path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 2534
    goto/16 :goto_0
.end method

.method private removePhotoCaptureHandler(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    .prologue
    .line 2693
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->verifyAccess()V

    .line 2694
    sget-object v1, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2701
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove capture handler when photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2705
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2708
    :goto_0
    return-void

    .line 2707
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePhotoCaptureHandler() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2694
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private removeVideoCaptureHandler(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    .prologue
    .line 2715
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->verifyAccess()V

    .line 2716
    sget-object v1, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2723
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove capture handler when video capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2727
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2730
    :goto_0
    return-void

    .line 2729
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVideoCaptureHandler() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2716
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private resetCapturingRawPhotoProperty(Lcom/meizu/media/camera/media/MediaEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/meizu/media/camera/media/MediaEventArgs;

    .prologue
    .line 2735
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 2736
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-eqz v0, :cond_1

    .line 2738
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2740
    invoke-virtual {p1}, Lcom/meizu/media/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2742
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/meizu/media/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2743
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2745
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2754
    :cond_0
    :goto_0
    return-void

    .line 2752
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "resetCapturingRawPhotoProperty() - camera is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMediaTypeInternal(Lcom/meizu/media/camera/media/MediaType;)Z
    .locals 7
    .param p1, "mediaType"    # Lcom/meizu/media/camera/media/MediaType;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2842
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move v4, v3

    .line 2919
    :goto_0
    return v4

    .line 2844
    :cond_0
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v5, "setMediaTypeInternal() - Media type : "

    invoke-static {v2, v5, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2845
    sget-object v2, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 2879
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaTypeInternal() - Unknown media type : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2849
    :pswitch_0
    sget-object v5, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_1

    .line 2855
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaTypeInternal() - Current video capture state is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2858
    :pswitch_2
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2884
    :cond_1
    :goto_1
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 2886
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    sget-object v5, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_2

    .line 2899
    const/4 v1, 0x0

    .line 2904
    .local v1, "needRestartPreview":Z
    :cond_2
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2907
    if-eqz v0, :cond_3

    .line 2908
    sget-object v5, Lcom/meizu/media/camera/Camera;->PROP_IS_RECORDING_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne p1, v2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2911
    :cond_3
    if-eqz v1, :cond_4

    .line 2913
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "setMediaTypeInternal() - Restart preview"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    invoke-virtual {p0, v0, v6, v6}, Lcom/meizu/media/camera/CameraThread;->startCameraPreview(Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2915
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "setMediaTypeInternal() - Fail to restart preview"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v4, v3

    .line 2919
    goto/16 :goto_0

    .line 2864
    .end local v0    # "camera":Lcom/meizu/media/camera/Camera;
    .end local v1    # "needRestartPreview":Z
    :pswitch_3
    sget-object v5, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_3

    .line 2870
    :pswitch_4
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaTypeInternal() - Current photo capture state is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2873
    :pswitch_5
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2874
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2890
    .restart local v0    # "camera":Lcom/meizu/media/camera/Camera;
    :pswitch_6
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v5, "setMediaTypeInternal() - Stop preview to change media type"

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    const/4 v1, 0x1

    .line 2892
    .restart local v1    # "needRestartPreview":Z
    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->stopCameraPreview(Lcom/meizu/media/camera/Camera;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2894
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "setMediaTypeInternal() - Fail to stop preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 2908
    goto :goto_2

    .line 2845
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2849
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2886
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 2864
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private startCameraPreviewInternal(Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z
    .locals 8
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "receiver"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3089
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3091
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;

    .line 3092
    .local v2, "stopRequest":Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;
    iget-object v3, v2, Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/meizu/media/camera/Camera;

    if-ne v3, p1, :cond_1

    .line 3094
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "startCameraPreviewInternal() - Cancel pending preview stop rquest"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3101
    .end local v2    # "stopRequest":Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/meizu/media/camera/CameraThread;->openCameraInternal(Lcom/meizu/media/camera/Camera;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3103
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v5, "startCameraPreviewInternal() - Fail to open camera"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 3176
    :goto_1
    return v3

    .line 3089
    .restart local v2    # "stopRequest":Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3108
    .end local v2    # "stopRequest":Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;
    :cond_2
    sget-object v6, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v3}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_0

    .line 3138
    :cond_3
    :goto_2
    :pswitch_0
    if-eqz p3, :cond_6

    .line 3140
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCameraPreviewInternal() - Change preview receiver to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3, p3}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3147
    :goto_3
    if-eqz p2, :cond_7

    .line 3149
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCameraPreviewInternal() - Preview size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3150
    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3, p2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3156
    :goto_4
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCameraPreviewInternal() - Start preview for camera "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    invoke-interface {p1, v4}, Lcom/meizu/media/camera/Camera;->startPreview(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3159
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCameraPreviewInternal() - Fail to start preview for camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 3160
    goto/16 :goto_1

    .line 3114
    :pswitch_1
    if-eqz p3, :cond_3

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p3, :cond_3

    .line 3116
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "startCameraPreviewInternal() - Preview receiver changed, stop preview first"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    invoke-interface {p1, v4}, Lcom/meizu/media/camera/Camera;->stopPreview(I)V

    goto/16 :goto_2

    .line 3121
    :pswitch_2
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "startCameraPreviewInternal() - Start while stopping"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_5
    if-ltz v0, :cond_5

    .line 3124
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;

    .line 3125
    .local v1, "startRequest":Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v3, v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/meizu/media/camera/Camera;

    if-ne v3, p1, :cond_4

    .line 3127
    iput-object p2, v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;->previewSize:Landroid/util/Size;

    .line 3128
    iput-object p3, v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;->previewReceiver:Ljava/lang/Object;

    .line 3129
    iput p4, v1, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;->flags:I

    move v3, v5

    .line 3130
    goto/16 :goto_1

    .line 3122
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 3133
    .end local v1    # "startRequest":Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;
    :cond_5
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    new-instance v4, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;-><init>(Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    .line 3134
    goto/16 :goto_1

    .line 3144
    :cond_6
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "startCameraPreviewInternal() - Use current preview receiver"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3153
    :cond_7
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "startCameraPreviewInternal() - Use current preview size"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3164
    :cond_8
    iput p4, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraPreviewStartFlags:I

    .line 3167
    iget-boolean v3, p0, Lcom/meizu/media/camera/CameraThread;->m_IsNormalComponentsCreated:Z

    if-nez v3, :cond_9

    .line 3169
    iput-boolean v5, p0, Lcom/meizu/media/camera/CameraThread;->m_IsNormalComponentsCreated:Z

    .line 3170
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->bindToHighComponents()V

    .line 3171
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v6, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p0, v7, v4

    invoke-virtual {v3, v6, v7}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 3172
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->bindToNormalComponents()V

    :cond_9
    move v3, v5

    .line 3176
    goto/16 :goto_1

    .line 3108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private stopCameraPreviewInternal(Lcom/meizu/media/camera/Camera;[ZI)Z
    .locals 8
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "result"    # [Z
    .param p3, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3257
    :try_start_0
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3259
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;

    .line 3260
    .local v2, "startRequest":Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;
    iget-object v5, v2, Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/meizu/media/camera/Camera;

    if-ne v5, p1, :cond_2

    .line 3262
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Remove pending start request"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStartRequests:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3269
    .end local v2    # "startRequest":Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;
    :cond_0
    sget-object v5, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v5}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    if-ne v5, v6, :cond_3

    .line 3271
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Wait for preview start"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_PendingCameraPreviewStopRequests:Ljava/util/List;

    new-instance v6, Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;

    invoke-direct {v6, p1, p2, p3}, Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;-><init>(Lcom/meizu/media/camera/Camera;[ZI)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3336
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v3

    .line 3257
    .restart local v1    # "i":I
    .restart local v2    # "startRequest":Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3277
    .end local v2    # "startRequest":Lcom/meizu/media/camera/CameraThread$CameraPreviewStartRequest;
    :cond_3
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Stop preview [start]"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3278
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Lcom/meizu/media/camera/Camera;->stopPreview(I)V

    .line 3279
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Stop preview [end]"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3284
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Stop video recording"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    sget-object v6, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/meizu/media/camera/CameraThread;->stopVideoCaptureInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    .line 3289
    :cond_4
    if-eqz p2, :cond_1

    .line 3291
    sget-object v5, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v5}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/meizu/media/camera/OperationState;->STOPPING:Lcom/meizu/media/camera/OperationState;

    if-eq v5, v6, :cond_6

    .line 3293
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3295
    :try_start_1
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Notify waiting thread"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, p2, v5

    .line 3297
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 3298
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 3324
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 3326
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v5, "stopCameraPreviewInternal() - Error stopping camera preview"

    invoke-static {v3, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3327
    if-eqz p2, :cond_5

    .line 3329
    monitor-enter p2

    .line 3331
    :try_start_3
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v5, "stopCameraPreviewInternal() - Notify waiting thread"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3332
    const/4 v3, 0x0

    const/4 v5, 0x1

    aput-boolean v5, p2, v3

    .line 3333
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 3334
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    move v3, v4

    .line 3336
    goto :goto_1

    .line 3302
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    :cond_6
    :try_start_4
    iget-object v5, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v6, "stopCameraPreviewInternal() - Wait for camera preview stop"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    sget-object v5, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/meizu/media/camera/CameraThread$33;

    invoke-direct {v6, p0, p2, p1}, Lcom/meizu/media/camera/CameraThread$33;-><init>(Lcom/meizu/media/camera/CameraThread;[ZLcom/meizu/media/camera/Camera;)V

    invoke-interface {p1, v5, v6}, Lcom/meizu/media/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 3334
    .end local v1    # "i":I
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method private stopPhotoCapture(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    .prologue
    .line 3344
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3345
    sget-object v0, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-direct {p0, p1, v0}, Lcom/meizu/media/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V

    .line 3357
    :cond_0
    :goto_0
    return-void

    .line 3346
    :cond_1
    new-instance v0, Lcom/meizu/media/camera/CameraThread$34;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/CameraThread$34;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3355
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopPhotoCapture() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopPhotoCaptureInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V
    .locals 6
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;
    .param p2, "reason"    # Lcom/meizu/media/camera/CaptureCompleteReason;

    .prologue
    .line 3364
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    if-eq v2, p1, :cond_1

    .line 3366
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Invalid handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3410
    :cond_0
    :goto_0
    return-void

    .line 3370
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3373
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_2

    .line 3375
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Stop when locking focus"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    sget-object v4, Lcom/meizu/media/camera/CaptureCompleteReason;->CANCELLED:Lcom/meizu/media/camera/CaptureCompleteReason;

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/meizu/media/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;Z)Z

    goto :goto_0

    .line 3381
    :cond_2
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 3382
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_3

    .line 3384
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - No camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3391
    :cond_3
    :try_start_0
    iget-object v2, p1, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    if-nez v2, :cond_4

    .line 3393
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Use default photo capture stop process"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread;->m_PreparedPhotoCaptureCompleteReason:Lcom/meizu/media/camera/CaptureCompleteReason;

    .line 3395
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_CameraCaptureHandle:Lcom/oneplus/base/Handle;

    .line 3396
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_BurstCaptureSoundStreamHandle:Lcom/oneplus/base/Handle;

    .line 3397
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2738

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3406
    :catch_0
    move-exception v1

    .line 3408
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Fail to stop capture"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3401
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopPhotoCaptureInternal() - Use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to stop capture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    iget-object v2, p1, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    invoke-interface {v2, v0, p1, p2}, Lcom/meizu/media/camera/PhotoCaptureHandler;->stopCapture(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3403
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "stopPhotoCaptureInternal() - Fail to stop capture"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private stopVideoCapture(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V
    .locals 2
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;
    .param p2, "reason"    # Lcom/meizu/media/camera/CaptureCompleteReason;
    .param p3, "flags"    # I

    .prologue
    .line 3416
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3417
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraThread;->stopVideoCaptureInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    .line 3429
    :cond_0
    :goto_0
    return-void

    .line 3418
    :cond_1
    new-instance v0, Lcom/meizu/media/camera/CameraThread$35;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraThread$35;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3427
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopVideoCapture() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopVideoCaptureInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V
    .locals 17
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;
    .param p2, "reason"    # Lcom/meizu/media/camera/CaptureCompleteReason;
    .param p3, "flags"    # I

    .prologue
    .line 3436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_0

    if-nez p1, :cond_1

    .line 3438
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "stopVideoCaptureInternal() - Invalid handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3570
    :goto_0
    return-void

    .line 3443
    :cond_1
    sget-object v4, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v3}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 3451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoCaptureInternal() - Video capture state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3456
    :pswitch_0
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/VideoCaptureState;->STARTING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v3, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x271a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v15, 0x1

    .line 3459
    .local v15, "isStarting":Z
    :goto_1
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/VideoCaptureState;->STOPPING:Lcom/meizu/media/camera/VideoCaptureState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3462
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x272e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "stopVideoCaptureInternal() - Stop video snapshot and wait"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/media/camera/CameraThread;->m_LastVideoCaptureCompleteReason:Lcom/meizu/media/camera/CaptureCompleteReason;

    .line 3469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    sget-object v4, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/meizu/media/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V

    goto/16 :goto_0

    .line 3456
    .end local v15    # "isStarting":Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 3474
    .restart local v15    # "isStarting":Z
    :cond_3
    const/4 v14, 0x0

    .line 3475
    .local v14, "ignoreVideo":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_5

    if-nez v15, :cond_5

    .line 3477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorderStartTime:J

    sub-long v12, v4, v6

    .line 3478
    .local v12, "duration":J
    const-wide/16 v4, 0x3e8

    cmp-long v3, v12, v4

    if-gez v3, :cond_4

    .line 3482
    const-wide/16 v4, 0x3e8

    sub-long v10, v4, v12

    .line 3483
    .local v10, "delayMillis":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoCaptureInternal() - Duration is too short : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, delay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 3489
    .end local v10    # "delayMillis":J
    :cond_4
    :goto_2
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/media/camera/Camera;

    .line 3490
    .local v8, "camera":Lcom/meizu/media/camera/Camera;
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Lcom/meizu/media/camera/Camera;->stopVideoRecording(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3492
    const-wide/16 v4, 0x3e8

    cmp-long v3, v12, v4

    if-gez v3, :cond_5

    .line 3493
    const/4 v14, 0x1

    .line 3498
    .end local v8    # "camera":Lcom/meizu/media/camera/Camera;
    .end local v12    # "duration":J
    :cond_5
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoStopSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 3502
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;->complete()V

    .line 3505
    if-eqz v15, :cond_7

    .line 3507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "stopVideoCaptureInternal() - Stop while starting"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x271a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3509
    sget-object v3, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_7

    .line 3510
    sget-object p2, Lcom/meizu/media/camera/CaptureCompleteReason;->CANCELLED:Lcom/meizu/media/camera/CaptureCompleteReason;

    .line 3514
    :cond_7
    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/media/camera/Camera;

    .line 3515
    .restart local v8    # "camera":Lcom/meizu/media/camera/Camera;
    if-nez v15, :cond_9

    .line 3517
    if-nez v14, :cond_b

    .line 3519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_9

    .line 3522
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;->captureHandler:Lcom/meizu/media/camera/VideoCaptureHandler;

    .line 3523
    .local v2, "videoCaptureHandler":Lcom/meizu/media/camera/VideoCaptureHandler;
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/meizu/media/camera/VideoCaptureHandler;->saveVideo(Lcom/meizu/media/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3526
    :cond_8
    new-instance v16, Lcom/meizu/media/camera/io/VideoSaveTask;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5, v3}, Lcom/meizu/media/camera/io/VideoSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;)V

    .line 3527
    .local v16, "saveTask":Lcom/meizu/media/camera/io/VideoSaveTask;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraThread;->saveMedia(Lcom/meizu/media/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;

    .line 3549
    .end local v2    # "videoCaptureHandler":Lcom/meizu/media/camera/VideoCaptureHandler;
    .end local v16    # "saveTask":Lcom/meizu/media/camera/io/VideoSaveTask;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_a

    .line 3551
    sget-object v4, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v3}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    .line 3560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "stopVideoCaptureInternal() - Release media recorder after preview start or stop"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3566
    :cond_a
    :goto_4
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Lcom/meizu/media/camera/Camera;->unbindMediaRecorder(I)Z

    .line 3569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    if-nez v15, :cond_d

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/meizu/media/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;Z)Z

    goto/16 :goto_0

    .line 3533
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoCaptureInternal() - Delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3536
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_c

    .line 3537
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 3541
    :catch_0
    move-exception v9

    .line 3543
    .local v9, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoCaptureInternal() - Fail to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/CameraThread;->m_VideoFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 3539
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_c
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/meizu/media/camera/CameraThread;->closeVideoFileDescriptor()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 3555
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "stopVideoCaptureInternal() - Release media recorder"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 3557
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/media/camera/CameraThread;->m_MediaRecorder:Landroid/media/MediaRecorder;

    goto/16 :goto_4

    .line 3569
    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    .line 3486
    .end local v8    # "camera":Lcom/meizu/media/camera/Camera;
    .restart local v10    # "delayMillis":J
    .restart local v12    # "duration":J
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 3443
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3551
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V
    .locals 3
    .param p1, "builders"    # [Lcom/oneplus/base/component/ComponentBuilder;

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 681
    :goto_0
    return-void

    .line 664
    :cond_0
    monitor-enter p0

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_1

    .line 668
    new-instance v0, Lcom/meizu/media/camera/CameraThread$13;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/CameraThread$13;-><init>(Lcom/meizu/media/camera/CameraThread;[Lcom/oneplus/base/component/ComponentBuilder;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 679
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 678
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final capturePhoto()Lcom/meizu/media/camera/CaptureHandle;
    .locals 2

    .prologue
    .line 823
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->capturePhoto(II)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public final capturePhoto(I)Lcom/meizu/media/camera/CaptureHandle;
    .locals 1
    .param p1, "frameCount"    # I

    .prologue
    .line 834
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/media/camera/CameraThread;->capturePhoto(II)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public final capturePhoto(II)Lcom/meizu/media/camera/CaptureHandle;
    .locals 4
    .param p1, "frameCount"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 850
    if-nez p1, :cond_1

    .line 852
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "capturePhoto() - Invalid frame count"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 879
    :cond_0
    :goto_0
    return-object v0

    .line 857
    :cond_1
    new-instance v0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;-><init>(Lcom/meizu/media/camera/CameraThread;II)V

    .line 860
    .local v0, "handle":Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 862
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/meizu/media/camera/CameraThread;->capturePhotoInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 864
    goto :goto_0

    .line 866
    :cond_2
    new-instance v2, Lcom/meizu/media/camera/CameraThread$21;

    invoke-direct {v2, p0, v0}, Lcom/meizu/media/camera/CameraThread$21;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;)V

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 875
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "capturePhoto() - Create handle "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 878
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v3, "capturePhoto() - Fail to perform cross-thread operation"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 879
    goto :goto_0
.end method

.method public final captureVideo(Lcom/meizu/media/camera/CameraThread$VideoParams;)Lcom/meizu/media/camera/CaptureHandle;
    .locals 6
    .param p1, "params"    # Lcom/meizu/media/camera/CameraThread$VideoParams;

    .prologue
    const/4 v2, 0x0

    .line 1090
    if-nez p1, :cond_1

    .line 1092
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "captureVideo() - No video parameters"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1125
    :cond_0
    :goto_0
    return-object v0

    .line 1095
    :cond_1
    iget-object v1, p1, Lcom/meizu/media/camera/CameraThread$VideoParams;->resolution:Lcom/meizu/media/camera/media/Resolution;

    .line 1096
    .local v1, "resolution":Lcom/meizu/media/camera/media/Resolution;
    if-nez v1, :cond_2

    .line 1098
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "captureVideo() - No video resolution"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1099
    goto :goto_0

    .line 1101
    :cond_2
    invoke-virtual {v1}, Lcom/meizu/media/camera/media/Resolution;->getTargetType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-eq v3, v4, :cond_3

    .line 1103
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "captureVideo() - Invalid resolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1104
    goto :goto_0

    .line 1106
    :cond_3
    new-instance v0, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraThread$VideoParams;->clone()Lcom/meizu/media/camera/CameraThread$VideoParams;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoParams;)V

    .line 1107
    .local v0, "handle":Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1109
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/meizu/media/camera/CameraThread;->captureVideoInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 1111
    goto :goto_0

    .line 1113
    :cond_4
    new-instance v3, Lcom/meizu/media/camera/CameraThread$22;

    invoke-direct {v3, p0, v0}, Lcom/meizu/media/camera/CameraThread$22;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;)V

    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1124
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "captureVideo() - Fail to perform cross-thread operation"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1125
    goto :goto_0
.end method

.method public checkRemainingMediaCount()V
    .locals 2

    .prologue
    const/16 v1, 0x2724

    .line 1269
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->checkRemainingMediaCountInternal()V

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "checkRemainingMediaCount() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final closeCamera(Lcom/meizu/media/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 1387
    if-nez p1, :cond_1

    .line 1389
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera() - No camera to close"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1394
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1395
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->closeCameraInternal(Lcom/meizu/media/camera/Camera;)V

    goto :goto_0

    .line 1396
    :cond_2
    new-instance v0, Lcom/meizu/media/camera/CameraThread$23;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/CameraThread$23;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final closeCameras()V
    .locals 2

    .prologue
    .line 1425
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->closeCamerasInternal()V

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_CloseCamerasRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "closeCameras() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final completeCapture(Lcom/oneplus/base/Handle;Lcom/meizu/media/camera/CaptureHandle;)Z
    .locals 1
    .param p1, "captureHandlerHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "handle"    # Lcom/meizu/media/camera/CaptureHandle;

    .prologue
    .line 1464
    sget-object v0, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/media/camera/CameraThread;->completeCapture(Lcom/oneplus/base/Handle;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)Z

    move-result v0

    return v0
.end method

.method public final completeCapture(Lcom/oneplus/base/Handle;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)Z
    .locals 3
    .param p1, "captureHandlerHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "handle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p3, "reason"    # Lcom/meizu/media/camera/CaptureCompleteReason;

    .prologue
    const/4 v0, 0x0

    .line 1478
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->verifyAccess()V

    .line 1479
    if-nez p1, :cond_0

    .line 1481
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "completeCapture() - No capture handler handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    :goto_0
    return v0

    .line 1484
    :cond_0
    if-nez p2, :cond_1

    .line 1486
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "completeCapture() - No capture handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1489
    :cond_1
    if-nez p3, :cond_2

    .line 1491
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "completeCapture() - No complete reason"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1496
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/media/camera/CameraThread;->completeCaptureInternal(Lcom/oneplus/base/Handle;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public disableVideoSnapshot()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 1668
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->verifyAccess()V

    .line 1671
    new-instance v0, Lcom/meizu/media/camera/CameraThread$24;

    const-string v1, "DisableVideoSnapshot"

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/CameraThread$24;-><init>(Lcom/meizu/media/camera/CameraThread;Ljava/lang/String;)V

    .line 1679
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1682
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1683
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1686
    :cond_0
    return-object v0
.end method

.method public findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;)TTComponent;"
        }
    .end annotation

    .prologue
    .line 1707
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    .line 1709
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findComponents(Ljava/lang/Class;)[Lcom/oneplus/base/component/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;)[TTComponent;"
        }
    .end annotation

    .prologue
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    const/4 v2, 0x0

    .line 1718
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponents(Ljava/lang/Class;[Ljava/lang/Object;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    .line 1720
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [Lcom/oneplus/base/component/Component;

    check-cast v0, [Lcom/oneplus/base/component/Component;

    goto :goto_0
.end method

.method protected final getComponentManager()Lcom/oneplus/base/component/ComponentManager;
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method public getLastCapturedJpeg()[B
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_LastCapturedJpeg:[B

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1798
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1824
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseThread;->handleMessage(Landroid/os/Message;)V

    .line 1827
    :goto_0
    return-void

    .line 1801
    :sswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraThread;->captureVideoInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Z)Z

    goto :goto_0

    .line 1805
    :sswitch_1
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->checkRemainingMediaCountInternal()V

    goto :goto_0

    .line 1809
    :sswitch_2
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->checkVideoRecordingLimitation()V

    goto :goto_0

    .line 1814
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraThread;->onShutter(I)V

    .line 1815
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    iput-boolean v1, v0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->isFastCaptureEnabled:Z

    goto :goto_0

    .line 1820
    :sswitch_4
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1798
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_4
        0x271a -> :sswitch_0
        0x2724 -> :sswitch_1
        0x272e -> :sswitch_2
        0x2738 -> :sswitch_3
    .end sparse-switch
.end method

.method public isShutterSoundNeeded()Z
    .locals 2

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v1, "ShutterSound"

    invoke-virtual {v0, v1}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 2262
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarted()V

    .line 2265
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->bindToInitialComponents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2266
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to bind components."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2267
    :cond_0
    return-void
.end method

.method protected onStarting()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2275
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarting()V

    .line 2278
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    const/16 v2, 0x100

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 2279
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/meizu/media/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2280
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/meizu/media/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2281
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/meizu/media/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2282
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/meizu/media/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2283
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/meizu/media/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2284
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v5}, Lcom/meizu/media/camera/CameraThread;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 2287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    .line 2288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    .line 2289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoSnapshotDisableHandles:Ljava/util/List;

    .line 2292
    new-instance v1, Lcom/oneplus/base/Settings;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_Context:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v5}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    .line 2295
    monitor-enter p0

    .line 2298
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    if-eqz v1, :cond_0

    .line 2300
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "onStarting() - Initial screen size : "

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2301
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2302
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    .line 2306
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialMediaType:Lcom/meizu/media/camera/media/MediaType;

    if-eqz v1, :cond_1

    .line 2308
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "onStarting() - Initial media type : "

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialMediaType:Lcom/meizu/media/camera/media/MediaType;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2309
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialMediaType:Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2310
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialMediaType:Lcom/meizu/media/camera/media/MediaType;

    sget-object v2, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v1, v2, :cond_1

    .line 2311
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2315
    :cond_1
    new-instance v1, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v1}, Lcom/oneplus/base/component/ComponentManager;-><init>()V

    iput-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    .line 2316
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/meizu/media/camera/CameraThread;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 2317
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/meizu/media/camera/CameraThread$25;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/CameraThread$25;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2325
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/meizu/media/camera/CameraThread$26;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/CameraThread$26;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2333
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2335
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 2336
    .local v0, "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2337
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2338
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 2340
    .end local v0    # "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2343
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v2, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 2344
    return-void

    .line 2340
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onStopping()V
    .locals 1

    .prologue
    .line 2352
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraThread;->closeCamerasInternal()V

    .line 2355
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0}, Lcom/oneplus/base/component/ComponentManager;->release()V

    .line 2358
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    .line 2359
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->release()V

    .line 2362
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2363
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_RawPhotoCaptureHandleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2366
    :cond_1
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStopping()V

    .line 2367
    return-void
.end method

.method public final openCamera(Lcom/meizu/media/camera/Camera;)Z
    .locals 1
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 2377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/media/camera/CameraThread;->openCamera(Lcom/meizu/media/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method public final openCamera(Lcom/meizu/media/camera/Camera;I)Z
    .locals 3
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 2389
    if-nez p1, :cond_0

    .line 2391
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "openCamera() - No camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    :goto_0
    return v0

    .line 2394
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2395
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/CameraThread;->openCameraInternal(Lcom/meizu/media/camera/Camera;I)Z

    move-result v0

    goto :goto_0

    .line 2396
    :cond_1
    new-instance v1, Lcom/meizu/media/camera/CameraThread$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/media/camera/CameraThread$27;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;I)V

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2405
    const/4 v0, 0x1

    goto :goto_0

    .line 2407
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "openCamera() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playDefaultShutterSound()V
    .locals 3

    .prologue
    .line 2471
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->verifyAccess()V

    .line 2472
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2474
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "playDefaultShutterSound() - No shutter sound to play"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    :goto_0
    return-void

    .line 2479
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_AudioManager:Lcom/meizu/media/camera/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_DefaultShutterSoundHandle:Lcom/oneplus/base/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/media/AudioManager;->playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method public removeComponent(Lcom/oneplus/base/component/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 2684
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->verifyAccess()V

    .line 2685
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/component/ComponentManager;->removeComponent(Lcom/oneplus/base/component/Component;)V

    .line 2686
    return-void
.end method

.method public saveMedia(Lcom/meizu/media/camera/io/MediaSaveTask;)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "saveTask"    # Lcom/meizu/media/camera/io/MediaSaveTask;

    .prologue
    const/4 v2, 0x0

    .line 2765
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->verifyAccess()V

    .line 2766
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    if-nez v3, :cond_0

    .line 2768
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "saveMedia() - No FileManager interface"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    :goto_0
    return-object v2

    .line 2773
    :cond_0
    if-nez p1, :cond_1

    .line 2775
    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v4, "saveMedia() - No save task"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2780
    :cond_1
    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 2783
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    invoke-virtual {p1}, Lcom/meizu/media/camera/io/MediaSaveTask;->getLocation()Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2785
    invoke-virtual {p1}, Lcom/meizu/media/camera/io/MediaSaveTask;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    .line 2786
    .local v1, "captureHandle":Lcom/meizu/media/camera/CaptureHandle;
    if-eqz v1, :cond_2

    .line 2788
    sget-object v2, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {v1}, Lcom/meizu/media/camera/CaptureHandle;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2801
    .end local v1    # "captureHandle":Lcom/meizu/media/camera/CaptureHandle;
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/meizu/media/camera/io/MediaSaveTask;->getLensFacing()Lcom/meizu/media/camera/Camera$LensFacing;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2802
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-virtual {p1, v2}, Lcom/meizu/media/camera/io/MediaSaveTask;->setLensFacing(Lcom/meizu/media/camera/Camera$LensFacing;)V

    .line 2805
    :cond_3
    invoke-virtual {p1}, Lcom/meizu/media/camera/io/MediaSaveTask;->getStorageType()Lcom/oneplus/io/Storage$Type;

    move-result-object v2

    if-nez v2, :cond_4

    .line 2806
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v3, "StorageType"

    const-class v4, Lcom/oneplus/io/Storage$Type;

    sget-object v5, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v2, v3, v4, v5}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/Storage$Type;

    invoke-virtual {p1, v2}, Lcom/meizu/media/camera/io/MediaSaveTask;->setStorageType(Lcom/oneplus/io/Storage$Type;)V

    .line 2809
    :cond_4
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/meizu/media/camera/io/FileManager;->saveMedia(Lcom/meizu/media/camera/io/MediaSaveTask;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    goto :goto_0

    .line 2791
    .restart local v1    # "captureHandle":Lcom/meizu/media/camera/CaptureHandle;
    :pswitch_0
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {p1, v2}, Lcom/meizu/media/camera/io/MediaSaveTask;->setLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 2794
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoLocation:Landroid/location/Location;

    invoke-virtual {p1, v2}, Lcom/meizu/media/camera/io/MediaSaveTask;->setLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 2788
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMediaType(Lcom/meizu/media/camera/media/MediaType;)Z
    .locals 2
    .param p1, "mediaType"    # Lcom/meizu/media/camera/media/MediaType;

    .prologue
    .line 2820
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2821
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraThread;->setMediaTypeInternal(Lcom/meizu/media/camera/media/MediaType;)Z

    move-result v0

    .line 2834
    :goto_0
    return v0

    .line 2822
    :cond_0
    new-instance v0, Lcom/meizu/media/camera/CameraThread$30;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/CameraThread$30;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/media/MediaType;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2831
    const/4 v0, 0x1

    goto :goto_0

    .line 2833
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "setMediaType() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setPhotoCaptureHandler(Lcom/meizu/media/camera/PhotoCaptureHandler;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "handler"    # Lcom/meizu/media/camera/PhotoCaptureHandler;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 2932
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->verifyAccess()V

    .line 2933
    if-nez p1, :cond_0

    .line 2935
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "setPhotoCaptureHandler() - No capture handler"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    :goto_0
    return-object v0

    .line 2938
    :cond_0
    sget-object v2, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2945
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhotoCaptureHandler() - Cannot change capture handler when photo capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2950
    :pswitch_1
    new-instance v0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/PhotoCaptureHandler;)V

    .line 2951
    .local v0, "handle":Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_PhotoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2952
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhotoCaptureHandler() - Capture handler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized setResourceIdTable(Lcom/meizu/media/camera/CameraThread$ResourceIdTable;)V
    .locals 2
    .param p1, "table"    # Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

    .prologue
    .line 2964
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2965
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot change resource ID table after starting"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2964
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2968
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraThread$ResourceIdTable;->clone()Lcom/meizu/media/camera/CameraThread$ResourceIdTable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/meizu/media/camera/CameraThread;->m_ResourceIdTable:Lcom/meizu/media/camera/CameraThread$ResourceIdTable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2969
    monitor-exit p0

    return-void

    .line 2968
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setScreenSize(Lcom/oneplus/base/ScreenSize;)V
    .locals 3
    .param p1, "size"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    .line 2978
    if-nez p1, :cond_0

    .line 2979
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No screen size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2980
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2981
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/camera/CameraThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2990
    :goto_0
    return-void

    .line 2984
    :cond_1
    monitor-enter p0

    .line 2986
    const/16 v0, 0x2710

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v0, v1, v2, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2987
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialScreenSize:Lcom/oneplus/base/ScreenSize;

    .line 2988
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setVideoCaptureHandler(Lcom/meizu/media/camera/VideoCaptureHandler;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "handler"    # Lcom/meizu/media/camera/VideoCaptureHandler;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 3002
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->verifyAccess()V

    .line 3003
    if-nez p1, :cond_0

    .line 3005
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v2, "setVideoCaptureHandler() - No capture handler"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    :goto_0
    return-object v0

    .line 3008
    :cond_0
    sget-object v2, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 3015
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoCaptureHandler() - Cannot change capture handler when video capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3020
    :pswitch_1
    new-instance v0, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/VideoCaptureHandler;)V

    .line 3021
    .local v0, "handle":Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->m_VideoCaptureHandlerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3022
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoCaptureHandler() - Capture handler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3008
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized start(Lcom/meizu/media/camera/media/MediaType;)V
    .locals 1
    .param p1, "mediaType"    # Lcom/meizu/media/camera/media/MediaType;

    .prologue
    .line 3030
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->start()V

    .line 3031
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread;->m_InitialMediaType:Lcom/meizu/media/camera/media/MediaType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3032
    monitor-exit p0

    return-void

    .line 3030
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final startCameraPreview(Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 3044
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/media/camera/CameraThread;->startCameraPreview(Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public final startCameraPreview(Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z
    .locals 7
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "receiver"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 3062
    if-nez p1, :cond_0

    .line 3064
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "startCameraPreview() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 3081
    :goto_0
    return v0

    .line 3067
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3068
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/media/camera/CameraThread;->startCameraPreviewInternal(Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0

    .line 3069
    :cond_1
    new-instance v0, Lcom/meizu/media/camera/CameraThread$31;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/media/camera/CameraThread$31;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3078
    const/4 v0, 0x1

    goto :goto_0

    .line 3080
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "startCameraPreview() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 3081
    goto :goto_0
.end method

.method public final stopCameraPreview(Lcom/meizu/media/camera/Camera;)Z
    .locals 1
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 3187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/media/camera/CameraThread;->stopCameraPreview(Lcom/meizu/media/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method public final stopCameraPreview(Lcom/meizu/media/camera/Camera;I)Z
    .locals 9
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3202
    if-nez p1, :cond_0

    .line 3204
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3245
    :goto_0
    return v8

    .line 3207
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/meizu/media/camera/CameraThread;->stopCameraPreviewInternal(Lcom/meizu/media/camera/Camera;[ZI)Z

    move-result v8

    goto :goto_0

    .line 3211
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    move v3, v7

    .line 3212
    .local v3, "isSync":Z
    :goto_1
    new-array v4, v7, [Z

    aput-boolean v8, v4, v8

    .line 3213
    .local v4, "result":[Z
    monitor-enter v4

    .line 3215
    :try_start_0
    new-instance v0, Lcom/meizu/media/camera/CameraThread$32;

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/media/camera/CameraThread$32;-><init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;Z[ZI)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3224
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    monitor-exit v4

    goto :goto_0

    .line 3246
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .end local v3    # "isSync":Z
    .end local v4    # "result":[Z
    :cond_2
    move v3, v8

    .line 3211
    goto :goto_1

    .line 3227
    .restart local v3    # "isSync":Z
    .restart local v4    # "result":[Z
    :cond_3
    if-eqz v3, :cond_5

    .line 3231
    :try_start_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - Wait for camera thread [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    const-wide/16 v0, 0x1388

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 3233
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - Wait for camera thread [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    const/4 v0, 0x0

    aget-boolean v0, v4, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 3235
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v7

    goto :goto_0

    .line 3236
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - Timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3237
    :try_start_4
    monitor-exit v4

    goto :goto_0

    .line 3239
    :catch_0
    move-exception v6

    .line 3241
    .local v6, "ex":Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread;->TAG:Ljava/lang/String;

    const-string v1, "stopCameraPreview() - Interrupted"

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3242
    monitor-exit v4

    goto :goto_0

    .line 3245
    .end local v6    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v8, v7

    goto :goto_0
.end method
