.class public abstract Lcom/meizu/media/camera/CameraActivity;
.super Lcom/oneplus/base/BaseActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/CameraActivity$31;,
        Lcom/meizu/media/camera/CameraActivity$CameraContext;,
        Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;,
        Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;,
        Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;,
        Lcom/meizu/media/camera/CameraActivity$SettingsHandle;,
        Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;,
        Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;,
        Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;,
        Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;,
        Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;
    }
.end annotation


# static fields
.field private static final CUD_USAGE_CAMERA_PREVIEW:Ljava/lang/String; = "CameraPreviewStartStop"

.field private static final CUD_USAGE_CAMERA_PREVIEW_FRAME:Ljava/lang/String; = "CameraPreviewFrameWaiting"

.field private static final CUD_USAGE_CAMERA_SWITCH:Ljava/lang/String; = "CameraSwitchStartStop"

.field private static final CUD_USAGE_VIDEO_CAPTURE:Ljava/lang/String; = "VideoCaptureStartStop"

.field private static final DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

.field private static final DURATION_DISABLE_TOUCH_FOR_NAV_BAR:J = 0x12cL

.field private static final DURATION_ENABLE_UI_FOR_PREVIEW_FRAME:J = 0x64L

.field public static final DURATION_IDLE:J = 0x1d4c0L

.field private static final DURATION_MAX_PENDING_CAPTURE:J = 0x320L

.field private static final DURATION_NAV_BAR_VISIBLE:J = 0x7d0L

.field private static final DURATION_UPDATE_SCREENSHOT_ROTATION:J = 0x12cL

.field private static final ENABLE_SWITCH_ANIMATION:Z = true

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

.field public static final EVENT_CAPTURE_CANCELLED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
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

.field public static final EVENT_CAPTURE_STARTING:Lcom/oneplus/base/EventKey;
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

.field public static final EVENT_TOUCH:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/ui/MotionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ENABLE_WHEN_PAUSING:I = 0x1

.field private static final FLAG_IGNORE_CAMERA_SWITCHING_CHECK:I = 0x8

.field public static final FLAG_IGNORE_SWITCH_ANIMATION:I = 0x4

.field public static final FLAG_NO_SHUTTER_SOUND:I = 0x2

.field private static final INTENT_FILTER_PRIORITY_MAX:I = 0x7fffffff

.field private static final LOG_TIME_FORMAT:Ljava/text/DateFormat;

.field private static final MSG_CAMERA_PREVIEW_STARTED:I = -0xb

.field private static final MSG_CAMERA_PREVIEW_START_FAILED:I = -0xa

.field private static final MSG_CAMERA_THREAD_EVENT_RAISED:I = -0x1

.field private static final MSG_CAMERA_THREAD_PROP_CHANGED:I = -0x2

.field private static final MSG_ENABLE_UI_FOR_PREVIEW_FRAME:I = -0x46

.field private static final MSG_FINISH_BY_SELF:I = -0x33

.field private static final MSG_IDLE:I = -0x32

.field private static final MSG_PHOTO_CAPTURE_FAILED:I = -0x14

.field private static final MSG_PHOTO_CAPTURE_STARTED:I = -0x15

.field private static final MSG_ROTATION_READY:I = -0x3c

.field private static final MSG_UPDATE_ELAPSED_RECORDING_TIME:I = -0x28

.field private static final MSG_UPDATE_SCREENSHOT_ROTATION:I = -0x5a

.field private static final MSG_UPDATE_SYS_UI_VISIBILITY:I = -0x50

.field private static final MSG_VIDEO_CAPTURE_FAILED:I = -0x1e

.field private static final MSG_VIDEO_CAPTURE_STARTED:I = -0x1f

.field public static final PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<[F>;"
        }
    .end annotation
.end field

.field public static final PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/Rotation;",
            ">;"
        }
    .end annotation
.end field

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

.field public static final PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
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

.field public static final PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Size;",
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

.field public static final PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_DEVICE_ORIENTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
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

.field public static final PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;
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

.field public static final PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
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

.field public static final PROP_ROTATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/Rotation;",
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

.field public static final PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/Settings;",
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

.field private static final SETTINGS_KEY_CAMERA_LENS_FACING:Ljava/lang/String; = "CameraLensFacing"

.field private static final SETTINGS_KEY_SELF_TIMER_INTERVAL_BACK:Ljava/lang/String; = "SelfTimer.Back"

.field private static final SETTINGS_KEY_SELF_TIMER_INTERVAL_FRONT:Ljava/lang/String; = "SelfTimer.Front"

.field private static final TIMEOUT_ROTATION_READY:J = 0xc8L


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final m_AcceleromaterListener:Landroid/hardware/SensorEventListener;

.field private m_AccelerometerValuesIndex:I

.field private final m_AccelerometerValuesTable:[[F

.field private final m_ActivityResultHandles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ActivityRotation:Lcom/oneplus/base/Rotation;

.field private m_BatteryReceiver:Landroid/content/BroadcastReceiver;

.field private m_BurstDisableHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CameraContextStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/CameraActivity$CameraContext;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraLockHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

.field private m_CameraPreviewSessionID:I

.field private m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

.field private m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

.field private m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

.field private m_CameraThread:Lcom/meizu/media/camera/CameraThread;

.field private m_CancelTouchEvents:Z

.field private final m_CaptureUIDisableHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

.field private m_CountDownTimer:Lcom/meizu/media/camera/CountDownTimer;

.field private final m_FastShotToShotDisableHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_IgnoreNavigationBar:Z

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

.field private m_IsAccelerometerStarted:Z

.field private m_IsCameraPreviewReceiverReady:Z

.field private m_IsHighComponentsCreated:Z

.field private m_IsIdle:Z

.field private m_IsRotationReady:Z

.field private m_KeyDownEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_KeyEventHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_LastNavBarVisibleTime:J

.field private volatile m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

.field private m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

.field private m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

.field private m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

.field private m_PendingSwitchCamera:Lcom/meizu/media/camera/Camera;

.field private m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

.field private m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

.field private final m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

.field private m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

.field private m_PreviewCoverStyle:Lcom/meizu/media/camera/ui/PreviewCover$Style;

.field private final m_RecordingTimeRatioHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

.field private m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

.field private m_ReviewScreenUI:Lcom/meizu/media/camera/ui/ReviewScreen;

.field private m_Rotation:Lcom/oneplus/base/Rotation;

.field private final m_RotationLockHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ScreenShotBitmap:Landroid/graphics/Bitmap;

.field private m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

.field private m_ScreenShotImageView:Landroid/widget/ImageView;

.field private m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private m_SelfTimerDisableHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_SelfTimerHandle:Lcom/oneplus/base/Handle;

.field private m_SensorManager:Landroid/hardware/SensorManager;

.field private final m_SettingsHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/CameraActivity$SettingsHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_StartMode:Lcom/meizu/media/camera/StartMode;

.field private m_StorageManager:Lcom/oneplus/io/StorageManager;

.field private m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

.field protected m_StorageStopRecordToast:I

.field protected m_StorageToast:I

.field private m_TakeScreenShotHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ToastManager:Lcom/meizu/media/camera/ui/ToastManager;

.field private m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

.field private m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

.field private m_VideoRecordStartTime:J

.field private m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

.field private m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    new-instance v1, Lcom/meizu/media/camera/ExposureControllerBuilder;

    invoke-direct {v1}, Lcom/meizu/media/camera/ExposureControllerBuilder;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Lcom/meizu/media/camera/FocusControllerBuilder;

    invoke-direct {v1}, Lcom/meizu/media/camera/FocusControllerBuilder;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/meizu/media/camera/media/ResolutionManagerBuilder;

    invoke-direct {v1}, Lcom/meizu/media/camera/media/ResolutionManagerBuilder;-><init>()V

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-instance v2, Lcom/meizu/media/camera/ui/ViewfinderBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/ui/ViewfinderBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 136
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AccelerometerValues"

    const-class v2, [F

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    const/4 v5, 0x3

    new-array v5, v5, [F

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    .line 140
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ActivityRotation"

    const-class v2, Lcom/oneplus/base/Rotation;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 145
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "AvailableCameras"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    .line 149
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "BatteryLevel"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    .line 153
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Camera"

    const-class v2, Lcom/meizu/media/camera/Camera;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    .line 157
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CameraPreviewSize"

    const-class v2, Landroid/util/Size;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v6, v6}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 161
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CameraPreviewState"

    const-class v2, Lcom/meizu/media/camera/OperationState;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    sget-object v5, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    .line 165
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ContentView"

    const-class v2, Landroid/view/View;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    .line 169
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "DeviceOrientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_DEVICE_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    .line 173
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ElapsedRecordingSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 177
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsBurstPhotoCaptureEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 181
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsBurstPhotoOnCapture"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    .line 185
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCameraLocked"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    .line 189
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCameraPreviewReceived"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    .line 193
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCameraSwitching"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    .line 197
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCameraThreadStarted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    .line 201
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCaptureUIEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 205
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCapturingRawPhoto"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    .line 209
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsDebugMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    .line 213
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsFastShotToShotEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 217
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsIdle"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    .line 221
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsNavigationBarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 225
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsReadyToCapture"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    .line 229
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsRotationReady"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    .line 233
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsScreenOn"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;

    .line 237
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSecureMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    .line 241
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSelfTimerStarted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    .line 245
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSelfTimerUsable"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    .line 249
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsTouchingOnScreen"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    .line 253
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsVideoSnapshotEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    .line 257
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsLaunching"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    .line 261
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MaxVideoDurationSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 265
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaType"

    const-class v2, Lcom/meizu/media/camera/media/MediaType;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    sget-object v5, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 269
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PhotoCaptureState"

    const-class v2, Lcom/meizu/media/camera/PhotoCaptureState;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    sget-object v5, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 273
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "RemainingPhotoCount"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 277
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "RemainingVideoDurationSeconds"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    .line 281
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Rotation"

    const-class v2, Lcom/oneplus/base/Rotation;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    .line 285
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ScreenSize"

    const-class v2, Lcom/oneplus/base/ScreenSize;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/base/ScreenSize;->EMPTY:Lcom/oneplus/base/ScreenSize;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    .line 289
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string v6, "SelfTimerInterval"

    const-class v7, Ljava/lang/Long;

    const-class v8, Lcom/meizu/media/camera/CameraActivity;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    .line 293
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Settings"

    const-class v2, Lcom/oneplus/base/Settings;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    .line 297
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "VideoCaptureCompleteReason"

    const-class v2, Lcom/meizu/media/camera/CaptureCompleteReason;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    sget-object v4, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    .line 301
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "VideoCaptureState"

    const-class v2, Lcom/meizu/media/camera/VideoCaptureState;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    sget-object v4, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    .line 307
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "BurstPhotoReceived"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 311
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CaptureCancelled"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 315
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CaptureCompleted"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    .line 319
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CaptureFailed"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    .line 323
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CaptureStarted"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    .line 327
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CaptureStarting"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_STARTING:Lcom/oneplus/base/EventKey;

    .line 331
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaFileSaved"

    const-class v2, Lcom/meizu/media/camera/media/MediaEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    .line 335
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSaveCancelled"

    const-class v2, Lcom/meizu/media/camera/media/MediaEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    .line 339
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSaveFailed"

    const-class v2, Lcom/meizu/media/camera/media/MediaEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    .line 343
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSaved"

    const-class v2, Lcom/meizu/media/camera/media/MediaEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    .line 347
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "Shutter"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    .line 351
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "Touch"

    const-class v2, Lcom/meizu/media/camera/ui/MotionEventArgs;

    const-class v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_TOUCH:Lcom/oneplus/base/EventKey;

    .line 368
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/media/camera/CameraActivity;->LOG_TIME_FORMAT:Ljava/text/DateFormat;

    .line 706
    const-string v0, "CameraLensFacing"

    sget-object v1, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 707
    const-string v0, "SelfTimer.Back"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 708
    const-string v0, "SelfTimer.Front"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 716
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;-><init>()V

    .line 389
    const/4 v0, 0x2

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_AccelerometerValuesTable:[[F

    .line 390
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    .line 391
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    .line 393
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    .line 394
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    .line 395
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    .line 399
    sget-object v0, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    .line 403
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    .line 406
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    .line 414
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyDownEvents:Ljava/util/Set;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    .line 424
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    .line 428
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    .line 432
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 433
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    .line 438
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 457
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraActivity$1;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_AcceleromaterListener:Landroid/hardware/SensorEventListener;

    .line 718
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/meizu/media/camera/CameraActivity$CameraContext;

    invoke-direct {v1}, Lcom/meizu/media/camera/CameraActivity$CameraContext;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 719
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/CameraActivity;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # [F

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->onAccelerometerValuesChanged([F)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->stopPhotoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/media/camera/CameraActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # J

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/CameraActivity;->onCountDownTimerChanged(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->onCountDownTimerCancelled()V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/meizu/media/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/Camera;)Lcom/meizu/media/camera/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/meizu/media/camera/Camera;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;
    .param p2, "x2"    # Lcom/meizu/media/camera/Camera;
    .param p3, "x3"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraActivity;->switchCamera(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraThread;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->enableBurstPhotoCapture(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->enableFastShotToShot(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->enableSelfTimer(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraActivity;->stopVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/meizu/media/camera/media/MediaType;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraActivity;->bindToCameraThread(Lcom/meizu/media/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/meizu/media/camera/CameraActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CancelTouchEvents:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/meizu/media/camera/CameraActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/meizu/media/camera/CameraActivity;->m_LastNavBarVisibleTime:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->checkReadyToCapture()V

    return-void
.end method

.method static synthetic access$2400(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/meizu/media/camera/CameraActivity;)Lcom/oneplus/io/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->restoreRecordingTimeRatio(Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->releasePreCaptureFocusLockRequest(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/meizu/media/camera/CameraActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->onSystemOrientationSettingsChanged(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->removeScreenShot(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->unlockRotation(Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$SettingsHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraActivity$SettingsHandle;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->restoreSettings(Lcom/meizu/media/camera/CameraActivity$SettingsHandle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->enableCaptureUI(Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;)V

    return-void
.end method

.method static synthetic access$700()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->LOG_TIME_FORMAT:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;
    .param p1, "x1"    # Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->unlockCamera(Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/media/camera/CameraActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    return-object v0
.end method

.method private bindToCameraThread(Lcom/meizu/media/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "initialMediaType"    # Lcom/meizu/media/camera/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/media/camera/media/MediaType;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/EventKey",
            "<*>;>;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "eventKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventKey<*>;>;"
    .local p3, "propKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 740
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v6, "bindToCameraThread()"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 743
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v5}, Lcom/meizu/media/camera/CameraThread;->disableVideoSnapshot()Lcom/oneplus/base/Handle;

    .line 746
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 748
    new-instance v1, Lcom/meizu/media/camera/CameraActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/CameraActivity$2;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    .line 756
    .local v1, "handler":Lcom/oneplus/base/EventHandler;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 757
    iget-object v6, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/EventKey;

    invoke-virtual {v6, v5, v1}, Lcom/meizu/media/camera/CameraThread;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 756
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 761
    .end local v1    # "handler":Lcom/oneplus/base/EventHandler;
    .end local v2    # "i":I
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 763
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraActivity$3;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    .line 779
    .local v0, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 781
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/PropertyKey;

    .line 782
    .local v4, "propKey":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v4, v3, v8

    const/4 v5, 0x1

    iget-object v6, v4, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v7, v4}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/PropertyChangeEventArgs;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/base/PropertyChangeEventArgs;

    move-result-object v6

    aput-object v6, v3, v5

    .line 783
    .local v3, "params":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v5, v4, v0}, Lcom/meizu/media/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 784
    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    if-eq v4, v5, :cond_3

    .line 785
    invoke-static {p0, v9, v8, v8, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 779
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 788
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 789
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_2

    .line 790
    invoke-static {v1, v9, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_2

    .line 796
    .end local v0    # "callback":Lcom/oneplus/base/PropertyChangedCallback;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "i":I
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v4    # "propKey":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    :cond_4
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v5, p1}, Lcom/meizu/media/camera/CameraThread;->setMediaType(Lcom/meizu/media/camera/media/MediaType;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 797
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindToCameraThread() - Fail to set initial media type to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_5
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    sget-object v6, Lcom/meizu/media/camera/CameraThread;->PROP_MEDIA_RESULT_INFO:Lcom/oneplus/base/PropertyKey;

    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

    invoke-virtual {v5, v6, v7}, Lcom/meizu/media/camera/CameraThread;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 803
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    sget-object v6, Lcom/meizu/media/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/meizu/media/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/meizu/media/camera/CameraThread;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 806
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->onBindToCameraThread()V

    .line 807
    return-void
.end method

.method private bindToInitialComponents()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 814
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getResolutionManager()Lcom/meizu/media/camera/media/ResolutionManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "bindToInitialComponents() - No ResolutionManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :goto_0
    return v0

    .line 820
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 822
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->selectCameraPreviewSize()V

    .line 826
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getViewfinder()Lcom/meizu/media/camera/ui/Viewfinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 828
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "bindToInitialComponents() - No Viewfinder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private bindToNormalComponents()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 841
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CountDownTimer:Lcom/meizu/media/camera/CountDownTimer;

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/meizu/media/camera/CountDownTimer;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/CountDownTimer;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CountDownTimer:Lcom/meizu/media/camera/CountDownTimer;

    .line 844
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CountDownTimer:Lcom/meizu/media/camera/CountDownTimer;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CountDownTimer:Lcom/meizu/media/camera/CountDownTimer;

    sget-object v1, Lcom/meizu/media/camera/CountDownTimer;->PROP_REMAINING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/CameraActivity$4;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraActivity$4;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/CountDownTimer;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 854
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CountDownTimer:Lcom/meizu/media/camera/CountDownTimer;

    sget-object v1, Lcom/meizu/media/camera/CountDownTimer;->EVENT_CANCELLED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/CameraActivity$5;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraActivity$5;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/CountDownTimer;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 862
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateSelfTimerInternal()V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    if-nez v0, :cond_1

    .line 869
    const-class v0, Lcom/meizu/media/camera/ui/PreviewCover;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/PreviewCover;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    .line 870
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    sget-object v1, Lcom/meizu/media/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/CameraActivity$6;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraActivity$6;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ui/PreviewCover;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 895
    :cond_1
    return v4
.end method

.method private capturePhoto(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;Z)Z
    .locals 10
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "fromSelfTimer"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1073
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v7, "capturePhoto() - Handle : "

    const-string v8, ", from self timer : "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v4, v7, p1, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1076
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1077
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "capturePhoto() - Cannot take snapshot on camera switching state."

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_0
    :goto_0
    return v6

    .line 1082
    :cond_1
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v4, v7, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->canVideoSnapshot()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1084
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "capturePhoto() - Cannot take video snapshot"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    if-eqz p2, :cond_0

    .line 1086
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetPhotoCaptureState()V

    goto :goto_0

    .line 1091
    :cond_2
    if-nez p2, :cond_3

    .line 1092
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v7, Lcom/meizu/media/camera/PhotoCaptureState;->STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v4, v7}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1095
    :cond_3
    if-nez p2, :cond_4

    iget v4, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1097
    sget-object v7, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v4}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_0

    .line 1128
    :cond_4
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1131
    new-instance v0, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;)V

    .line 1132
    .local v0, "e":Lcom/meizu/media/camera/CaptureEventArgs;
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_STARTING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v4, v0}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1135
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v7, "capturePhoto() - Capture"

    invoke-static {v4, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    move v1, v5

    .line 1137
    .local v1, "lockFocus":Z
    :goto_2
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    new-instance v7, Lcom/meizu/media/camera/CameraActivity$7;

    invoke-direct {v7, p0, v1, p1}, Lcom/meizu/media/camera/CameraActivity$7;-><init>(Lcom/meizu/media/camera/CameraActivity;ZLcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    invoke-static {v4, v7}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1156
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "capturePhoto() - Fail to perform cross-thread operation"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetPhotoCaptureState()V

    goto/16 :goto_0

    .line 1101
    .end local v0    # "e":Lcom/meizu/media/camera/CaptureEventArgs;
    .end local v1    # "lockFocus":Z
    :pswitch_0
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1102
    .local v2, "seconds":J
    const-wide/16 v8, 0x0

    cmp-long v4, v2, v8

    if-lez v4, :cond_4

    .line 1104
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_CountDownTimer:Lcom/meizu/media/camera/CountDownTimer;

    if-eqz v4, :cond_6

    .line 1106
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v7, "capturePhoto() - Start self timer"

    invoke-static {v4, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_CountDownTimer:Lcom/meizu/media/camera/CountDownTimer;

    invoke-interface {v4, v2, v3, v5}, Lcom/meizu/media/camera/CountDownTimer;->start(JI)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 1108
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1110
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 1111
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move v6, v5

    .line 1112
    goto/16 :goto_0

    .line 1114
    :cond_5
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v7, "capturePhoto() - Fail to start self timer"

    invoke-static {v4, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1117
    :cond_6
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v7, "capturePhoto() - No CountDownTimer interface"

    invoke-static {v4, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1122
    .end local v2    # "seconds":J
    :pswitch_1
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v7, "capturePhoto() - Video snapshot"

    invoke-static {v4, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v0    # "e":Lcom/meizu/media/camera/CaptureEventArgs;
    :cond_7
    move v1, v6

    .line 1136
    goto :goto_2

    .line 1162
    .restart local v1    # "lockFocus":Z
    :cond_8
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 1165
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v6, Lcom/meizu/media/camera/PhotoCaptureState;->CAPTURING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v4, v6}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1168
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetIdleState()V

    move v6, v5

    .line 1171
    goto/16 :goto_0

    .line 1097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private captureVideo(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)Z
    .locals 6
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    const/4 v2, 0x0

    .line 1213
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "captureVideo() - Handle : "

    invoke-static {v1, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1216
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1217
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "captureVideo() - Cannot take video on camera switching state."

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1274
    :goto_0
    return v1

    .line 1222
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-nez v1, :cond_1

    .line 1224
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "captureVideo() - No ResolutionManager"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1225
    goto :goto_0

    .line 1227
    :cond_1
    new-instance v0, Lcom/meizu/media/camera/CameraThread$VideoParams;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v3, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/media/Resolution;

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/CameraThread$VideoParams;-><init>(Lcom/meizu/media/camera/media/Resolution;)V

    .line 1229
    .local v0, "params":Lcom/meizu/media/camera/CameraThread$VideoParams;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v3, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_MAX_VIDEO_FILE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/meizu/media/camera/CameraThread$VideoParams;->maxFileSize:J

    .line 1230
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v3, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/meizu/media/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    .line 1234
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1237
    const-string v1, "VideoCaptureStartStop"

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 1240
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/VideoCaptureState;->STARTING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1242
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->pauseAudioPlaybackForVideoRecording()V

    .line 1245
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "captureVideo() - Capture"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    new-instance v3, Lcom/meizu/media/camera/CameraActivity$8;

    invoke-direct {v3, p0, v0, p1}, Lcom/meizu/media/camera/CameraActivity$8;-><init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraThread$VideoParams;Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    invoke-static {v1, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1260
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "captureVideo() - Fail to perform cross-thread operation"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1262
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 1263
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetVideoCaptureState()V

    move v1, v2

    .line 1264
    goto/16 :goto_0

    .line 1268
    :cond_2
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 1271
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetIdleState()V

    .line 1274
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private changeCameraPreviewState(Lcom/meizu/media/camera/OperationState;)Lcom/meizu/media/camera/OperationState;
    .locals 2
    .param p1, "state"    # Lcom/meizu/media/camera/OperationState;

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    .line 1282
    .local v0, "oldState":Lcom/meizu/media/camera/OperationState;
    if-eq v0, p1, :cond_0

    .line 1284
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    .line 1285
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1286
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    .line 1288
    .end local v0    # "oldState":Lcom/meizu/media/camera/OperationState;
    :cond_0
    return-object v0
.end method

.method private checkReadyToCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1296
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1324
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v0, v1, :cond_1

    .line 1326
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1332
    :goto_0
    return-void

    .line 1299
    :pswitch_0
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1304
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 1312
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1316
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1331
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkStartMode()V
    .locals 1

    .prologue
    .line 1338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->checkStartMode(Landroid/content/Intent;)V

    .line 1339
    return-void
.end method

.method private checkStartMode(Landroid/content/Intent;)V
    .locals 9
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 1343
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1344
    .local v3, "intent":Landroid/content/Intent;
    :goto_0
    if-nez v3, :cond_1

    .line 1346
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "checkStartMode() - Intent is null, use normal start mode"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    sget-object v4, Lcom/meizu/media/camera/StartMode;->NORMAL:Lcom/meizu/media/camera/StartMode;

    iput-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    .line 1396
    :goto_1
    return-void

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    move-object v3, p1

    .line 1343
    goto :goto_0

    .line 1352
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1354
    .local v2, "extras":Landroid/os/Bundle;
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1356
    if-eqz v2, :cond_3

    .line 1358
    new-instance v4, Lcom/meizu/media/camera/MediaResultInfo;

    invoke-direct {v4}, Lcom/meizu/media/camera/MediaResultInfo;-><init>()V

    iput-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

    .line 1359
    const-string v4, "output"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1360
    .local v1, "extraOutput":Ljava/lang/Object;
    instance-of v4, v1, Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 1361
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

    check-cast v1, Landroid/net/Uri;

    .end local v1    # "extraOutput":Ljava/lang/Object;
    iput-object v1, v4, Lcom/meizu/media/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    .line 1362
    :cond_2
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/meizu/media/camera/MediaResultInfo;->extraSizeLimit:J

    .line 1364
    :cond_3
    sget-object v4, Lcom/meizu/media/camera/StartMode;->SERVICE_PHOTO:Lcom/meizu/media/camera/StartMode;

    iput-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    .line 1392
    :goto_2
    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    sget-object v6, Lcom/meizu/media/camera/StartMode;->SECURE_PHOTO:Lcom/meizu/media/camera/StartMode;

    if-ne v4, v6, :cond_c

    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1393
    const/16 v4, -0x33

    invoke-static {p0, v4}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1395
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "checkStartMode() - Start mode: "

    iget-object v6, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    const-string v7, ", Media extras: "

    iget-object v8, p0, Lcom/meizu/media/camera/CameraActivity;->m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1366
    :cond_4
    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1369
    :cond_5
    if-eqz v2, :cond_7

    .line 1371
    new-instance v4, Lcom/meizu/media/camera/MediaResultInfo;

    invoke-direct {v4}, Lcom/meizu/media/camera/MediaResultInfo;-><init>()V

    iput-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

    .line 1372
    const-string v4, "output"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1373
    .restart local v1    # "extraOutput":Ljava/lang/Object;
    instance-of v4, v1, Landroid/net/Uri;

    if-eqz v4, :cond_6

    .line 1374
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

    check-cast v1, Landroid/net/Uri;

    .end local v1    # "extraOutput":Ljava/lang/Object;
    iput-object v1, v4, Lcom/meizu/media/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    .line 1375
    :cond_6
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/meizu/media/camera/MediaResultInfo;->extraSizeLimit:J

    .line 1376
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/meizu/media/camera/MediaResultInfo;->extraDurationLimit:J

    .line 1377
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/meizu/media/camera/MediaResultInfo;->extraVideoQuality:I

    .line 1379
    :cond_7
    sget-object v4, Lcom/meizu/media/camera/StartMode;->SERVICE_VIDEO:Lcom/meizu/media/camera/StartMode;

    iput-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    goto :goto_2

    .line 1381
    :cond_8
    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1384
    :cond_9
    sget-object v4, Lcom/meizu/media/camera/StartMode;->SECURE_PHOTO:Lcom/meizu/media/camera/StartMode;

    iput-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    goto/16 :goto_2

    .line 1386
    :cond_a
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1387
    sget-object v4, Lcom/meizu/media/camera/StartMode;->NORMAL_PHOTO:Lcom/meizu/media/camera/StartMode;

    iput-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    goto/16 :goto_2

    .line 1389
    :cond_b
    sget-object v4, Lcom/meizu/media/camera/StartMode;->NORMAL:Lcom/meizu/media/camera/StartMode;

    iput-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    goto/16 :goto_2

    .line 1392
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method private completePhotoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 4
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    .line 1438
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eq v1, p1, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "completePhotoCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1451
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completePhotoCapture() - Current capture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1456
    :pswitch_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->CAPTURING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1457
    .local v0, "isCapturing":Z
    :goto_1
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->STOPPING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1460
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1462
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->REVIEWING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1463
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->showReviewScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1464
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->onCaptureCompleted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 1456
    .end local v0    # "isCapturing":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1467
    .restart local v0    # "isCapturing":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->onCaptureCompleted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 1445
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private completeVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 4
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    .line 1475
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eq v1, p1, :cond_1

    .line 1477
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "completeVideoCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1491
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeVideoCapture() - Current capture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1496
    :pswitch_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/VideoCaptureState;->STOPPING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1497
    .local v0, "isCapturing":Z
    :goto_1
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/VideoCaptureState;->STOPPING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1500
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1502
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/VideoCaptureState;->REVIEWING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1503
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->showReviewScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1504
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->onCaptureCompleted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 1496
    .end local v0    # "isCapturing":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1507
    .restart local v0    # "isCapturing":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->onCaptureCompleted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 1482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private enableBurstPhotoCapture(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 1721
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 1722
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1724
    :cond_1
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateBurstEnablingState()V

    goto :goto_0
.end method

.method private enableCaptureUI(Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;

    .prologue
    .line 1731
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 1732
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1737
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCaptureUI() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handle count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1736
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private enableFastShotToShot(Lcom/oneplus/base/Handle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 1744
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1746
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 1747
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private enableSelfTimer(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 1755
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1757
    :cond_1
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateSelfTimerUsability()V

    goto :goto_0
.end method

.method private idle()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2032
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsIdle:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "idle()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    iput-boolean v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsIdle:Z

    .line 2036
    const/16 v0, -0x32

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 2037
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2038
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2040
    :cond_0
    return-void
.end method

.method private notifyCameraThreadRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 2
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    new-instance v1, Lcom/meizu/media/camera/CameraActivity$15;

    invoke-direct {v1, p0, p2}, Lcom/meizu/media/camera/CameraActivity$15;-><init>(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/Rotation;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2216
    return-void
.end method

.method private notifyUIRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 8
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v2, 0x0

    .line 2223
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v0

    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2226
    :cond_0
    const/16 v1, -0x5a

    const/4 v5, 0x1

    const-wide/16 v6, 0x12c

    move-object v0, p0

    move v3, v2

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 2227
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    if-eq p2, v0, :cond_2

    .line 2228
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2232
    :cond_2
    iget-object p1, p0, Lcom/meizu/media/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2233
    if-ne p1, p2, :cond_3

    .line 2239
    :goto_0
    return-void

    .line 2237
    :cond_3
    iput-object p2, p0, Lcom/meizu/media/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2238
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1, p2}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onAccelerometerValuesChanged([F)V
    .locals 5
    .param p1, "values"    # [F

    .prologue
    const/4 v4, 0x0

    .line 2245
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_AccelerometerValuesTable:[[F

    iget v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    aget-object v1, v2, v3

    .line 2246
    .local v1, "oldValues":[F
    iget v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    .line 2247
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_AccelerometerValuesTable:[[F

    iget v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_AccelerometerValuesIndex:I

    aget-object v0, v2, v3

    .line 2248
    .local v0, "newValues":[F
    const/4 v2, 0x3

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2249
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2250
    return-void
.end method

.method private onBurstPhotoReceived(Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/meizu/media/camera/CaptureEventArgs;

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 2436
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstPhotoReceived() - Unknown capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstPhotoReceived() - Expected capture handle : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    :goto_1
    return-void

    .line 2437
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2442
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getFrameIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;I)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_1
.end method

.method private onCameraPreviewReceived()V
    .locals 6

    .prologue
    .line 2477
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/OperationState;

    .line 2478
    .local v0, "previewState":Lcom/meizu/media/camera/OperationState;
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$OperationState:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2484
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraPreviewReceived() - Preview state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    :cond_0
    :goto_0
    return-void

    .line 2489
    :pswitch_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2493
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 2496
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x46

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2497
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    sget-object v2, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v1, v2, :cond_1

    .line 2498
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 2499
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v1, v2, :cond_2

    .line 2500
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 2503
    :cond_2
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v1, v2, :cond_3

    .line 2504
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetVideoCaptureState()V

    .line 2505
    :cond_3
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_0

    .line 2506
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetPhotoCaptureState()V

    goto :goto_0

    .line 2478
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraPreviewStartFailed(Lcom/meizu/media/camera/Camera;I)V
    .locals 3
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "cameraPreviewSessionID"    # I

    .prologue
    .line 2623
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2641
    :goto_0
    return-void

    .line 2626
    :cond_0
    iget v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewSessionID:I

    if-eq v0, p2, :cond_1

    .line 2628
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraPreviewStartFailed() - Preview session incorrect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current preview session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2633
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    if-eq v0, v1, :cond_2

    .line 2635
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraPreviewStartFailed() - Preview state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2640
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->onCameraPreviewStartFailed()V

    goto :goto_0
.end method

.method private onCameraPreviewStarted(Lcom/meizu/media/camera/Camera;I)V
    .locals 3
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "cameraPreviewSessionID"    # I

    .prologue
    .line 2587
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2605
    :goto_0
    return-void

    .line 2590
    :cond_0
    iget v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewSessionID:I

    if-eq v0, p2, :cond_1

    .line 2592
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraPreviewStarted() - Preview session incorrect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current preview session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2597
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    if-eq v0, v1, :cond_2

    .line 2599
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraPreviewStarted() - Preview state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2604
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->onCameraPreviewStarted()V

    goto :goto_0
.end method

.method private onCameraThreadCaptureStateChanged(Lcom/meizu/media/camera/PhotoCaptureState;Lcom/meizu/media/camera/PhotoCaptureState;)V
    .locals 4
    .param p1, "oldeState"    # Lcom/meizu/media/camera/PhotoCaptureState;
    .param p2, "newState"    # Lcom/meizu/media/camera/PhotoCaptureState;

    .prologue
    .line 2647
    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->CAPTURING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-eq p2, v1, :cond_0

    .line 2649
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/CaptureCompleteReason;

    .line 2650
    .local v0, "reason":Lcom/meizu/media/camera/CaptureCompleteReason;
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$CaptureCompleteReason:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/CaptureCompleteReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2656
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraThreadCaptureStateChanged() - Photo capture stopped unexpectly, reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->onPhotoCaptureFailed(Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V

    .line 2661
    .end local v0    # "reason":Lcom/meizu/media/camera/CaptureCompleteReason;
    :cond_0
    :pswitch_0
    return-void

    .line 2650
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraThreadCaptureStateChanged(Lcom/meizu/media/camera/VideoCaptureState;Lcom/meizu/media/camera/VideoCaptureState;)V
    .locals 4
    .param p1, "oldState"    # Lcom/meizu/media/camera/VideoCaptureState;
    .param p2, "newState"    # Lcom/meizu/media/camera/VideoCaptureState;

    .prologue
    const-wide/16 v2, -0x1

    .line 2667
    sget-object v0, Lcom/meizu/media/camera/VideoCaptureState;->STOPPING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne p2, v0, :cond_1

    .line 2670
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->stopCameraPreview()V

    .line 2673
    const/16 v0, -0x28

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 2676
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2677
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->stopVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 2688
    :cond_0
    :goto_0
    return-void

    .line 2679
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/VideoCaptureState;->STARTING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    if-eq p2, v0, :cond_2

    .line 2681
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->onVideoCaptureFailed(Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V

    goto :goto_0

    .line 2682
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/VideoCaptureState;->STARTING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne p2, v0, :cond_0

    .line 2684
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoRecordStartTime:J

    .line 2686
    invoke-direct {p0, v2, v3, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->updateElapsedRecordingTime(JJ)V

    goto :goto_0
.end method

.method private onCaptureCompleted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 10
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 2798
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureCompleted() - Handle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 2802
    .local v0, "pendingHandle":Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 2805
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 2808
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2819
    :goto_0
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    sget-object v3, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v2, v3, :cond_0

    .line 2820
    sget-object v2, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->changeCameraPreviewState(Lcom/meizu/media/camera/OperationState;)Lcom/meizu/media/camera/OperationState;

    .line 2823
    :cond_0
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 2924
    :goto_1
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetIdleState()V

    .line 2925
    :cond_1
    return-void

    .line 2811
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2814
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoRotationLockHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2828
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, p1, v2}, Lcom/meizu/media/camera/CameraActivity;->onCaptureCompleted(Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V

    .line 2831
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v2, v3, :cond_7

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2833
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->startCameraPreview()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2836
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->REVIEWING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_2

    .line 2837
    const/4 v0, 0x0

    .line 2840
    :cond_2
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_3

    .line 2842
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureCompleted() - Clear pending handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    const/4 v0, 0x0

    .line 2847
    :cond_3
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 2850
    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 2852
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureCompleted() - Capture next photo immediately"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    invoke-direct {p0, v0, v6}, Lcom/meizu/media/camera/CameraActivity;->capturePhoto(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2870
    :cond_4
    :goto_2
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v2, v3, :cond_5

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/VideoCaptureState;->STOPPING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v2, :cond_5

    .line 2874
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureCompleted() - Continue stopping video recording"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v6}, Lcom/meizu/media/camera/CameraActivity;->stopVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 2879
    :cond_5
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2859
    :cond_6
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureCompleted() - Fail to start camera preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 2865
    :cond_7
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureCompleted() - Activity state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 2887
    :pswitch_3
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2888
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 2890
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->resumeAudioPlayback()V

    .line 2893
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/CaptureCompleteReason;

    .line 2894
    .local v1, "reason":Lcom/meizu/media/camera/CaptureCompleteReason;
    sget-object v2, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    if-ne v1, v2, :cond_8

    .line 2895
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    sget-object v3, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "reason":Lcom/meizu/media/camera/CaptureCompleteReason;
    check-cast v1, Lcom/meizu/media/camera/CaptureCompleteReason;

    .line 2898
    .restart local v1    # "reason":Lcom/meizu/media/camera/CaptureCompleteReason;
    :cond_8
    invoke-virtual {p0, p1, v1}, Lcom/meizu/media/camera/CameraActivity;->onCaptureCompleted(Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V

    .line 2901
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v2, v3, :cond_a

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2903
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->startCameraPreview()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2906
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetVideoCaptureState()V

    goto/16 :goto_1

    .line 2910
    :cond_9
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureCompleted() - Fail to start camera preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2916
    :cond_a
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureCompleted() - Activity state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2808
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2823
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onContentViewSet(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2987
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2990
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    if-nez v0, :cond_0

    .line 2992
    if-eqz p1, :cond_1

    .line 2994
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$18;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraActivity$18;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 3022
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateSystemUiVisibility()V

    .line 3023
    return-void

    .line 3018
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onCountDownTimerCancelled()V
    .locals 3

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3042
    :goto_0
    return-void

    .line 3034
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 3035
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3038
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_1

    .line 3039
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetPhotoCaptureState()V

    goto :goto_0

    .line 3041
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCountDownTimerCancelled() - Photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCountDownTimerChanged(J)V
    .locals 5
    .param p1, "seconds"    # J

    .prologue
    const/4 v3, 0x0

    .line 3049
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3079
    :cond_0
    :goto_0
    return-void

    .line 3052
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCountDownTimerChanged() - Remaining seconds : "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3055
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_3

    .line 3057
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 3059
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 3060
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3061
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3063
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCountDownTimerChanged() - Capture photo"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->capturePhoto(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;Z)Z

    goto :goto_0

    .line 3068
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCountDownTimerChanged() - No capture handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetPhotoCaptureState()V

    goto :goto_0

    .line 3075
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCountDownTimerChanged() - Photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 3077
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onDefaultPhotoCaptureCompleted(Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/meizu/media/camera/CaptureEventArgs;

    .prologue
    .line 3234
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 3236
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDefaultPhotoCaptureCompleted() - Unknown capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDefaultPhotoCaptureCompleted() - Expected capture handle : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    :goto_1
    return-void

    .line 3237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3242
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->completeCapture(Lcom/meizu/media/camera/CaptureHandle;)V

    goto :goto_1
.end method

.method private onDefaultVideoCaptureCompleted(Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/meizu/media/camera/CaptureEventArgs;

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 3252
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDefaultVideoCaptureCompleted() - Unknown capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDefaultVideoCaptureCompleted() - Expected capture handle : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    :goto_1
    return-void

    .line 3253
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3258
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->completeCapture(Lcom/meizu/media/camera/CaptureHandle;)V

    goto :goto_1
.end method

.method private onMediaFileSaved(Lcom/meizu/media/camera/media/MediaEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/meizu/media/camera/media/MediaEventArgs;

    .prologue
    .line 3423
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3424
    return-void
.end method

.method private onMediaSaveCancelled(Lcom/meizu/media/camera/media/MediaEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/meizu/media/camera/media/MediaEventArgs;

    .prologue
    .line 3430
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3431
    return-void
.end method

.method private onMediaSaveFailed(Lcom/meizu/media/camera/media/MediaEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/meizu/media/camera/media/MediaEventArgs;

    .prologue
    .line 3437
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3438
    return-void
.end method

.method private onMediaSaved(Lcom/meizu/media/camera/media/MediaEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/meizu/media/camera/media/MediaEventArgs;

    .prologue
    .line 3444
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3445
    return-void
.end method

.method private onPhotoCaptureStarted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;Lcom/meizu/media/camera/CaptureHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "internalHandle"    # Lcom/meizu/media/camera/CaptureHandle;

    .prologue
    const/4 v2, 0x1

    .line 3623
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 3625
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhotoCaptureStarted() - Unknown handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3652
    :goto_0
    return-void

    .line 3629
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoCaptureStarted() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3632
    iget v0, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    if-eq v0, v2, :cond_1

    .line 3633
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3637
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3649
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhotoCaptureStarted() - Photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3640
    :pswitch_0
    iput-object p2, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    .line 3641
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 3644
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoCaptureStarted() - Stop capture immediately"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3645
    iput-object p2, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    .line 3646
    invoke-static {p2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 3637
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onRequestedOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 3658
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    .line 3660
    .local v1, "oldRotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getRequestedOrientation()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3676
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestedOrientationChanged() - Unsupported orientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3677
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    .line 3681
    .local v0, "newRotation":Lcom/oneplus/base/Rotation;
    :goto_0
    if-eq v1, v0, :cond_0

    .line 3683
    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    .line 3684
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3686
    :cond_0
    return-void

    .line 3663
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_0
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    .line 3664
    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 3666
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_1
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    .line 3667
    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 3669
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_2
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    .line 3670
    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 3672
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :sswitch_3
    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    .line 3673
    .restart local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    goto :goto_0

    .line 3660
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method private onShutter(Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/meizu/media/camera/CaptureEventArgs;

    .prologue
    .line 3791
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 3793
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutter() - Unknown capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3794
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutter() - Expected capture handle : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3800
    :goto_1
    return-void

    .line 3794
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3799
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CaptureEventArgs;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getFrameIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;I)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_1
.end method

.method private onSystemOrientationSettingsChanged(Z)V
    .locals 2
    .param p1, "isSystemOrientationEnabled"    # Z

    .prologue
    .line 3835
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 3836
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    if-eqz v0, :cond_0

    .line 3837
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 3838
    :cond_0
    return-void
.end method

.method private onVideoCaptureStarted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;Lcom/meizu/media/camera/CaptureHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "internalHandle"    # Lcom/meizu/media/camera/CaptureHandle;

    .prologue
    .line 3898
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_1

    .line 3900
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoCaptureStarted() - Unknown handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3927
    :cond_0
    :goto_0
    return-void

    .line 3904
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onVideoCaptureStarted() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3907
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3924
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoCaptureStarted() - Video capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3910
    :pswitch_0
    iput-object p2, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    .line 3911
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3912
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3913
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 3914
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3915
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 3918
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onVideoCaptureStarted() - Stop capture immediately"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3919
    iput-object p2, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    .line 3920
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 3921
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 3907
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerReceivers()V
    .locals 2

    .prologue
    .line 3934
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 3936
    new-instance v1, Lcom/meizu/media/camera/CameraActivity$26;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/CameraActivity$26;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 3977
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3978
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3979
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3980
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3981
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 3982
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3983
    return-void
.end method

.method private releasePreCaptureFocusLockRequest(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 3989
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 3990
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3991
    return-void
.end method

.method private removeScreenShot()V
    .locals 1

    .prologue
    .line 4004
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->removeScreenShot(Lcom/oneplus/base/Handle;)V

    .line 4005
    return-void
.end method

.method private removeScreenShot(Lcom/oneplus/base/Handle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    const/4 v2, 0x0

    .line 4010
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4012
    if-eqz p1, :cond_1

    .line 4014
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4027
    :cond_0
    :goto_0
    return-void

    .line 4018
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4020
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "removeScreenShot()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4021
    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    .line 4022
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4023
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private resetIdleState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, -0x32

    .line 4054
    invoke-static {p0, v4}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 4055
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4056
    .local v0, "isRunning":Z
    iget-boolean v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsIdle:Z

    if-eqz v1, :cond_1

    .line 4058
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "resetIdleState()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4061
    iput-boolean v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsIdle:Z

    .line 4064
    if-eqz v0, :cond_0

    .line 4065
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4068
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4070
    :cond_1
    if-nez v0, :cond_2

    .line 4090
    :goto_0
    :pswitch_0
    return-void

    .line 4072
    :cond_2
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4079
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 4089
    const-wide/32 v2, 0x1d4c0

    invoke-static {p0, v4, v5, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0

    .line 4072
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4079
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resetPhotoCaptureState()V
    .locals 6

    .prologue
    .line 4096
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4131
    :cond_0
    :goto_0
    return-void

    .line 4099
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    sget-object v2, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4103
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4106
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 4107
    .local v0, "pendingHandle":Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 4108
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x320

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 4110
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "resetPhotoCaptureState() - Capture next photo immediately"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4111
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->capturePhoto(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4116
    .end local v0    # "pendingHandle":Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4119
    :pswitch_1
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 4126
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4123
    :pswitch_2
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4096
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4119
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private resetVideoCaptureState()V
    .locals 2

    .prologue
    .line 4137
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4141
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4145
    :goto_0
    return-void

    .line 4144
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreRecordingTimeRatio(Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;

    .prologue
    .line 4152
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 4153
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 4161
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot restore recording time ratio when capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4165
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4168
    :goto_0
    return-void

    .line 4167
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreRecordingTimeRatio() - Ratio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;->ratio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4153
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private restoreSettings(Lcom/meizu/media/camera/CameraActivity$SettingsHandle;)V
    .locals 5
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$SettingsHandle;

    .prologue
    .line 4175
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 4178
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4179
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 4181
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "restoreSettings() - Invalid handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4202
    :cond_0
    :goto_0
    return-void

    .line 4185
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreSettings() - Handle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4188
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4189
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 4191
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4193
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/CameraActivity$SettingsHandle;

    .line 4194
    .local v1, "prevHandle":Lcom/meizu/media/camera/CameraActivity$SettingsHandle;
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    iget-object v3, v1, Lcom/meizu/media/camera/CameraActivity$SettingsHandle;->settings:Lcom/oneplus/base/Settings;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4198
    .end local v1    # "prevHandle":Lcom/meizu/media/camera/CameraActivity$SettingsHandle;
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "restoreSettings() - All settings are removed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setSelfTimerIntervalProp(J)Z
    .locals 3
    .param p1, "seconds"    # J

    .prologue
    .line 4580
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 4581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self timer interval cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4595
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    const-string v1, "SelfTimer.Back"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4596
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    const-string v1, "SelfTimer.Front"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4599
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/base/BaseActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setupWindowFlags()V
    .locals 4

    .prologue
    .line 4411
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 4412
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4415
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->isSecurePhotoMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4416
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4421
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4422
    return-void

    .line 4418
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private startAccelerometer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4686
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    if-eqz v0, :cond_0

    .line 4706
    :goto_0
    return-void

    .line 4688
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4697
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "startAccelerometer()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4700
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 4701
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    .line 4704
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_AcceleromaterListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 4705
    iput-boolean v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    goto :goto_0

    .line 4688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startCameraPreview(Z)Z
    .locals 12
    .param p1, "checkPreviewState"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4773
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 4774
    if-eqz p1, :cond_0

    .line 4776
    sget-object v0, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$OperationState:[I

    iget-object v10, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v10}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_0

    .line 4788
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->canStartCameraPreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4790
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "startCameraPreview() - Cannot start preview in current state"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 4931
    :goto_1
    return v0

    .line 4781
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v10, "startCameraPreview() - Start while stopping"

    invoke-static {v0, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move v0, v8

    .line 4785
    goto :goto_1

    .line 4795
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/Camera;

    .line 4796
    .local v2, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v2, :cond_2

    .line 4798
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "startCameraPreview() - No camera to start preview"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 4799
    goto :goto_1

    .line 4803
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->changeCameraPreviewState(Lcom/meizu/media/camera/OperationState;)Lcom/meizu/media/camera/OperationState;

    move-result-object v0

    sget-object v10, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    if-eq v0, v10, :cond_3

    .line 4805
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "startCameraPreview() - Process interrupted"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 4806
    goto :goto_1

    .line 4810
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v10, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v0, v10, :cond_4

    .line 4812
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.oneplus.camera.ACTION_CAMERA_START"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 4815
    :cond_4
    iget v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewSessionID:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewSessionID:I

    .line 4818
    .local v3, "cameraPreviewSessionID":I
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    if-nez v0, :cond_5

    .line 4820
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "startCameraPreview() - Preview receiver is not ready yet, start preview later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 4821
    goto :goto_1

    .line 4824
    :cond_5
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startCameraPreview() - Camera : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4827
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v10, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v10}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/Resolution;

    move-object v4, v0

    .line 4828
    .local v4, "photoResolution":Lcom/meizu/media/camera/media/Resolution;
    :goto_2
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v1, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/Resolution;

    move-object v5, v0

    .line 4829
    .local v5, "videoResolution":Lcom/meizu/media/camera/media/Resolution;
    :goto_3
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 4830
    .local v6, "previewSize":Landroid/util/Size;
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    sget-object v1, Lcom/meizu/media/camera/ui/Viewfinder;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    .line 4831
    .local v7, "previewReceiver":Ljava/lang/Object;
    iget-object v10, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    new-instance v0, Lcom/meizu/media/camera/CameraActivity$28;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/meizu/media/camera/CameraActivity$28;-><init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/Camera;ILcom/meizu/media/camera/media/Resolution;Lcom/meizu/media/camera/media/Resolution;Landroid/util/Size;Ljava/lang/Object;)V

    invoke-static {v10, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4909
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "startCameraPreview() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4910
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    if-ne v0, v1, :cond_6

    .line 4911
    sget-object v0, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->changeCameraPreviewState(Lcom/meizu/media/camera/OperationState;)Lcom/meizu/media/camera/OperationState;

    :cond_6
    move v0, v9

    .line 4912
    goto/16 :goto_1

    .end local v4    # "photoResolution":Lcom/meizu/media/camera/media/Resolution;
    .end local v5    # "videoResolution":Lcom/meizu/media/camera/media/Resolution;
    .end local v6    # "previewSize":Landroid/util/Size;
    .end local v7    # "previewReceiver":Ljava/lang/Object;
    :cond_7
    move-object v4, v1

    .line 4827
    goto :goto_2

    .restart local v4    # "photoResolution":Lcom/meizu/media/camera/media/Resolution;
    :cond_8
    move-object v5, v1

    .line 4828
    goto :goto_3

    .line 4916
    .restart local v5    # "videoResolution":Lcom/meizu/media/camera/media/Resolution;
    .restart local v6    # "previewSize":Landroid/util/Size;
    .restart local v7    # "previewReceiver":Ljava/lang/Object;
    :cond_9
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4917
    const-string v0, "CameraPreviewStartStop"

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 4920
    :cond_a
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4922
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object p0, v10, v9

    invoke-virtual {v0, v1, v10}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 4923
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->bindToNormalComponents()Z

    .line 4927
    :cond_b
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->startOrientationListener()V

    .line 4928
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->startAccelerometer()V

    move v0, v8

    .line 4931
    goto/16 :goto_1

    .line 4776
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startOrientationListener()V
    .locals 4

    .prologue
    .line 4939
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4984
    :goto_0
    return-void

    .line 4941
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4951
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4953
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    if-nez v0, :cond_1

    .line 4955
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$29;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraActivity$29;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    .line 4977
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/OrientationManager;->setCallback(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 4981
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "startOrientationListener()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4982
    invoke-static {p0}, Lcom/oneplus/base/OrientationManager;->startOrientationSensor(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    .line 4983
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x3c

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4941
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopAccelerometer()V
    .locals 2

    .prologue
    .line 4991
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    if-nez v0, :cond_1

    .line 5002
    :cond_0
    :goto_0
    return-void

    .line 4993
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 4996
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "stopAccelerometer()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4999
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_AcceleromaterListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 5000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsAccelerometerStarted:Z

    .line 5001
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v0, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    check-cast v0, [F

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onAccelerometerValuesChanged([F)V

    goto :goto_0
.end method

.method private stopCameraPreview(Z)V
    .locals 7
    .param p1, "sync"    # Z

    .prologue
    .line 5024
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 5025
    sget-object v4, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$OperationState:[I

    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v5}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 5041
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 5042
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_2

    .line 5044
    sget-object v4, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-direct {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->changeCameraPreviewState(Lcom/meizu/media/camera/OperationState;)Lcom/meizu/media/camera/OperationState;

    .line 5087
    .end local v0    # "camera":Lcom/meizu/media/camera/Camera;
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 5030
    :pswitch_2
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "stopCameraPreview() - Stop while starting"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5033
    :pswitch_3
    if-nez p1, :cond_0

    goto :goto_1

    .line 5049
    .restart local v0    # "camera":Lcom/meizu/media/camera/Camera;
    :cond_2
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5050
    const-string v4, "CameraPreviewStartStop"

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 5053
    :cond_3
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v4, v5, :cond_4

    .line 5054
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v4, v5}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5055
    :cond_4
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v4, v5, :cond_5

    .line 5056
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v4, v5}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5059
    :cond_5
    sget-object v4, Lcom/meizu/media/camera/OperationState;->STOPPING:Lcom/meizu/media/camera/OperationState;

    invoke-direct {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->changeCameraPreviewState(Lcom/meizu/media/camera/OperationState;)Lcom/meizu/media/camera/OperationState;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/OperationState;->STOPPING:Lcom/meizu/media/camera/OperationState;

    if-eq v4, v5, :cond_6

    .line 5061
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "stopCameraPreview() - Process interrupted"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5066
    :cond_6
    if-eqz p1, :cond_9

    const/4 v1, 0x1

    .line 5067
    .local v1, "flags":I
    :goto_2
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    if-eqz v4, :cond_8

    .line 5069
    if-eqz p1, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5070
    .local v2, "time":J
    :goto_3
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v4, v0, v1}, Lcom/meizu/media/camera/CameraThread;->stopCameraPreview(Lcom/meizu/media/camera/Camera;I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 5072
    if-eqz p1, :cond_b

    .line 5073
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "stopCameraPreview() - Fail to stop camera preview synchronously"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5077
    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    .line 5079
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 5080
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopCameraPreview() - Take "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to stop preview"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5085
    .end local v2    # "time":J
    :cond_8
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    sget-object v5, Lcom/meizu/media/camera/OperationState;->STOPPING:Lcom/meizu/media/camera/OperationState;

    if-ne v4, v5, :cond_1

    .line 5086
    sget-object v4, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-direct {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->changeCameraPreviewState(Lcom/meizu/media/camera/OperationState;)Lcom/meizu/media/camera/OperationState;

    goto/16 :goto_1

    .line 5066
    .end local v1    # "flags":I
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 5069
    .restart local v1    # "flags":I
    :cond_a
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 5075
    .restart local v2    # "time":J
    :cond_b
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "stopCameraPreview() - Fail to stop camera preview"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 5025
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private stopOrientationListener()V
    .locals 2

    .prologue
    .line 5093
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5098
    :goto_0
    return-void

    .line 5095
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "stopOrientationListener()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5096
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    .line 5097
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private stopPhotoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .prologue
    .line 5105
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 5106
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 5108
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "stopPhotoCapture() - Invalid handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5152
    :goto_0
    return-void

    .line 5112
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPhotoCapture() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5115
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 5118
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-ne v0, p1, :cond_1

    .line 5120
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "stopPhotoCapture() - Cancel pending capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    goto :goto_0

    .line 5126
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5128
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "stopPhotoCapture() - Stop self timer"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5129
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5130
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    .line 5131
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->onCaptureCompleted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 5136
    :cond_2
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5143
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPhotoCapture() - Photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5140
    :pswitch_0
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->STOPPING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5148
    iget-object v0, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5149
    iget-object v0, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 5151
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "stopPhotoCapture() - Stop when starting"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5136
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZ)V
    .locals 1
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "fromVideoSnapshot"    # Z
    .param p3, "fromCameraThread"    # Z

    .prologue
    .line 5158
    sget-object v0, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/media/camera/CameraActivity;->stopVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZLcom/meizu/media/camera/CaptureCompleteReason;)V

    .line 5159
    return-void
.end method

.method private stopVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZLcom/meizu/media/camera/CaptureCompleteReason;)V
    .locals 4
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    .param p2, "fromVideoSnapshot"    # Z
    .param p3, "fromCameraThread"    # Z
    .param p4, "reason"    # Lcom/meizu/media/camera/CaptureCompleteReason;

    .prologue
    .line 5163
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 5164
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eq v1, p1, :cond_0

    .line 5166
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "stopVideoCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5231
    :goto_0
    return-void

    .line 5170
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoCapture() - Handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", from camera thread : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5171
    if-eqz p2, :cond_1

    .line 5172
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "stopVideoCapture() - Stop from video snapshot"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5175
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p4}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5178
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 5181
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5192
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoCapture() - Video capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5189
    :pswitch_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/VideoCaptureState;->STOPPING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5197
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5198
    const-string v1, "VideoCaptureStartStop"

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    .line 5201
    :cond_2
    const/16 v1, -0x28

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 5204
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    sparse-switch v1, :sswitch_data_0

    .line 5212
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 5214
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "stopVideoCapture() - Waiting for video snapshot"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5209
    :sswitch_0
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetPhotoCaptureState()V

    .line 5222
    :goto_1
    :sswitch_1
    iget-object v1, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5224
    const/4 v0, 0x0

    .line 5225
    .local v0, "flags":I
    iget v1, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->closeFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 5226
    or-int/lit8 v0, v0, 0x2

    .line 5227
    :cond_3
    iget-object v1, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-static {v1, v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 5217
    .end local v0    # "flags":I
    :cond_4
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->completePhotoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_1

    .line 5230
    :cond_5
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "stopVideoCapture() - Stop when starting"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 5204
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private switchCamera(Lcom/meizu/media/camera/Camera;)Z
    .locals 2
    .param p1, "newCamera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 5340
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/CameraActivity;->switchCamera(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;I)Z

    move-result v0

    return v0
.end method

.method private switchCamera(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera$LensFacing;I)Z
    .locals 7
    .param p1, "oldCamera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "lensFacing"    # Lcom/meizu/media/camera/Camera$LensFacing;
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5300
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 5303
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 5304
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_0

    .line 5305
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v6, "switchCamera() - No primary camera"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5308
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

    if-eq v3, p2, :cond_1

    .line 5310
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchCamera() - Camera is locked to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 5333
    :goto_0
    return v3

    .line 5315
    :cond_1
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 5316
    .local v1, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5318
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "switchCamera() - Camera list is not ready yet, switch camera later"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5319
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5320
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    const-string v4, "CameraLensFacing"

    invoke-virtual {v3, v4, p2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move v3, v5

    .line 5321
    goto :goto_0

    .line 5323
    :cond_3
    invoke-static {v1, p2, v4}, Lcom/meizu/media/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/meizu/media/camera/Camera$LensFacing;Z)Lcom/meizu/media/camera/Camera;

    move-result-object v2

    .line 5324
    .local v2, "newCamera":Lcom/meizu/media/camera/Camera;
    if-nez v2, :cond_4

    .line 5326
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchCamera() - No camera with lens facing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 5327
    goto :goto_0

    .line 5329
    :cond_4
    if-ne v0, v2, :cond_5

    move v3, v5

    .line 5330
    goto :goto_0

    .line 5333
    :cond_5
    invoke-direct {p0, p1, v2, p3}, Lcom/meizu/media/camera/CameraActivity;->switchCamera(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;I)Z

    move-result v3

    goto :goto_0
.end method

.method private switchCamera(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;I)Z
    .locals 6
    .param p1, "oldCamera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "newCamera"    # Lcom/meizu/media/camera/Camera;
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5345
    if-ne p1, p2, :cond_0

    .line 5347
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "switchCamera() - Switch to same camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5477
    :goto_0
    return v1

    .line 5352
    :cond_0
    sget-object v4, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v2

    aget v2, v4, v2

    sparse-switch v2, :sswitch_data_0

    .line 5358
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchCamera() - Photo capture state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 5359
    goto :goto_0

    .line 5361
    :sswitch_0
    sget-object v4, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 5367
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchCamera() - Video capture state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 5368
    goto :goto_0

    .line 5370
    :pswitch_0
    and-int/lit8 v2, p3, 0x8

    if-nez v2, :cond_1

    .line 5372
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5374
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "switchCamera() - Camera is switching"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 5375
    goto/16 :goto_0

    .line 5380
    :cond_1
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5383
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5384
    const-string v2, "CameraSwitchStartStop"

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    .line 5387
    :cond_2
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_5

    .line 5389
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    if-eqz v2, :cond_6

    .line 5392
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCoverStyle:Lcom/meizu/media/camera/ui/PreviewCover$Style;

    if-nez v2, :cond_3

    .line 5396
    sget-object v2, Lcom/meizu/media/camera/ui/PreviewCover$Style;->PREVIEW_BLUR:Lcom/meizu/media/camera/ui/PreviewCover$Style;

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCoverStyle:Lcom/meizu/media/camera/ui/PreviewCover$Style;

    .line 5398
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    sget-object v4, Lcom/meizu/media/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/meizu/media/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->CLOSING:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    if-ne v2, v4, :cond_4

    .line 5400
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "switchCamera() - Closing, ignore switch camera"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5401
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5402
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    move v1, v3

    .line 5403
    goto/16 :goto_0

    .line 5406
    :cond_4
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "switchCamera() - Show preview cover"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5407
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCoverStyle:Lcom/meizu/media/camera/ui/PreviewCover$Style;

    invoke-interface {v2, v4, v3}, Lcom/meizu/media/camera/ui/PreviewCover;->showPreviewCover(Lcom/meizu/media/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 5408
    sget-object v4, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$ui$PreviewCover$UIState:[I

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    sget-object v5, Lcom/meizu/media/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v5}, Lcom/meizu/media/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_1

    .line 5416
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "switchCamera() - No need to show preview cover"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5424
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "switchCamera()"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5428
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$OperationState:[I

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v4}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_2

    .line 5435
    const/4 v0, 0x0

    .line 5438
    .local v0, "restartPreview":Z
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->stopCameraPreview()V

    .line 5439
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    sget-object v4, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-eq v2, v4, :cond_7

    .line 5441
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchCamera() - Preview state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5444
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5447
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    move v1, v3

    .line 5448
    goto/16 :goto_0

    .line 5413
    .end local v0    # "restartPreview":Z
    :pswitch_1
    iput-object p2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/meizu/media/camera/Camera;

    goto/16 :goto_0

    .line 5421
    :cond_6
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "switchCamera() - Cannot start switch animation"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5432
    :pswitch_2
    const/4 v0, 0x1

    .line 5433
    .restart local v0    # "restartPreview":Z
    goto :goto_2

    .line 5452
    :cond_7
    if-eqz p1, :cond_8

    .line 5453
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v2, p1}, Lcom/meizu/media/camera/CameraThread;->closeCamera(Lcom/meizu/media/camera/Camera;)V

    .line 5456
    :cond_8
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v2, p2}, Lcom/meizu/media/camera/CameraThread;->openCamera(Lcom/meizu/media/camera/Camera;)Z

    move-result v1

    .line 5457
    .local v1, "success":Z
    if-eqz v1, :cond_b

    .line 5459
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, p2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5460
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5461
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    const-string v4, "CameraLensFacing"

    sget-object v5, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p2, v5}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5467
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->startCameraPreview()Z

    move-result v2

    if-nez v2, :cond_a

    .line 5468
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "switchCamera() - Fail to restart preview"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5471
    :cond_a
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5474
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraSwitchCUDHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 5464
    :cond_b
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "switchCamera() - Fail to open camera by camera thread"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5352
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 5361
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 5408
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 5428
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private unlockCamera(Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;

    .prologue
    .line 5504
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 5507
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5509
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "unlockCamera()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5512
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5515
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/CameraActivity$CameraContext;

    .line 5516
    .local v0, "cameraContext":Lcom/meizu/media/camera/CameraActivity$CameraContext;
    iget-object v2, v0, Lcom/meizu/media/camera/CameraActivity$CameraContext;->camera:Lcom/meizu/media/camera/Camera;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/CameraActivity$CameraContext;

    iget-object v1, v1, Lcom/meizu/media/camera/CameraActivity$CameraContext;->camera:Lcom/meizu/media/camera/Camera;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v1, v3}, Lcom/meizu/media/camera/CameraActivity;->switchCamera(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;I)Z

    .line 5518
    .end local v0    # "cameraContext":Lcom/meizu/media/camera/CameraActivity$CameraContext;
    :cond_0
    return-void
.end method

.method private unlockRotation(Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;

    .prologue
    .line 5525
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 5528
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5539
    :cond_0
    :goto_0
    return-void

    .line 5532
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5534
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "unlockRotation()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5535
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 5536
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    if-eqz v0, :cond_0

    .line 5537
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    goto :goto_0
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 5545
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5547
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceivers()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5548
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5550
    :cond_0
    return-void
.end method

.method private updateBurstEnablingState()V
    .locals 3

    .prologue
    .line 5557
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5561
    :cond_0
    const/4 v0, 0x0

    .line 5565
    .local v0, "isEnabled":Z
    :goto_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5566
    return-void

    .line 5564
    .end local v0    # "isEnabled":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isEnabled":Z
    goto :goto_0
.end method

.method private updateElapsedRecordingTime(JJ)V
    .locals 25
    .param p1, "lastCheckTime"    # J
    .param p3, "seconds"    # J

    .prologue
    .line 5573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 5574
    .local v18, "checkTime":J
    const-wide/16 v2, 0x1

    add-long p3, p3, v2

    .line 5575
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5578
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 5579
    .local v22, "maxSeconds":J
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-ltz v2, :cond_0

    cmp-long v2, p3, v22

    if-ltz v2, :cond_0

    .line 5581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateElapsedRecordingTime() - Max duration ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec) reached, stop recording"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/meizu/media/camera/CaptureCompleteReason;->MAX_DURATION_REACHED:Lcom/meizu/media/camera/CaptureCompleteReason;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/meizu/media/camera/CameraActivity;->stopVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZLcom/meizu/media/camera/CaptureCompleteReason;)V

    .line 5603
    :goto_0
    return-void

    .line 5588
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5589
    const-wide/16 v16, 0x3e8

    .line 5594
    .local v16, "interval":J
    :goto_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/meizu/media/camera/CameraActivity;->m_VideoRecordStartTime:J

    sub-long v20, v18, v2

    .line 5596
    .local v20, "diffFromStartTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    .line 5598
    const-wide/16 v2, 0x1

    add-long v2, v2, p3

    mul-long v2, v2, v16

    sub-long v8, v2, v20

    .line 5599
    .local v8, "delay":J
    const/16 v4, -0x28

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    goto :goto_0

    .line 5591
    .end local v8    # "delay":J
    .end local v16    # "interval":J
    .end local v20    # "diffFromStartTime":J
    :cond_1
    const/high16 v3, 0x447a0000    # 1000.0f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;

    iget v2, v2, Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;->ratio:F

    div-float v2, v3, v2

    float-to-long v0, v2

    move-wide/from16 v16, v0

    .restart local v16    # "interval":J
    goto :goto_1

    .line 5602
    .restart local v20    # "diffFromStartTime":J
    :cond_2
    const/16 v12, -0x28

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v15, v2

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v17}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    goto :goto_0
.end method

.method private updateScreenShotRotation(Lcom/oneplus/base/Rotation;)V
    .locals 6
    .param p1, "windowRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 5610
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 5643
    :cond_0
    :goto_0
    return-void

    .line 5614
    :cond_1
    const/4 v0, 0x1

    .line 5615
    .local v0, "isScreenShotNeeded":Z
    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v2

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v4}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v4

    sub-int v1, v2, v4

    .line 5616
    .local v1, "rotationDiff":I
    if-gez v1, :cond_2

    .line 5617
    add-int/lit16 v1, v1, 0x168

    .line 5618
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_3

    .line 5619
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 5622
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 5637
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    .line 5640
    :goto_2
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 5641
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5642
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "updateScreenShotRotation() - Window rotation : "

    const-string v4, ", visible : "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, p1, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 5621
    :cond_3
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 5625
    :sswitch_0
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 5626
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 5629
    :sswitch_1
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 5630
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 5633
    :sswitch_2
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 5634
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    :cond_4
    move v0, v3

    .line 5637
    goto :goto_2

    .line 5641
    :cond_5
    const/16 v3, 0x8

    goto :goto_3

    .line 5622
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private updateScreenSize()V
    .locals 4

    .prologue
    .line 5649
    new-instance v0, Lcom/oneplus/base/ScreenSize;

    iget-boolean v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, p0, v1}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    .line 5650
    .local v0, "size":Lcom/oneplus/base/ScreenSize;
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5651
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreenSize() - Screen size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5652
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    if-eqz v1, :cond_1

    .line 5653
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v1, v0}, Lcom/meizu/media/camera/CameraThread;->setScreenSize(Lcom/oneplus/base/ScreenSize;)V

    .line 5654
    :cond_1
    return-void

    .line 5649
    .end local v0    # "size":Lcom/oneplus/base/ScreenSize;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSelfTimerInternal()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 5661
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_CountDownTimer:Lcom/meizu/media/camera/CountDownTimer;

    if-nez v4, :cond_0

    .line 5684
    :goto_0
    return-void

    .line 5665
    :cond_0
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-eq v4, v5, :cond_1

    .line 5667
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-super {p0, v4, v5}, Lcom/oneplus/base/BaseActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 5672
    :cond_1
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 5673
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_2

    .line 5675
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "updateSelfTimerInternal() - No primary camera"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5676
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-super {p0, v4, v5}, Lcom/oneplus/base/BaseActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 5681
    :cond_2
    sget-object v4, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v4, v5, :cond_3

    const-string v1, "SelfTimer.Back"

    .line 5682
    .local v1, "key":Ljava/lang/String;
    :goto_1
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Settings;

    invoke-virtual {v4, v1}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 5683
    .local v2, "seconds":J
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-super {p0, v4, v5}, Lcom/oneplus/base/BaseActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 5681
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "seconds":J
    :cond_3
    const-string v1, "SelfTimer.Front"

    goto :goto_1
.end method

.method private updateSelfTimerUsability()V
    .locals 3

    .prologue
    .line 5691
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5694
    :cond_0
    const/4 v0, 0x0

    .line 5698
    .local v0, "isUsable":Z
    :goto_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5699
    return-void

    .line 5697
    .end local v0    # "isUsable":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isUsable":Z
    goto :goto_0
.end method

.method private updateSystemUiVisibility()V
    .locals 4

    .prologue
    .line 5706
    iget-boolean v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    if-eqz v2, :cond_1

    .line 5724
    :cond_0
    :goto_0
    return-void

    .line 5710
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, -0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5713
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5714
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5718
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 5719
    .local v1, "visibility":I
    or-int/lit16 v2, v1, 0x800

    or-int/lit16 v2, v2, 0x200

    or-int/lit8 v2, v2, 0x2

    or-int/lit16 v2, v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V
    .locals 3
    .param p1, "builders"    # [Lcom/oneplus/base/component/ComponentBuilder;

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 729
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 733
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected canStartCameraPreview()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 906
    sget-object v3, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 928
    :goto_0
    return v0

    .line 916
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 919
    goto :goto_0

    .line 923
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    move v0, v1

    .line 924
    goto :goto_0

    :cond_1
    move v0, v2

    .line 928
    goto :goto_0

    .line 906
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canVideoSnapshot()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 938
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v0}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 954
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canVideoSnapshot() - Unknown media type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 955
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 941
    goto :goto_0

    .line 943
    :pswitch_1
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 944
    goto :goto_0

    .line 945
    :cond_0
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    move v0, v1

    .line 951
    goto :goto_0

    .line 949
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 945
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final capturePhoto()Lcom/meizu/media/camera/CaptureHandle;
    .locals 2

    .prologue
    .line 966
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->capturePhoto(II)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public final capturePhoto(I)Lcom/meizu/media/camera/CaptureHandle;
    .locals 1
    .param p1, "frameCount"    # I

    .prologue
    .line 977
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/media/camera/CameraActivity;->capturePhoto(II)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public capturePhoto(II)Lcom/meizu/media/camera/CaptureHandle;
    .locals 5
    .param p1, "frameCount"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 990
    if-nez p1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "capturePhoto() - Invalid frame count"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1066
    :goto_0
    return-object v1

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 998
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    if-nez v1, :cond_1

    .line 1000
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "capturePhoto() - No camera thread"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1001
    goto :goto_0

    .line 1005
    :cond_1
    sget-object v3, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 1039
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capturePhoto() - Capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1040
    goto :goto_0

    .line 1010
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1012
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "capturePhoto() - Counting-down self timer"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1013
    goto :goto_0

    .line 1017
    :cond_3
    :pswitch_1
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1019
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-nez v1, :cond_4

    .line 1020
    new-instance v1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {v1, p0, p1}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;-><init>(Lcom/meizu/media/camera/CameraActivity;I)V

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 1023
    :goto_1
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capturePhoto() - Start capture after current capture completes, pending handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    goto/16 :goto_0

    .line 1022
    :cond_4
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->updateCreationTime()V

    goto :goto_1

    .line 1026
    :cond_5
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "capturePhoto() - Fast shot-to-shot is disabled"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1027
    goto/16 :goto_0

    .line 1029
    :pswitch_2
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v1, v3, :cond_2

    .line 1031
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-nez v1, :cond_6

    .line 1032
    new-instance v1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {v1, p0, p1}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;-><init>(Lcom/meizu/media/camera/CameraActivity;I)V

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 1035
    :goto_2
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capturePhoto() - Start capture after capture state ready, pending handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    goto/16 :goto_0

    .line 1034
    :cond_6
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->updateCreationTime()V

    goto :goto_2

    .line 1042
    :pswitch_3
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v1, v3, :cond_7

    .line 1044
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capturePhoto() - Activity state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1045
    goto/16 :goto_0

    .line 1049
    :cond_7
    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1051
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "capturePhoto() - Burst capture is disabled"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const/4 p1, 0x1

    .line 1054
    :cond_8
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;-><init>(Lcom/meizu/media/camera/CameraActivity;I)V

    .line 1057
    .local v0, "handle":Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->capturePhoto(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;Z)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1059
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "capturePhoto() - Fail to capture"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoRotationLockHandle:Lcom/oneplus/base/Handle;

    .line 1061
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p0, v1, v3}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-object v1, v2

    .line 1062
    goto/16 :goto_0

    .line 1066
    :cond_9
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    goto/16 :goto_0

    .line 1005
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final captureVideo()Lcom/meizu/media/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 1181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->captureVideo(I)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    return-object v0
.end method

.method public captureVideo(I)Lcom/meizu/media/camera/CaptureHandle;
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1193
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 1194
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    if-eq v2, v3, :cond_1

    .line 1196
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureVideo() - Video capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1206
    :cond_0
    :goto_0
    return-object v0

    .line 1201
    :cond_1
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    .line 1204
    .local v0, "handle":Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->captureVideo(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1205
    goto :goto_0
.end method

.method public completeCapture(Lcom/meizu/media/camera/CaptureHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/CaptureHandle;

    .prologue
    .line 1406
    if-nez p1, :cond_0

    .line 1408
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "completeCapture() - No handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    :goto_0
    return-void

    .line 1411
    :cond_0
    instance-of v1, p1, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-nez v1, :cond_1

    .line 1413
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "completeCapture() - Invalid handle"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1418
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    move-object v0, p1

    .line 1421
    check-cast v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 1422
    .local v0, "handleImpl":Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1425
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->completePhotoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 1428
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->completeVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 1422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disableBurstPhotoCapture()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 1518
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 1521
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$9;

    const-string v1, "BurstDisable"

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/CameraActivity$9;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V

    .line 1529
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1532
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_BurstDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1533
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1536
    :cond_0
    return-object v0
.end method

.method public disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "usage"    # Ljava/lang/String;

    .prologue
    .line 1547
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "usage"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 1563
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 1564
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 1566
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1575
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCaptureUI() - Activity state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const/4 v0, 0x0

    .line 1590
    :cond_0
    :goto_0
    return-object v0

    .line 1581
    :cond_1
    :pswitch_0
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;I)V

    .line 1582
    .local v0, "handle":Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1583
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCaptureUI() - Handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handle count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1587
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public disableFastShotToShot()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 1601
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 1604
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$10;

    const-string v1, "FastShotToShotDisable"

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/CameraActivity$10;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V

    .line 1612
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1615
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eqz v1, :cond_0

    .line 1619
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 1620
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 1622
    :cond_0
    return-object v0
.end method

.method public disableSelfTimer()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 1636
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$11;

    const-string v1, "SelfTimerDisable"

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/CameraActivity$11;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V

    .line 1644
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1647
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1649
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1650
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_SelfTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1652
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "disableSelfTimer() - Stop self-timer"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->stopPhotoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    .line 1658
    :cond_0
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 1668
    .local v7, "action":I
    if-nez v7, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "dispatchTouchEvent() - Action="

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", x="

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1672
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1675
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CancelTouchEvents:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_LastNavBarVisibleTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "dispatchTouchEvent() - Cancel touch event after showing navigation bar"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    iput-boolean v11, p0, Lcom/meizu/media/camera/CameraActivity;->m_CancelTouchEvents:Z

    .line 1683
    :cond_0
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetIdleState()V

    .line 1689
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CancelTouchEvents:Z

    if-nez v0, :cond_3

    .line 1690
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1706
    .local v10, "result":Z
    :goto_0
    if-eq v7, v11, :cond_1

    if-ne v7, v13, :cond_2

    .line 1708
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "dispatchTouchEvent() - Action="

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", x="

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1709
    iput-boolean v12, p0, Lcom/meizu/media/camera/CameraActivity;->m_CancelTouchEvents:Z

    .line 1710
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1714
    :cond_2
    return v10

    .line 1693
    .end local v10    # "result":Z
    :cond_3
    :try_start_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1694
    .local v9, "fakeEvent":Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1695
    invoke-super {p0, v9}, Lcom/oneplus/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 1696
    .restart local v10    # "result":Z
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1699
    .end local v9    # "fakeEvent":Landroid/view/MotionEvent;
    .end local v10    # "result":Z
    :catch_0
    move-exception v8

    .line 1701
    .local v8, "ex":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "dispatchTouchEvent() - Unhandled error"

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1702
    const/4 v10, 0x0

    .restart local v10    # "result":Z
    goto :goto_0
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
    .line 1765
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    .line 1767
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

    .line 1776
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponents(Ljava/lang/Class;[Ljava/lang/Object;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    .line 1778
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [Lcom/oneplus/base/component/Component;

    check-cast v0, [Lcom/oneplus/base/component/Component;

    goto :goto_0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
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
    .line 1787
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    .line 1803
    :goto_0
    return-object v0

    .line 1789
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1791
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1792
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/CameraActivity$CameraContext;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$CameraContext;->camera:Lcom/meizu/media/camera/Camera;

    goto :goto_0

    .line 1793
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1795
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 1796
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    goto :goto_0

    .line 1797
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_IDLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 1798
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsIdle:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1799
    :cond_4
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 1800
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1801
    :cond_5
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 1802
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    goto :goto_0

    .line 1803
    :cond_6
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCameraThread()Lcom/meizu/media/camera/CameraThread;
    .locals 1

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    return-object v0
.end method

.method protected final getComponentManager()Lcom/oneplus/base/component/ComponentManager;
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    return-object v0
.end method

.method public final getMediaResultInfo()Lcom/meizu/media/camera/MediaResultInfo;
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_MediaResultInfo:Lcom/meizu/media/camera/MediaResultInfo;

    return-object v0
.end method

.method public final getResolutionManager()Lcom/meizu/media/camera/media/ResolutionManager;
    .locals 5

    .prologue
    .line 1850
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-nez v1, :cond_0

    .line 1852
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v2, Lcom/meizu/media/camera/media/ResolutionManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/media/ResolutionManager;

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    .line 1853
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-eqz v1, :cond_1

    .line 1855
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$12;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/CameraActivity$12;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    .line 1863
    .local v0, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<Landroid/util/Size;>;"
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v2, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_PHOTO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2, v0}, Lcom/meizu/media/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1864
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v2, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2, v0}, Lcom/meizu/media/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1865
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v2, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/meizu/media/camera/CameraActivity$13;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/CameraActivity$13;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1875
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v3, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1880
    .end local v0    # "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<Landroid/util/Size;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    return-object v1

    .line 1878
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "getResolutionManager() - No ResolutionManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStartMode()Lcom/meizu/media/camera/StartMode;
    .locals 1

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    return-object v0
.end method

.method public final getViewfinder()Lcom/meizu/media/camera/ui/Viewfinder;
    .locals 4

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    if-nez v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const-class v1, Lcom/meizu/media/camera/ui/Viewfinder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/Viewfinder;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    .line 1893
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    if-eqz v0, :cond_1

    .line 1895
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    sget-object v1, Lcom/meizu/media/camera/ui/Viewfinder;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/CameraActivity$14;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraActivity$14;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ui/Viewfinder;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1911
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    return-object v0

    .line 1909
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "bindToComponents() - No Viewfinder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1921
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2012
    :cond_0
    :goto_0
    return-void

    .line 1924
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/meizu/media/camera/Camera;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->onCameraPreviewStartFailed(Lcom/meizu/media/camera/Camera;I)V

    goto :goto_0

    .line 1928
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/meizu/media/camera/Camera;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->onCameraPreviewStarted(Lcom/meizu/media/camera/Camera;I)V

    goto :goto_0

    .line 1933
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 1934
    .local v0, "array":[Ljava/lang/Object;
    aget-object v2, v0, v3

    check-cast v2, Lcom/oneplus/base/EventKey;

    aget-object v3, v0, v6

    check-cast v3, Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->onCameraThreadEventReceived(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 1940
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 1941
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v3

    check-cast v2, Lcom/oneplus/base/PropertyKey;

    aget-object v3, v0, v6

    check-cast v3, Lcom/oneplus/base/PropertyChangeEventArgs;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->onCameraThreadPropertyChanged(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    goto :goto_0

    .line 1946
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_4
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1950
    :sswitch_5
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->idle()V

    goto :goto_0

    .line 1955
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 1956
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v3

    check-cast v2, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v6

    check-cast v3, Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->onPhotoCaptureFailed(Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V

    goto :goto_0

    .line 1961
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 1962
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v3

    check-cast v2, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v6

    check-cast v3, Lcom/meizu/media/camera/CaptureHandle;

    invoke-direct {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->onPhotoCaptureStarted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;Lcom/meizu/media/camera/CaptureHandle;)V

    goto :goto_0

    .line 1967
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_8
    iget-boolean v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v2, :cond_0

    .line 1970
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    .line 1971
    .local v1, "rotation":Lcom/oneplus/base/Rotation;
    if-eqz v1, :cond_1

    .line 1972
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0, v2, v1}, Lcom/meizu/media/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 1973
    :cond_1
    iput-boolean v6, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    .line 1974
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1980
    .end local v1    # "rotation":Lcom/oneplus/base/Rotation;
    :sswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 1981
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v2, v0, v6

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->updateElapsedRecordingTime(JJ)V

    goto/16 :goto_0

    .line 1986
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/base/Rotation;

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->updateScreenShotRotation(Lcom/oneplus/base/Rotation;)V

    goto/16 :goto_0

    .line 1990
    :sswitch_b
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateSystemUiVisibility()V

    goto/16 :goto_0

    .line 1995
    :sswitch_c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 1996
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v3

    check-cast v2, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v6

    check-cast v3, Lcom/meizu/media/camera/CaptureCompleteReason;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->onVideoCaptureFailed(Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V

    goto/16 :goto_0

    .line 2001
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 2002
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v2, v0, v3

    check-cast v2, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    aget-object v3, v0, v6

    check-cast v3, Lcom/meizu/media/camera/CaptureHandle;

    invoke-direct {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->onVideoCaptureStarted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;Lcom/meizu/media/camera/CaptureHandle;)V

    goto/16 :goto_0

    .line 2007
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_e
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "MSG_FINISH_BY_SELF"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 1921
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a -> :sswitch_a
        -0x50 -> :sswitch_b
        -0x46 -> :sswitch_4
        -0x3c -> :sswitch_8
        -0x33 -> :sswitch_e
        -0x32 -> :sswitch_5
        -0x28 -> :sswitch_9
        -0x1f -> :sswitch_d
        -0x1e -> :sswitch_c
        -0x15 -> :sswitch_7
        -0x14 -> :sswitch_6
        -0xb -> :sswitch_1
        -0xa -> :sswitch_0
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
    .end sparse-switch
.end method

.method public hideReviewScreen()V
    .locals 3

    .prologue
    .line 2019
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    .line 2022
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->REVIEWING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_2

    .line 2023
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onCaptureCompleted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    .line 2026
    :cond_0
    :goto_1
    return-void

    .line 2019
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2024
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->REVIEWING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 2025
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onCaptureCompleted(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_1
.end method

.method protected final ignoreNavigationBar()V
    .locals 1

    .prologue
    .line 2048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IgnoreNavigationBar:Z

    .line 2049
    return-void
.end method

.method public isPhotoServiceMode()Z
    .locals 2

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    sget-object v1, Lcom/meizu/media/camera/StartMode;->SERVICE_PHOTO:Lcom/meizu/media/camera/StartMode;

    if-ne v0, v1, :cond_0

    .line 2059
    const/4 v0, 0x1

    .line 2061
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecurePhotoMode()Z
    .locals 2

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    sget-object v1, Lcom/meizu/media/camera/StartMode;->SECURE_PHOTO:Lcom/meizu/media/camera/StartMode;

    if-ne v0, v1, :cond_0

    .line 2072
    const/4 v0, 0x1

    .line 2074
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceMode()Z
    .locals 2

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    sget-object v1, Lcom/meizu/media/camera/StartMode;->NORMAL:Lcom/meizu/media/camera/StartMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    sget-object v1, Lcom/meizu/media/camera/StartMode;->NORMAL_PHOTO:Lcom/meizu/media/camera/StartMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    sget-object v1, Lcom/meizu/media/camera/StartMode;->NORMAL_VIDEO:Lcom/meizu/media/camera/StartMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    sget-object v1, Lcom/meizu/media/camera/StartMode;->SECURE_PHOTO:Lcom/meizu/media/camera/StartMode;

    if-ne v0, v1, :cond_1

    .line 2088
    :cond_0
    const/4 v0, 0x0

    .line 2090
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVideoServiceMode()Z
    .locals 2

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_StartMode:Lcom/meizu/media/camera/StartMode;

    sget-object v1, Lcom/meizu/media/camera/StartMode;->SERVICE_VIDEO:Lcom/meizu/media/camera/StartMode;

    if-ne v0, v1, :cond_0

    .line 2101
    const/4 v0, 0x1

    .line 2103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockCamera(Lcom/meizu/media/camera/Camera$LensFacing;)Lcom/oneplus/base/Handle;
    .locals 8
    .param p1, "lensFacing"    # Lcom/meizu/media/camera/Camera$LensFacing;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 2115
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 2116
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-ne v3, v5, :cond_1

    .line 2118
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "lockCamera() - Activity state is DESTROYED"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 2157
    :cond_0
    :goto_0
    return-object v1

    .line 2123
    :cond_1
    if-nez p1, :cond_2

    .line 2125
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "lockCamera() - No lens facing specified"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 2126
    goto :goto_0

    .line 2130
    :cond_2
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

    if-eq v3, p1, :cond_3

    .line 2132
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lockCamera() - Camera is locked to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 2133
    goto :goto_0

    .line 2137
    :cond_3
    new-instance v1, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;

    invoke-direct {v1, p0, p1}, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;-><init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/Camera$LensFacing;)V

    .line 2138
    .local v1, "handle":Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2139
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lockCamera() - Lens facing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", handle : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 2143
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/Camera;

    .line 2144
    .local v2, "oldCamera":Lcom/meizu/media/camera/Camera;
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$CameraContext;

    invoke-direct {v0, v2}, Lcom/meizu/media/camera/CameraActivity$CameraContext;-><init>(Lcom/meizu/media/camera/Camera;)V

    .line 2145
    .local v0, "cameraContext":Lcom/meizu/media/camera/CameraActivity$CameraContext;
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2148
    const/4 v3, 0x4

    invoke-direct {p0, v2, p1, v3}, Lcom/meizu/media/camera/CameraActivity;->switchCamera(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera$LensFacing;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2150
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "lockCamera() - Fail to switch camera"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 2152
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    move-object v1, v4

    .line 2153
    goto/16 :goto_0

    .line 2155
    :cond_4
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v5, 0x1

    .line 2169
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 2172
    if-nez p1, :cond_2

    .line 2173
    iget-object p1, p0, Lcom/meizu/media/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2181
    :cond_0
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;-><init>(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/Rotation;)V

    .line 2182
    .local v0, "handle":Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2183
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 2185
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lockRotation() - Rotation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2187
    .local v1, "prevRotation":Lcom/oneplus/base/Rotation;
    if-eq v1, p1, :cond_1

    .line 2189
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 2190
    invoke-direct {p0, v1, p1}, Lcom/meizu/media/camera/CameraActivity;->notifyCameraThreadRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 2191
    invoke-direct {p0, v1, p1}, Lcom/meizu/media/camera/CameraActivity;->notifyUIRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 2192
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2193
    iget-boolean v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2195
    iput-boolean v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    .line 2196
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2200
    .end local v0    # "handle":Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;
    .end local v1    # "prevRotation":Lcom/oneplus/base/Rotation;
    :cond_1
    :goto_0
    return-object v0

    .line 2174
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;

    iget-object v2, v2, Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;->rotation:Lcom/oneplus/base/Rotation;

    if-eq v2, p1, :cond_0

    .line 2176
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lockRotation() - Rotation is already locked in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2257
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;

    .line 2258
    .local v0, "handle":Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;
    if-eqz v0, :cond_0

    .line 2260
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2261
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;->callback:Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;

    if-eqz v1, :cond_0

    .line 2262
    iget-object v1, v0, Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;->callback:Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;

    invoke-interface {v1, v0, p2, p3}, Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;->onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V

    .line 2264
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2265
    return-void
.end method

.method protected onAvailableCamerasChanged(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2275
    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 2276
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_3

    move v4, v6

    .line 2277
    .local v4, "selectCamera":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2279
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2281
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAvailableCamerasChanged() - Camera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not contained in new list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    const/4 v4, 0x1

    .line 2287
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2289
    :cond_1
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v6, "onAvailableCamerasChanged() - Empty camera list"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    new-instance v5, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v7}, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;-><init>(Lcom/meizu/media/camera/Camera;I)V

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraActivity;->onCameraOpenFailedError(Lcom/meizu/media/camera/CameraOpenFailedEventArgs;)V

    .line 2363
    :cond_2
    :goto_1
    return-void

    .end local v4    # "selectCamera":Z
    :cond_3
    move v4, v7

    .line 2276
    goto :goto_0

    .line 2295
    .restart local v4    # "selectCamera":Z
    :cond_4
    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, p1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2298
    if-eqz v4, :cond_2

    .line 2302
    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Settings;

    const-string v8, "CameraLensFacing"

    const-class v9, Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-virtual {v5, v8, v9}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/Camera$LensFacing;

    .line 2303
    .local v2, "lensFacing":Lcom/meizu/media/camera/Camera$LensFacing;
    invoke-static {p1, v2, v7}, Lcom/meizu/media/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/meizu/media/camera/Camera$LensFacing;Z)Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 2304
    if-nez v0, :cond_5

    .line 2306
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAvailableCamerasChanged() - No camera with lens facing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", select another camera"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    sget-object v5, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v2, v5, :cond_a

    sget-object v2, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    .line 2308
    :goto_2
    invoke-static {p1, v2, v7}, Lcom/meizu/media/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/meizu/media/camera/Camera$LensFacing;Z)Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 2310
    :cond_5
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAvailableCamerasChanged() - Default camera : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2315
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;

    iget-object v2, v5, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

    .line 2316
    invoke-static {p1, v2, v7}, Lcom/meizu/media/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/meizu/media/camera/Camera$LensFacing;Z)Lcom/meizu/media/camera/Camera;

    move-result-object v3

    .line 2317
    .local v3, "lockedCamera":Lcom/meizu/media/camera/Camera;
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAvailableCamerasChanged() - Locked camera : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    if-eqz v3, :cond_6

    .line 2320
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/CameraActivity$CameraContext;

    iput-object v0, v5, Lcom/meizu/media/camera/CameraActivity$CameraContext;->camera:Lcom/meizu/media/camera/Camera;

    .line 2321
    move-object v0, v3

    .line 2326
    .end local v3    # "lockedCamera":Lcom/meizu/media/camera/Camera;
    :cond_6
    if-nez v0, :cond_7

    .line 2327
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v8, "onAvailableCamerasChanged() - No camera to use"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    :cond_7
    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v0}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2332
    sget-object v8, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v5}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v5

    aget v5, v8, v5

    packed-switch v5, :pswitch_data_0

    .line 2340
    :pswitch_0
    const/4 v1, 0x0

    .line 2345
    .local v1, "isRunning":Z
    :goto_3
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getCameraThread()Lcom/meizu/media/camera/CameraThread;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/meizu/media/camera/CameraThread;->openCamera(Lcom/meizu/media/camera/Camera;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2346
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAvailableCamerasChanged() - Fail to open camera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    :cond_8
    iget-boolean v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsHighComponentsCreated:Z

    if-nez v5, :cond_9

    .line 2351
    iput-boolean v6, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsHighComponentsCreated:Z

    .line 2352
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v8, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-virtual {v5, v8, v6}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 2354
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->bindToInitialComponents()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2355
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    .line 2358
    :cond_9
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    sget-object v6, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-ne v5, v6, :cond_2

    if-eqz v0, :cond_2

    .line 2360
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v6, "onAvailableCamerasChanged() - Start preview"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->startCameraPreview()Z

    goto/16 :goto_1

    .line 2307
    .end local v1    # "isRunning":Z
    :cond_a
    sget-object v2, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    goto/16 :goto_2

    .line 2337
    :pswitch_1
    const/4 v1, 0x1

    .line 2338
    .restart local v1    # "isRunning":Z
    goto :goto_3

    .line 2332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onBatteryLevelChanged(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 2390
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2391
    return-void
.end method

.method protected onBindToCameraThread()V
    .locals 3

    .prologue
    .line 2372
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    sget-object v2, Lcom/meizu/media/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2373
    .local v0, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera;>;"
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/meizu/media/camera/CameraActivity$16;

    invoke-direct {v2, p0, v0}, Lcom/meizu/media/camera/CameraActivity$16;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2381
    return-void
.end method

.method protected onBindingToCameraThreadEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/EventKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 2400
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventKey<*>;>;"
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2401
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2402
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2403
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2404
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2405
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2406
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2407
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2408
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2409
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2410
    return-void
.end method

.method protected onBindingToCameraThreadProperties(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 2419
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2420
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2421
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2422
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2423
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2424
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2425
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2426
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2427
    return-void
.end method

.method protected onCameraError(Lcom/meizu/media/camera/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

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

    .line 2455
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2456
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    .line 2457
    :cond_0
    return-void
.end method

.method protected onCameraOpenFailedError(Lcom/meizu/media/camera/CameraOpenFailedEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/meizu/media/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 2464
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;->getErrorCode()I

    move-result v0

    .line 2465
    .local v0, "errorCode":I
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraOpenFailed() - Error code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2469
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    .line 2470
    :cond_0
    return-void
.end method

.method protected onCameraPreviewReceiverDestroyed(Z)V
    .locals 1
    .param p1, "syncPreviewStop"    # Z

    .prologue
    .line 2516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    .line 2519
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->stopCameraPreview(Z)V

    .line 2520
    return-void
.end method

.method protected onCameraPreviewReceiverReady(Ljava/lang/Object;)V
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 2530
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    .line 2531
    .local v0, "previewState":Lcom/meizu/media/camera/OperationState;
    iget-boolean v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    if-eqz v1, :cond_0

    .line 2533
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCameraPreviewReceiverReady() - Stop preview first"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->onCameraPreviewReceiverDestroyed(Z)V

    .line 2538
    :cond_0
    iput-boolean v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsCameraPreviewReceiverReady:Z

    .line 2541
    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 2543
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCameraPreviewReceiverReady() - Continue starting preview"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->startCameraPreview(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2546
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCameraPreviewReceiverReady() - Fail to start preview"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    .line 2548
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    sget-object v3, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v1, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2551
    :cond_1
    return-void
.end method

.method protected onCameraPreviewStartFailed()V
    .locals 2

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCameraPreviewStartFailed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    sget-object v0, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->changeCameraPreviewState(Lcom/meizu/media/camera/OperationState;)Lcom/meizu/media/camera/OperationState;

    .line 2616
    return-void
.end method

.method protected onCameraPreviewStarted()V
    .locals 2

    .prologue
    .line 2560
    sget-object v0, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->changeCameraPreviewState(Lcom/meizu/media/camera/OperationState;)Lcom/meizu/media/camera/OperationState;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-eq v0, v1, :cond_1

    .line 2562
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCameraPreviewStarted() - Process interrupted"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    :cond_0
    :goto_0
    return-void

    .line 2566
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCameraPreviewStarted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraThread;->checkRemainingMediaCount()V

    .line 2572
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2573
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 2576
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v0, v1, :cond_3

    .line 2577
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetVideoCaptureState()V

    .line 2578
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    .line 2579
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetPhotoCaptureState()V

    goto :goto_0
.end method

.method protected onCameraThreadEventReceived(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 1
    .param p2, "e"    # Lcom/oneplus/base/EventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;",
            "Lcom/oneplus/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2698
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_2

    move-object v0, p2

    .line 2699
    check-cast v0, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onBurstPhotoReceived(Lcom/meizu/media/camera/CaptureEventArgs;)V

    .line 2718
    :cond_0
    :goto_0
    instance-of v0, p2, Lcom/oneplus/base/RecyclableObject;

    if-eqz v0, :cond_1

    .line 2719
    check-cast p2, Lcom/oneplus/base/RecyclableObject;

    .end local p2    # "e":Lcom/oneplus/base/EventArgs;
    invoke-interface {p2}, Lcom/oneplus/base/RecyclableObject;->recycle()V

    .line 2720
    :cond_1
    return-void

    .line 2700
    .restart local p2    # "e":Lcom/oneplus/base/EventArgs;
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_CAMERA_ERROR:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_3

    move-object v0, p2

    .line 2701
    check-cast v0, Lcom/meizu/media/camera/CameraEventArgs;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraEventArgs;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onCameraError(Lcom/meizu/media/camera/Camera;)V

    goto :goto_0

    .line 2702
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_CAMERA_OPEN_FAILED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_4

    move-object v0, p2

    .line 2703
    check-cast v0, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onCameraOpenFailedError(Lcom/meizu/media/camera/CameraOpenFailedEventArgs;)V

    goto :goto_0

    .line 2704
    :cond_4
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_DEFAULT_PHOTO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_5

    move-object v0, p2

    .line 2705
    check-cast v0, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onDefaultPhotoCaptureCompleted(Lcom/meizu/media/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 2706
    :cond_5
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_DEFAULT_VIDEO_CAPTURE_COMPLETED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_6

    move-object v0, p2

    .line 2707
    check-cast v0, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onDefaultVideoCaptureCompleted(Lcom/meizu/media/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 2708
    :cond_6
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_7

    move-object v0, p2

    .line 2709
    check-cast v0, Lcom/meizu/media/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onMediaFileSaved(Lcom/meizu/media/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 2710
    :cond_7
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_8

    move-object v0, p2

    .line 2711
    check-cast v0, Lcom/meizu/media/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onMediaSaveCancelled(Lcom/meizu/media/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 2712
    :cond_8
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_9

    move-object v0, p2

    .line 2713
    check-cast v0, Lcom/meizu/media/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onMediaSaveFailed(Lcom/meizu/media/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 2714
    :cond_9
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_a

    move-object v0, p2

    .line 2715
    check-cast v0, Lcom/meizu/media/camera/media/MediaEventArgs;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onMediaSaved(Lcom/meizu/media/camera/media/MediaEventArgs;)V

    goto :goto_0

    .line 2716
    :cond_a
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    .line 2717
    check-cast v0, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onShutter(Lcom/meizu/media/camera/CaptureEventArgs;)V

    goto :goto_0
.end method

.method protected onCameraThreadPropertyChanged(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2731
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    .local p2, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 2732
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onAvailableCamerasChanged(Ljava/util/List;)V

    .line 2757
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->recycle()V

    .line 2758
    return-void

    .line 2733
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 2735
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2736
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->onCameraPreviewReceived()V

    goto :goto_0

    .line 2739
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2740
    const-string v0, "CameraPreviewFrameWaiting"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewFrameCUDHandle:Lcom/oneplus/base/Handle;

    .line 2741
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2742
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2745
    :cond_4
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 2746
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2747
    :cond_5
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 2748
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2749
    :cond_6
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_7

    .line 2750
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->onCameraThreadCaptureStateChanged(Lcom/meizu/media/camera/PhotoCaptureState;Lcom/meizu/media/camera/PhotoCaptureState;)V

    goto :goto_0

    .line 2751
    :cond_7
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    .line 2752
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_REMAINING_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2753
    :cond_8
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    .line 2754
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_REMAINING_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2755
    :cond_9
    sget-object v0, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2756
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->onCameraThreadCaptureStateChanged(Lcom/meizu/media/camera/VideoCaptureState;Lcom/meizu/media/camera/VideoCaptureState;)V

    goto/16 :goto_0
.end method

.method protected onCameraThreadStarted()V
    .locals 6

    .prologue
    .line 2767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2768
    .local v0, "eventKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventKey<*>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2769
    .local v3, "propKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/media/MediaType;

    .line 2770
    .local v2, "initialMediaType":Lcom/meizu/media/camera/media/MediaType;
    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->onBindingToCameraThreadEvents(Ljava/util/List;)V

    .line 2771
    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->onBindingToCameraThreadProperties(Ljava/util/List;)V

    .line 2772
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v4}, Lcom/meizu/media/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2773
    .local v1, "handler":Landroid/os/Handler;
    if-nez v1, :cond_1

    .line 2775
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "onCameraThreadStarted() - No camera thread handler"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    .line 2792
    :cond_0
    :goto_0
    return-void

    .line 2779
    :cond_1
    new-instance v4, Lcom/meizu/media/camera/CameraActivity$17;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/meizu/media/camera/CameraActivity$17;-><init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2788
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "onCameraThreadStarted() - Fail to start binding to camera thread"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    goto :goto_0
.end method

.method protected onCaptureCompleted(Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V
    .locals 0
    .param p1, "handle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/meizu/media/camera/CaptureCompleteReason;

    .prologue
    .line 2934
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 2942
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    .line 2943
    .local v0, "activityState":Lcom/oneplus/base/BaseActivity$State;
    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v3, :cond_1

    .line 2944
    :cond_0
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->removeScreenShot()V

    .line 2948
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2951
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateScreenSize()V

    .line 2955
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, -0x5a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2956
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_4

    .line 2958
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    .line 2959
    .local v1, "windowRotation":Lcom/oneplus/base/Rotation;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2960
    invoke-direct {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->updateScreenShotRotation(Lcom/oneplus/base/Rotation;)V

    .line 2974
    :goto_0
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "onConfigurationChanged() - Orientation changed to "

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2975
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_6

    :goto_1
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2977
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "onConfigurationChanged() - Try starting preview"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->startCameraPreview()Z

    .line 2980
    :cond_2
    return-void

    .line 2962
    :cond_3
    sget-object v3, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-direct {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->updateScreenShotRotation(Lcom/oneplus/base/Rotation;)V

    goto :goto_0

    .line 2966
    .end local v1    # "windowRotation":Lcom/oneplus/base/Rotation;
    :cond_4
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    .line 2967
    .restart local v1    # "windowRotation":Lcom/oneplus/base/Rotation;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2968
    invoke-direct {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->updateScreenShotRotation(Lcom/oneplus/base/Rotation;)V

    goto :goto_0

    .line 2970
    :cond_5
    sget-object v3, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-direct {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->updateScreenShotRotation(Lcom/oneplus/base/Rotation;)V

    goto :goto_0

    .line 2975
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3088
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->startMonitorCurrentThread()V

    .line 3091
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3094
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->checkStartMode()V

    .line 3097
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->setupWindowFlags()V

    .line 3100
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3101
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3102
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3103
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3104
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3105
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3106
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3107
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3108
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3109
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3110
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3111
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3112
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3113
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v5}, Lcom/meizu/media/camera/CameraActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 3116
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/meizu/media/camera/CameraActivity$19;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/CameraActivity$19;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3124
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/meizu/media/camera/CameraActivity$20;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/CameraActivity$20;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3134
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getRequestedOrientation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->onRequestedOrientationChanged(I)V

    .line 3137
    new-instance v1, Lcom/oneplus/base/Settings;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v6}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3138
    .local v1, "settings":Lcom/oneplus/base/Settings;
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    new-instance v3, Lcom/meizu/media/camera/CameraActivity$SettingsHandle;

    invoke-direct {v3, p0, v1}, Lcom/meizu/media/camera/CameraActivity$SettingsHandle;-><init>(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/Settings;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3139
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3142
    new-instance v2, Lcom/meizu/media/camera/CameraThread;

    new-instance v3, Lcom/meizu/media/camera/CameraActivity$21;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/CameraActivity$21;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/meizu/media/camera/CameraThread;-><init>(Landroid/content/Context;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    .line 3153
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateScreenSize()V

    .line 3156
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateBurstEnablingState()V

    .line 3159
    const-string v2, "CameraPreviewStartStop"

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewStartCUDHandle:Lcom/oneplus/base/Handle;

    .line 3162
    new-instance v2, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v2}, Lcom/oneplus/base/component/ComponentManager;-><init>()V

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    .line 3163
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 3164
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v3, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/meizu/media/camera/CameraActivity$22;

    invoke-direct {v4, p0}, Lcom/meizu/media/camera/CameraActivity$22;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3172
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v3, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/meizu/media/camera/CameraActivity$23;

    invoke-direct {v4, p0}, Lcom/meizu/media/camera/CameraActivity$23;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3180
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3182
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/oneplus/base/component/ComponentBuilder;

    .line 3183
    .local v0, "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3184
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_InitialComponentBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3185
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v0, v3}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 3189
    .end local v0    # "builders":[Lcom/oneplus/base/component/ComponentBuilder;
    :cond_0
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v3, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    .line 3191
    invoke-static {}, Lcom/meizu/media/camera/CameraApplication;->current()Lcom/meizu/media/camera/CameraApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/StorageManager;

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 3192
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v2, :cond_1

    .line 3194
    new-instance v2, Lcom/meizu/media/camera/CameraActivity$24;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraActivity$24;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    .line 3225
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v3, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/io/StorageManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3227
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 3268
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3271
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->unregisterReceivers()V

    .line 3274
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    if-eqz v1, :cond_0

    .line 3276
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraThread;->release()V

    .line 3279
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3288
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentManager;->release()V

    .line 3291
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 3293
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v1, :cond_1

    .line 3294
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v2, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/io/StorageManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3297
    :cond_1
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onDestroy()V

    .line 3300
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->stopMonitorCurrentThread()V

    .line 3301
    return-void

    .line 3281
    :catch_0
    move-exception v0

    .line 3283
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy() - Fail to join camera thread"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDeviceOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 3310
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 3312
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDeviceOrientationChanged() - Unknown orientation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    :goto_0
    return-void

    .line 3315
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_DEVICE_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 3325
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyDownEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3328
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetIdleState()V

    .line 3331
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3333
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;

    iget-object v0, v3, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;->handler:Lcom/meizu/media/camera/KeyEventHandler;

    .line 3334
    .local v0, "handler":Lcom/meizu/media/camera/KeyEventHandler;
    invoke-interface {v0, p1, p2}, Lcom/meizu/media/camera/KeyEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Lcom/meizu/media/camera/KeyEventHandler$KeyResult;

    move-result-object v2

    .line 3335
    .local v2, "result":Lcom/meizu/media/camera/KeyEventHandler$KeyResult;
    sget-object v3, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$KeyEventHandler$KeyResult:[I

    invoke-virtual {v2}, Lcom/meizu/media/camera/KeyEventHandler$KeyResult;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 3331
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3338
    :pswitch_0
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "onKeyDown() - Key "

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, " is handled by "

    invoke-static {v3, v4, v5, v6, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3339
    const/4 v3, 0x1

    .line 3354
    .end local v0    # "handler":Lcom/meizu/media/camera/KeyEventHandler;
    .end local v2    # "result":Lcom/meizu/media/camera/KeyEventHandler$KeyResult;
    :goto_1
    return v3

    .line 3341
    .restart local v0    # "handler":Lcom/meizu/media/camera/KeyEventHandler;
    .restart local v2    # "result":Lcom/meizu/media/camera/KeyEventHandler$KeyResult;
    :pswitch_1
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "onKeyDown() - Pass to system directly: "

    invoke-static {v3, v5, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v3, v4

    .line 3342
    goto :goto_1

    .line 3347
    .end local v0    # "handler":Lcom/meizu/media/camera/KeyEventHandler;
    .end local v2    # "result":Lcom/meizu/media/camera/KeyEventHandler$KeyResult;
    :cond_0
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3349
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "onKeyDown() - Capture UI is disabled"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 3350
    goto :goto_1

    .line 3354
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1

    .line 3335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3364
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyDownEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3366
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "onKeyUp() - Not a pair of key down and key up event"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 3416
    :goto_0
    return v3

    .line 3371
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 3373
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;

    iget-object v0, v3, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;->handler:Lcom/meizu/media/camera/KeyEventHandler;

    .line 3374
    .local v0, "handler":Lcom/meizu/media/camera/KeyEventHandler;
    invoke-interface {v0, p1, p2}, Lcom/meizu/media/camera/KeyEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Lcom/meizu/media/camera/KeyEventHandler$KeyResult;

    move-result-object v2

    .line 3375
    .local v2, "result":Lcom/meizu/media/camera/KeyEventHandler$KeyResult;
    sget-object v3, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$KeyEventHandler$KeyResult:[I

    invoke-virtual {v2}, Lcom/meizu/media/camera/KeyEventHandler$KeyResult;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 3371
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3378
    :pswitch_0
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "onKeyUp() - Key "

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, " is handled by "

    invoke-static {v3, v4, v6, v7, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v3, v5

    .line 3379
    goto :goto_0

    .line 3381
    :pswitch_1
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "onKeyUp() - Pass to system directly: "

    invoke-static {v3, v5, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v3, v4

    .line 3382
    goto :goto_0

    .line 3387
    .end local v0    # "handler":Lcom/meizu/media/camera/KeyEventHandler;
    .end local v2    # "result":Lcom/meizu/media/camera/KeyEventHandler$KeyResult;
    :cond_1
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3389
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "onKeyUp() - Capture UI is disabled"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 3390
    goto :goto_0

    .line 3394
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    .line 3397
    sget-object v6, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v3}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_1

    .line 3410
    :pswitch_2
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "onKeyUp() - Back pressed, leave camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3411
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    move v3, v5

    .line 3412
    goto :goto_0

    .line 3401
    :pswitch_3
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3403
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v6, "onKeyUp() - Back pressed, stop video capture"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v3, v4, v4}, Lcom/meizu/media/camera/CameraActivity;->stopVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    :cond_3
    move v3, v5

    .line 3406
    goto/16 :goto_0

    .line 3416
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 3375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3397
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3451
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 3454
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3457
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->checkStartMode(Landroid/content/Intent;)V

    .line 3460
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->setupWindowFlags()V

    .line 3461
    return-void
.end method

.method protected onPause()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3469
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3471
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v8, "onPause() - Stop photo capture"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3474
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v7}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->close()V

    .line 3475
    iput-object v12, p0, Lcom/meizu/media/camera/CameraActivity;->m_PendingPhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    .line 3477
    :cond_0
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v7}, Lcom/meizu/media/camera/CameraActivity;->stopPhotoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    .line 3481
    :cond_1
    invoke-direct {p0, v11}, Lcom/meizu/media/camera/CameraActivity;->stopCameraPreview(Z)V

    .line 3484
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onPause()V

    .line 3487
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->hideReviewScreen()V

    .line 3490
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 3491
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetIdleState()V

    .line 3494
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    if-eqz v7, :cond_2

    .line 3495
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v7}, Lcom/meizu/media/camera/CameraThread;->closeCameras()V

    .line 3498
    :cond_2
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->stopAccelerometer()V

    .line 3501
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->stopOrientationListener()V

    .line 3504
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3506
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    new-array v4, v7, [Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;

    .line 3507
    .local v4, "handles":[Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3508
    array-length v7, v4

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 3510
    aget-object v3, v4, v5

    .line 3511
    .local v3, "handle":Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;
    iget v7, v3, Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 3513
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPause() - Remove capture UI disable handle : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3508
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3517
    .end local v3    # "handle":Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;
    :cond_4
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPause() - Capture UI disable handle count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3518
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3519
    sget-object v7, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3528
    .end local v4    # "handles":[Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;
    .end local v5    # "i":I
    :cond_5
    iget-boolean v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    if-eqz v7, :cond_6

    .line 3530
    iput-boolean v10, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    .line 3531
    sget-object v7, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3535
    :cond_6
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_7

    .line 3537
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3538
    iput-object v12, p0, Lcom/meizu/media/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 3542
    :cond_7
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3544
    sget-object v7, Lcom/meizu/media/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3545
    .local v0, "contentView":Landroid/view/View;
    instance-of v7, v0, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_d

    .line 3547
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-nez v7, :cond_8

    .line 3549
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    .line 3550
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3551
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3553
    :cond_8
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v8, "onPause() - Take screen-shot [start]"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v6

    .line 3557
    .local v6, "isDrawingCacheEnabled":Z
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 3558
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3559
    .local v1, "drawingCache":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_c

    .line 3560
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    .line 3563
    :goto_1
    if-nez v6, :cond_9

    .line 3564
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3571
    .end local v1    # "drawingCache":Landroid/graphics/Bitmap;
    .end local v6    # "isDrawingCacheEnabled":Z
    :cond_9
    :goto_2
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v8, "onPause() - Take screen-shot [end]"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_a

    .line 3574
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3575
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "contentView":Landroid/view/View;
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3576
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-direct {p0, v7}, Lcom/meizu/media/camera/CameraActivity;->updateScreenShotRotation(Lcom/oneplus/base/Rotation;)V

    .line 3585
    :cond_a
    :goto_3
    return-void

    .line 3522
    .restart local v4    # "handles":[Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;
    .restart local v5    # "i":I
    :cond_b
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_4
    if-ltz v5, :cond_5

    .line 3523
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPause() - Active capture UI disable handle : ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/media/camera/CameraActivity;->m_CaptureUIDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v9, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 3562
    .end local v4    # "handles":[Lcom/meizu/media/camera/CameraActivity$UIDisableHandle;
    .end local v5    # "i":I
    .restart local v0    # "contentView":Landroid/view/View;
    .restart local v1    # "drawingCache":Landroid/graphics/Bitmap;
    .restart local v6    # "isDrawingCacheEnabled":Z
    :cond_c
    :try_start_1
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v8, "onPause() - No drawing cache"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3566
    .end local v1    # "drawingCache":Landroid/graphics/Bitmap;
    .end local v6    # "isDrawingCacheEnabled":Z
    :catch_0
    move-exception v2

    .line 3568
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v8, "onPause() - Fail to take screen-shot"

    invoke-static {v7, v8, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3569
    iput-object v12, p0, Lcom/meizu/media/camera/CameraActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 3580
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_d
    iget-object v7, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v8, "onPause() - Cannot show screen-shot because content view is not RelativeLayout"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onPhotoCaptureFailed(Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/meizu/media/camera/CaptureCompleteReason;

    .prologue
    .line 3592
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 3594
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhotoCaptureFailed() - Unknown handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3616
    :goto_0
    return-void

    .line 3598
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhotoCaptureFailed() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3601
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3613
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhotoCaptureFailed() - Photo capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3604
    :pswitch_0
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    move-object v0, p1

    .line 3605
    check-cast v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->stopPhotoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    .line 3606
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->completeCapture(Lcom/meizu/media/camera/CaptureHandle;)V

    goto :goto_0

    .line 3609
    :pswitch_1
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3610
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->completeCapture(Lcom/meizu/media/camera/CaptureHandle;)V

    goto :goto_0

    .line 3601
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 3694
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateScreenSize()V

    .line 3697
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 3698
    .local v1, "pm":Landroid/os/PowerManager;
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3701
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onResume()V

    .line 3703
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    if-ne v4, v2, :cond_0

    .line 3704
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->removeScreenShot()V

    .line 3708
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 3709
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->resetIdleState()V

    .line 3712
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateSystemUiVisibility()V

    .line 3713
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, -0x50

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3716
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->registerReceivers()V

    .line 3717
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 3719
    new-instance v2, Lcom/meizu/media/camera/CameraActivity$25;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/CameraActivity$25;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    iput-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 3730
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3731
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_BatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/meizu/media/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3735
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->canStartCameraPreview()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v2, v4, :cond_2

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v2, v4, :cond_2

    .line 3739
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->startCameraPreview()Z

    .line 3743
    :cond_2
    iget-boolean v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3745
    iput-boolean v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    .line 3746
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3748
    :cond_3
    return-void

    .line 3703
    :cond_4
    const/4 v2, 0x2

    goto :goto_0
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 5
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v4, 0x0

    const/16 v2, -0x3c

    const/4 v3, 0x1

    .line 3761
    :try_start_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_RotationLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 3777
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3779
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3780
    iput-boolean v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    .line 3781
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3784
    :cond_0
    :goto_0
    return-void

    .line 3765
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/CameraActivity;->notifyCameraThreadRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 3769
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->isSystemOrientationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3770
    sget-object p2, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    .line 3773
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/CameraActivity;->notifyUIRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3777
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3779
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3780
    iput-boolean v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    .line 3781
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3777
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3779
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3780
    iput-boolean v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_IsRotationReady:Z

    .line 3781
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_ROTATION_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    throw v1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 3808
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onStart()V

    .line 3811
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3812
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->removeScreenShot()V

    .line 3815
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    if-eqz v0, :cond_1

    .line 3816
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/OrientationManager;->setCallback(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 3817
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 3825
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 3828
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onStop()V

    .line 3829
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3846
    invoke-static {p1}, Lcom/meizu/media/camera/ui/MotionEventArgs;->obtain(Landroid/view/MotionEvent;)Lcom/meizu/media/camera/ui/MotionEventArgs;

    move-result-object v0

    .line 3847
    .local v0, "e":Lcom/meizu/media/camera/ui/MotionEventArgs;
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->EVENT_TOUCH:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3848
    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/MotionEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3850
    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/MotionEventArgs;->recycle()V

    .line 3851
    const/4 v1, 0x1

    .line 3856
    :goto_0
    return v1

    .line 3853
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/MotionEventArgs;->recycle()V

    .line 3856
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onVideoCaptureFailed(Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/meizu/media/camera/CaptureCompleteReason;

    .prologue
    .line 3864
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    if-eq v0, p1, :cond_0

    .line 3866
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoCaptureFailed() - Unknown handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3891
    :goto_0
    return-void

    .line 3870
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoCaptureFailed() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3888
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoCaptureFailed() - Video capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3877
    :pswitch_1
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    move-object v0, p1

    .line 3878
    check-cast v0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->stopVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 3879
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->completeCapture(Lcom/meizu/media/camera/CaptureHandle;)V

    .line 3880
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 3883
    :pswitch_2
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;)V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3884
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->completeCapture(Lcom/meizu/media/camera/CaptureHandle;)V

    .line 3885
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_VideoCaptureCUDHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 3873
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pauseAudioPlaybackForVideoRecording()V
    .locals 4

    .prologue
    .line 5733
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 5734
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 5735
    return-void
.end method

.method public removeComponent(Lcom/oneplus/base/component/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 3998
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/component/ComponentManager;->removeComponent(Lcom/oneplus/base/component/Component;)V

    .line 3999
    return-void
.end method

.method public requestPreCaptureFocusLock()Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 4036
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 4037
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$27;

    const-string v1, "PreCaptureFocusLockRequest"

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/CameraActivity$27;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V

    .line 4045
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_PreCaptureFocusLockReqHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4046
    return-object v0
.end method

.method public resumeAudioPlayback()V
    .locals 2

    .prologue
    .line 5727
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 5728
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 5729
    return-void
.end method

.method protected selectCameraPreviewSize()V
    .locals 7

    .prologue
    .line 4211
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getResolutionManager()Lcom/meizu/media/camera/media/ResolutionManager;

    move-result-object v2

    .line 4212
    .local v2, "resolutionManager":Lcom/meizu/media/camera/media/ResolutionManager;
    if-nez v2, :cond_1

    .line 4214
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "selectCameraPreviewSize() - No ResolutionManager."

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4263
    :cond_0
    :goto_0
    return-void

    .line 4219
    :cond_1
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 4221
    .local v0, "prevPreviewSize":Landroid/util/Size;
    sget-object v5, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v4}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 4230
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectCameraPreviewSize() - Unknown media type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4224
    :pswitch_0
    sget-object v4, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_PHOTO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 4236
    .local v1, "previewSize":Landroid/util/Size;
    :goto_1
    sget-object v4, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$OperationState:[I

    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraPreviewState:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v5}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 4250
    const/4 v3, 0x0

    .line 4255
    .local v3, "restartPreview":Z
    :goto_2
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4258
    if-eqz v3, :cond_0

    .line 4260
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "selectCameraPreviewSize() - Restart preview"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4261
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->startCameraPreview()Z

    goto :goto_0

    .line 4227
    .end local v1    # "previewSize":Landroid/util/Size;
    .end local v3    # "restartPreview":Z
    :pswitch_1
    sget-object v4, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 4228
    .restart local v1    # "previewSize":Landroid/util/Size;
    goto :goto_1

    .line 4240
    :pswitch_2
    invoke-virtual {v1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4242
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "selectCameraPreviewSize() - Stop preview to change preview size"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4243
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/meizu/media/camera/CameraActivity;->stopCameraPreview(Z)V

    .line 4244
    const/4 v3, 0x1

    .restart local v3    # "restartPreview":Z
    goto :goto_2

    .line 4247
    .end local v3    # "restartPreview":Z
    :cond_2
    const/4 v3, 0x0

    .line 4248
    .restart local v3    # "restartPreview":Z
    goto :goto_2

    .line 4221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4236
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
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
    .line 4270
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 4271
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setSelfTimerIntervalProp(J)Z

    move-result v0

    .line 4272
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 4280
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "setContentView() - Load content view [start]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4281
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4282
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "setContentView() - Load content view [end]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4283
    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->setContentView(Landroid/view/View;)V

    .line 4284
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4291
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setContentView() - Set content view [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4292
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 4293
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setContentView() - Set content view [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4294
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->onContentViewSet(Landroid/view/View;)V

    .line 4295
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 4302
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setContentView() - Set content view [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4303
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4304
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setContentView() - Set content view [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4305
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->onContentViewSet(Landroid/view/View;)V

    .line 4306
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 2
    .param p1, "debug"    # Z

    .prologue
    .line 4633
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4634
    return-void
.end method

.method public setKeyEventHandler(Lcom/meizu/media/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "handler"    # Lcom/meizu/media/camera/KeyEventHandler;

    .prologue
    .line 4313
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 4316
    const/4 v0, 0x0

    .line 4317
    .local v0, "candHandle":Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;

    .line 4319
    .local v1, "handle":Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;
    iget-object v3, v1, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;->handler:Lcom/meizu/media/camera/KeyEventHandler;

    if-ne v3, p1, :cond_0

    .line 4321
    move-object v0, v1

    .line 4325
    .end local v1    # "handle":Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;
    :cond_1
    if-eqz v0, :cond_2

    .line 4327
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4328
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4335
    :goto_0
    return-object v0

    .line 4332
    :cond_2
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;

    .end local v0    # "candHandle":Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;
    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;-><init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/KeyEventHandler;)V

    .line 4333
    .restart local v0    # "candHandle":Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMediaResult(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "reviewScreenResult"    # I
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4379
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setMediaResult() - Not service mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4404
    :goto_0
    return-void

    .line 4384
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4401
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaResult() - Unknow review screen result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4387
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setMediaResult() - Cancel"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4388
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 4389
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 4392
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setMediaResult() - OK, Inline bitmap: "

    invoke-static {v0, v1, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4393
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 4394
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 4397
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setMediaResult() - Retake"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4398
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->hideReviewScreen()V

    goto :goto_0

    .line 4384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMediaResult(ILcom/meizu/media/camera/MediaInfo;)V
    .locals 3
    .param p1, "reviewScreenResult"    # I
    .param p2, "mediaInfo"    # Lcom/meizu/media/camera/MediaInfo;

    .prologue
    .line 4343
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4345
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setMediaResult() - Not service mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4370
    :goto_0
    return-void

    .line 4350
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4367
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaResult() - Unknow review screen result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4353
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setMediaResult() - Cancel"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4354
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 4355
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 4358
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setMediaResult() - OK, Uri: "

    iget-object v2, p2, Lcom/meizu/media/camera/MediaInfo;->contentURI:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4359
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p2, Lcom/meizu/media/camera/MediaInfo;->contentURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 4360
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 4363
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setMediaResult() - Retake"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4364
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->hideReviewScreen()V

    goto :goto_0

    .line 4350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMediaType(Lcom/meizu/media/camera/media/MediaType;)Z
    .locals 5
    .param p1, "mediaType"    # Lcom/meizu/media/camera/media/MediaType;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4433
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 4434
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 4502
    :goto_0
    return v0

    .line 4436
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMediaType() - Media type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4437
    sget-object v0, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 4468
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMediaType() - Unknown media type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 4469
    goto :goto_0

    .line 4441
    :pswitch_0
    sget-object v3, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1

    .line 4447
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMediaType() - Current video capture state is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 4448
    goto :goto_0

    .line 4455
    :pswitch_1
    sget-object v3, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    sparse-switch v0, :sswitch_data_0

    .line 4461
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMediaType() - Current photo capture state is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 4462
    goto/16 :goto_0

    .line 4473
    :pswitch_2
    :sswitch_0
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4475
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/meizu/media/camera/CameraThread;->setMediaType(Lcom/meizu/media/camera/media/MediaType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4477
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "setMediaType() - Fail to change media type"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 4478
    goto/16 :goto_0

    .line 4482
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "setMediaType() - Change media type before camera thread start"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4483
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4486
    sget-object v0, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_FastShotToShotDisableHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4487
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4492
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->selectCameraPreviewSize()V

    .line 4495
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateSelfTimerUsability()V

    .line 4496
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateSelfTimerInternal()V

    .line 4499
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraActivity;->updateBurstEnablingState()V

    move v0, v1

    .line 4502
    goto/16 :goto_0

    .line 4489
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_FAST_SHOT_TO_SHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 4437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4441
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 4455
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 3
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
    .line 4546
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v1, :cond_0

    .line 4547
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "Cannot change activity rotation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4548
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v1, :cond_3

    .line 4550
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/CameraActivity$CameraContext;

    move-object v0, v1

    .line 4551
    .local v0, "context":Lcom/meizu/media/camera/CameraActivity$CameraContext;
    :goto_0
    if-nez v0, :cond_1

    .line 4553
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$CameraContext;

    .end local v0    # "context":Lcom/meizu/media/camera/CameraActivity$CameraContext;
    invoke-direct {v0}, Lcom/meizu/media/camera/CameraActivity$CameraContext;-><init>()V

    .line 4554
    .restart local v0    # "context":Lcom/meizu/media/camera/CameraActivity$CameraContext;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraContextStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 4556
    :cond_1
    check-cast p2, Lcom/meizu/media/camera/Camera;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    iput-object p2, v0, Lcom/meizu/media/camera/CameraActivity$CameraContext;->camera:Lcom/meizu/media/camera/Camera;

    .line 4557
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, v0, Lcom/meizu/media/camera/CameraActivity$CameraContext;->camera:Lcom/meizu/media/camera/Camera;

    invoke-super {p0, v1, v2}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    .line 4563
    .end local v0    # "context":Lcom/meizu/media/camera/CameraActivity$CameraContext;
    :goto_1
    return v1

    .line 4550
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 4559
    :cond_3
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v1, :cond_4

    .line 4560
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "Cannot change camera preview state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4561
    :cond_4
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v1, :cond_5

    .line 4562
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "Cannot change UI rotation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4563
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method public setRecordingTimeRatio(F)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "ratio"    # F

    .prologue
    const/4 v0, 0x0

    .line 4514
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 4515
    sget-object v2, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4523
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecordingTimeRatio() - Cannot restore recording time ratio when capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4538
    :goto_0
    return-object v0

    .line 4528
    :pswitch_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 4530
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecordingTimeRatio() - Invalid ratio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4535
    :cond_0
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;-><init>(Lcom/meizu/media/camera/CameraActivity;F)V

    .line 4536
    .local v0, "handle":Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_RecordingTimeRatioHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4537
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreRecordingTimeRatio() - Ratio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4515
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setRequestedOrientation(I)V
    .locals 0
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 4571
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->setRequestedOrientation(I)V

    .line 4572
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->onRequestedOrientationChanged(I)V

    .line 4573
    return-void
.end method

.method public final setSettings(Lcom/oneplus/base/Settings;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "settings"    # Lcom/oneplus/base/Settings;

    .prologue
    .line 4611
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 4614
    if-nez p1, :cond_0

    .line 4616
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "setSettings() - No settings."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4617
    const/4 v0, 0x0

    .line 4627
    :goto_0
    return-object v0

    .line 4621
    :cond_0
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$SettingsHandle;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/CameraActivity$SettingsHandle;-><init>(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/Settings;)V

    .line 4622
    .local v0, "handle":Lcom/meizu/media/camera/CameraActivity$SettingsHandle;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_SettingsHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4623
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSettings() - Create handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4626
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, p1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public showReviewScreen()Z
    .locals 2

    .prologue
    .line 4640
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ReviewScreenUI:Lcom/meizu/media/camera/ui/ReviewScreen;

    if-nez v0, :cond_0

    .line 4642
    const-class v0, Lcom/meizu/media/camera/ui/ReviewScreen;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/ReviewScreen;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ReviewScreenUI:Lcom/meizu/media/camera/ui/ReviewScreen;

    .line 4643
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ReviewScreenUI:Lcom/meizu/media/camera/ui/ReviewScreen;

    if-nez v0, :cond_0

    .line 4645
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "showReviewScreen() - Cannot find ReviewScreen component"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4646
    const/4 v0, 0x0

    .line 4653
    :goto_0
    return v0

    .line 4651
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ReviewScreenUI:Lcom/meizu/media/camera/ui/ReviewScreen;

    invoke-interface {v0}, Lcom/meizu/media/camera/ui/ReviewScreen;->showReviewScreen()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    .line 4653
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showToast(I)V
    .locals 1
    .param p1, "messageResId"    # I

    .prologue
    .line 4663
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 4664
    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 4673
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ToastManager:Lcom/meizu/media/camera/ui/ToastManager;

    if-nez v0, :cond_0

    .line 4674
    const-class v0, Lcom/meizu/media/camera/ui/ToastManager;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/ToastManager;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ToastManager:Lcom/meizu/media/camera/ui/ToastManager;

    .line 4675
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ToastManager:Lcom/meizu/media/camera/ui/ToastManager;

    if-eqz v0, :cond_1

    .line 4676
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity;->m_ToastManager:Lcom/meizu/media/camera/ui/ToastManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/meizu/media/camera/ui/ToastManager;->showToast(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    .line 4679
    :goto_0
    return-void

    .line 4678
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;

    .prologue
    const/4 v3, 0x0

    .line 4718
    if-nez p1, :cond_0

    .line 4720
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "startActivityForResult() - No intent"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 4754
    :goto_0
    return-object v1

    .line 4725
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 4728
    const/16 v2, 0x40

    .line 4729
    .local v2, "requestCode":I
    :goto_1
    if-lez v2, :cond_1

    .line 4731
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 4734
    :cond_1
    if-gtz v2, :cond_3

    .line 4736
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "startActivityForResult() - No available request code"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 4737
    goto :goto_0

    .line 4729
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4741
    :cond_3
    new-instance v1, Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;

    invoke-direct {v1, p0, p2}, Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;-><init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;)V

    .line 4742
    .local v1, "handle":Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4747
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/meizu/media/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4750
    :catch_0
    move-exception v0

    .line 4752
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "startActivityForResult() - Fail to start activity"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4753
    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    move-object v1, v3

    .line 4754
    goto :goto_0
.end method

.method public final startCameraPreview()Z
    .locals 1

    .prologue
    .line 4765
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->startCameraPreview(Z)Z

    move-result v0

    return v0
.end method

.method public final stopCameraPreview()V
    .locals 3

    .prologue
    .line 5010
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 5011
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_0

    .line 5018
    :goto_0
    return-void

    .line 5013
    :cond_0
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/Camera$HardwareLevel;

    .line 5014
    .local v1, "hardwareLevel":Lcom/meizu/media/camera/Camera$HardwareLevel;
    sget-object v2, Lcom/meizu/media/camera/Camera$HardwareLevel;->LEGACY:Lcom/meizu/media/camera/Camera$HardwareLevel;

    if-ne v1, v2, :cond_1

    .line 5015
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->stopCameraPreview(Z)V

    goto :goto_0

    .line 5017
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->stopCameraPreview(Z)V

    goto :goto_0
.end method

.method public switchCamera()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 5241
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 5244
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 5245
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_0

    .line 5247
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "switchCamera() - No primary camera"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 5269
    :goto_0
    return v3

    .line 5252
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

    sget-object v5, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v5}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 5254
    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchCamera() - Camera is locked to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->m_CameraLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;

    iget-object v3, v3, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 5255
    goto :goto_0

    .line 5259
    :cond_1
    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v3, v5, :cond_2

    sget-object v1, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    .line 5260
    .local v1, "lensFacing":Lcom/meizu/media/camera/Camera$LensFacing;
    :goto_1
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3, v1, v4}, Lcom/meizu/media/camera/CameraUtils;->findCamera(Ljava/util/List;Lcom/meizu/media/camera/Camera$LensFacing;Z)Lcom/meizu/media/camera/Camera;

    move-result-object v2

    .line 5261
    .local v2, "newCamera":Lcom/meizu/media/camera/Camera;
    if-nez v2, :cond_3

    .line 5263
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "switchCamera() - No camera to switch"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 5264
    goto :goto_0

    .line 5259
    .end local v1    # "lensFacing":Lcom/meizu/media/camera/Camera$LensFacing;
    .end local v2    # "newCamera":Lcom/meizu/media/camera/Camera;
    :cond_2
    sget-object v1, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    goto :goto_1

    .line 5266
    .restart local v1    # "lensFacing":Lcom/meizu/media/camera/Camera$LensFacing;
    .restart local v2    # "newCamera":Lcom/meizu/media/camera/Camera;
    :cond_3
    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchCamera() - Select "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5269
    invoke-direct {p0, v2}, Lcom/meizu/media/camera/CameraActivity;->switchCamera(Lcom/meizu/media/camera/Camera;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public switchCamera(Lcom/meizu/media/camera/Camera$LensFacing;)Z
    .locals 1
    .param p1, "lensFacing"    # Lcom/meizu/media/camera/Camera$LensFacing;

    .prologue
    .line 5280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/media/camera/CameraActivity;->switchCamera(Lcom/meizu/media/camera/Camera$LensFacing;I)Z

    move-result v0

    return v0
.end method

.method public switchCamera(Lcom/meizu/media/camera/Camera$LensFacing;I)Z
    .locals 1
    .param p1, "lensFacing"    # Lcom/meizu/media/camera/Camera$LensFacing;
    .param p2, "flags"    # I

    .prologue
    .line 5292
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    invoke-direct {p0, v0, p1, p2}, Lcom/meizu/media/camera/CameraActivity;->switchCamera(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera$LensFacing;I)Z

    move-result v0

    return v0
.end method

.method public takeScreenShot()Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 5488
    new-instance v0, Lcom/meizu/media/camera/CameraActivity$30;

    const-string v1, "TakeScreenShot"

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/CameraActivity$30;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V

    .line 5495
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity;->m_TakeScreenShotHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5496
    return-object v0
.end method
