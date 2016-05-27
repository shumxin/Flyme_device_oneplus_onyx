.class public Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Landroid/view/OppoWindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final ACTION_END_CALL:Ljava/lang/String; = "android.intent.action.END_CALL"

.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oppo.intent.action.KEY_LOCK_MODE"

.field private static final ACTION_SCREEN_SHOT:Ljava/lang/String; = "oppo.intent.action.SCREEN_SHOT"

.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final CAMERA_PKG:Ljava/lang/String; = "com.oppo.camera"

.field private static final CAPTURE_GUIDE:Ljava/lang/String; = "com.oppo.gestureguide.activity.CaptureActivity"

.field private static final CTS_PROJECTION_TOUCH:Ljava/lang/String; = "com.android.cts.verifier.projection.touch.ProjectionTouchActivity"

.field private static final HOME_KEY_DOUBLE_CLICK_DETECT_TIME:I = 0xfa

.field private static final HOME_KEY_DOUBLE_CLICK_DETECT_TIME_SLEEP:I = 0xc8

.field private static final KEY_EXIT_DRAG_WINDOW:Ljava/lang/String; = "com.oppo.intent.action.KEY_EXIT_DRAG_WINDOW"

.field private static final KEY_LOCK_MODE_HOME:I = 0x3

.field private static final KEY_LOCK_MODE_NORMAL:I = 0x0

.field private static final KEY_LOCK_MODE_POWER:I = 0x1

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field static final KEY_OFFSET_VALUE:I = 0x320

.field private static final LAYER_WALLPAPER:Ljava/lang/String; = "LAYER_WALLPAPER"

.field private static final MAX_WAIT_TIME:I = 0x3e8

.field private static final MSG_ISCAMERAMODE:I = 0x11

.field private static final MSG_ISHOMEMODE:I = 0x10

.field private static final MSG_ISINGESTUREGUIDE:I = 0x13

.field private static final MSG_SET_WALLPAPER_LAYER:I = 0x12

.field private static final MULTI_TOUCH_GUIDE:Ljava/lang/String; = "com.oppo.gestureguide.activity.StartMultiTouchOpenCamera"

.field private static final OPPO_IGNORE_DRIVE_MODE:Ljava/lang/String; = "com.oppo.drivemode"

.field private static final OPPO_IGNORE_INCALL_SCREEN:Ljava/lang/String; = "com.android.incallui/com.android.incallui.OppoSlidingDrawerInCallActivity"

.field private static final OPPO_IGNORE_SPEECH_ASSIST:Ljava/lang/String; = "com.oppo.speechassist"

.field private static final OPPO_INCALL_SCREEN:Ljava/lang/String; = "com.android.incallui/com.android.incallui.OppoInCallActivity"

.field private static final OPPO_SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final PRACTICAL_HOME_KEY_DOUBLE_CLICK_DETECT_TIME_SLEEP:I = 0xfa

.field private static final PROXIMITY_THRESHOLD:F = 2.0f

.field private static final QUICK_SHOT_DELAY_MILLIS_SCREEN_OFF:J = 0x12cL

.field private static final QUICK_SHOT_DELAY_MILLIS_SCREEN_ON:J = 0xc8L

.field public static final START_SPEECH_DISABLE:Ljava/lang/String; = "com.oppo.intent.action.START_SPEECH_DISABLE"

.field public static final START_SPEECH_ENABLE:Ljava/lang/String; = "com.oppo.intent.action.START_SPEECH_ENABLE"

.field private static TAG:Ljava/lang/String; = null

.field private static final WAIT_FOR_START_TIME:J = 0x7d0L


# instance fields
.field private FORCE_RESUME_FOR_CHANGING_THEME:J

.field private final LongHomePressedEscaped:Ljava/lang/Runnable;

.field private OPPODEBUG:Z

.field private flashlights:Z

.field private final hideStatusBar:Ljava/lang/Runnable;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oukun add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private homeKeyUpTime:J

.field private lastDoubleHomeKeyTime:J

.field private lastHomeKeyTime:J

.field listener:Landroid/telephony/PhoneStateListener;

.field private longPressMenuEnable:Z

.field mApkLockScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mBootShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentKeyMode:I

.field private mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

.field private mHomeDoubleTrigged:Z

.field private final mHomeKeyTap:Ljava/lang/Runnable;

.field private mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

.field private mIsCameraShow:Z

.field private mIsInGestureGuide:Z

.field private final mKeyLockIntentProcess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

.field private mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMyHandler:Landroid/os/Handler;

.field mNotifyLidWakeLock:Landroid/os/PowerManager$WakeLock;

.field mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

.field private mOppoLastLidState:I

.field private mOppoPowerDownKeyConsumedByScreenshotChord:Z

.field private mOppoPowerKeyTime:J

.field private mOppoPowerKeyTriggered:Z

.field private mOppoScreenshotChordEnabled:Z

.field private mOppoVolumeDownKeyConsumedByScreenshotChord:Z

.field private mOppoVolumeDownKeyTime:J

.field private mOppoVolumeDownKeyTriggered:Z

.field private mOppoVolumeUpKeyTriggered:Z

.field private mPauseForChangingTheme:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field mResumeForChangingTheme:Ljava/lang/Runnable;

.field private mRingingTime:J

.field private mScreenDragStatusBarHeight:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

.field private mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

.field private mSupportQuickShot:Z

.field private mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

.field final mUpDownRunnable:Ljava/lang/Runnable;

.field private mVolumeDownKeyConsumedByUpDownChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedByUpDownChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWallpaperLayer:I

.field private mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private object:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-string v0, "OppoPhoneWindowManager"

    sput-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 149
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    .line 151
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastDoubleHomeKeyTime:J

    .line 154
    iput v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    .line 157
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;

    .line 173
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoScreenshotChordEnabled:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    .line 187
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->FORCE_RESUME_FOR_CHANGING_THEME:J

    .line 191
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuEnable:Z

    .line 203
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    .line 207
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    .line 208
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    .line 211
    new-instance v0, Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    .line 213
    iput-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    .line 228
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    .line 231
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    .line 243
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    .line 263
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBootShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUpDownRunnable:Ljava/lang/Runnable;

    .line 294
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

    .line 758
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->LongHomePressedEscaped:Ljava/lang/Runnable;

    .line 800
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    .line 837
    iput v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    .line 840
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    .line 878
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mResumeForChangingTheme:Ljava/lang/Runnable;

    .line 1204
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    .line 1207
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    .line 1209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    .line 1214
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 1327
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    .line 1367
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->listener:Landroid/telephony/PhoneStateListener;

    .line 1386
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    .line 1387
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    .line 1388
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1389
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1390
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1393
    iput-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1400
    iput v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    .line 1405
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    .line 1896
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    return-void
.end method

.method private RemoveHomeLongPressedR()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->LongHomePressedEscaped:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "LongHomePressedR removed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->LongHomePressedEscaped:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 785
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->setWallpaperLayer()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuEnable:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->setVideoMode(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->FORCE_RESUME_FOR_CHANGING_THEME:J

    return-wide v0
.end method

.method private adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 909
    move-object v1, p1

    .line 910
    .local v1, "newEvent":Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 911
    .local v0, "keyCode":I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_1

    .line 912
    packed-switch v0, :pswitch_data_0

    .line 937
    :cond_0
    :goto_0
    return-object v1

    .line 914
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 916
    goto :goto_0

    .line 919
    :cond_1
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_2

    .line 920
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 923
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 925
    goto :goto_0

    .line 928
    :cond_2
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    if-ne v2, v3, :cond_0

    .line 929
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 931
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 933
    goto :goto_0

    .line 912
    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    .line 920
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch

    .line 929
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private checkLiveWallpaperLayer()V
    .locals 4

    .prologue
    .line 1779
    const/4 v0, -0x1

    .line 1780
    .local v0, "wallpaperLayer":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 1781
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    .line 1784
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    if-eq v1, v0, :cond_1

    if-lez v0, :cond_1

    .line 1785
    iput v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    .line 1786
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1790
    :cond_1
    return-void
.end method

.method private closeFlashApp()V
    .locals 3

    .prologue
    .line 788
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    if-nez v1, :cond_0

    .line 796
    :goto_0
    return-void

    .line 790
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    .line 791
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.STOP_LOCK_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 793
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 795
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->RemoveHomeLongPressedR()V

    goto :goto_0
.end method

.method private disableProximitySensor()V
    .locals 4

    .prologue
    .line 1252
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "disableProximitySensor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 1255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1257
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1258
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1262
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    if-eqz v2, :cond_1

    .line 1265
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    .line 1269
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 1260
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private dumpWindowState(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1492
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====getOwningPackage :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getAttrs :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSurfaceLayer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasAppShownWindows :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleOrBehindKeyguardLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDisplayedLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnimatingLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGoneForLayoutLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasDrawnLw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlive :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    return-void
.end method

.method private enableProximitySensor()V
    .locals 6

    .prologue
    .line 1236
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "enableProximitySensor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 1239
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1241
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1244
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1249
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 1246
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static getFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "variableName"    # Ljava/lang/String;

    .prologue
    .line 1733
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1736
    .local v2, "targetClass":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1737
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1738
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1741
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1741
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleDoubleClickOnHome()V
    .locals 4

    .prologue
    .line 1340
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1341
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 1342
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1347
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private handleDoubleKeyEvents(J)V
    .locals 7
    .param p1, "interval"    # J

    .prologue
    .line 817
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "double click time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastDoubleHomeKeyTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastDoubleHomeKeyTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    .line 827
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeDoubleTrigged:Z

    goto :goto_0
.end method

.method private handleScreenoffGesture(Landroid/view/KeyEvent;IZ)I
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "interactive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1273
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 1274
    .local v0, "down":Z
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1276
    .local v1, "keyCode":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isScreenoffGestureKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 1277
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oppo.black.gesture.proximitysensor.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 1278
    .local v2, "proximityDetectCanceled":Z
    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proximityDetectCanceled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->updateGestureInfo()V

    .line 1280
    if-eqz v2, :cond_3

    .line 1281
    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLidState:I

    if-nez v3, :cond_2

    .line 1282
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isGestureDoubleTap()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1283
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I

    move-result p2

    .line 1315
    .end local v2    # "proximityDetectCanceled":Z
    :cond_1
    :goto_0
    return p2

    .line 1286
    .restart local v2    # "proximityDetectCanceled":Z
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I

    move-result p2

    goto :goto_0

    .line 1289
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    monitor-enter v4

    .line 1290
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->enableProximitySensor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->object:Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    :goto_1
    :try_start_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    if-nez v3, :cond_4

    .line 1300
    const-string v3, "oppo.dt.wakeupnum"

    const-string v5, "oppo.dt.wakeupnum"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :cond_4
    sget-object v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mProximitySensorActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensorActive:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLidState:I

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isGestureDoubleTap()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1307
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I

    move-result p2

    .line 1310
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->disableProximitySensor()V

    .line 1311
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1294
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private interceptUpDownChord()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const-wide/16 v6, 0xc8

    const/4 v4, 0x1

    .line 1630
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 1631
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "enter interceptUpDownChord"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1633
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1634
    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1636
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 1637
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    .line 1638
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUpDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1649
    .end local v0    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 1641
    .restart local v0    # "now":J
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1643
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 1644
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    .line 1645
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mUpDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private isLeatherModeEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1146
    const/4 v1, 0x0

    .line 1148
    .local v1, "leatherEnable":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oppo_leather_mode_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 1153
    :goto_0
    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLeatherModeEnabled: leatherEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return v1

    .line 1148
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isLogKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1357
    const/16 v0, 0x1a

    if-eq v0, p1, :cond_0

    const/16 v0, 0x19

    if-eq v0, p1, :cond_0

    const/16 v0, 0x18

    if-eq v0, p1, :cond_0

    const/16 v0, 0xa4

    if-eq v0, p1, :cond_0

    const/16 v0, 0x52

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/16 v0, 0x4f

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isParentKeyguard(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1724
    const-string v2, "mAttachedWindow"

    invoke-static {p1, v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1725
    .local v1, "parent":Landroid/view/WindowManagerPolicy$WindowState;
    const/4 v0, 0x0

    .line 1726
    .local v0, "isParentLock":Z
    if-eqz v1, :cond_0

    .line 1727
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d4

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 1729
    :cond_0
    :goto_0
    return v0

    .line 1727
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private longPressMenuKey()V
    .locals 3

    .prologue
    .line 949
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 950
    .local v0, "intentOppoAssist":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 951
    const-string v1, "com.oppo.speechassist.start_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 953
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "send broadcast com.oppo.speechassist.start_action to start speechassist."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    return-void
.end method

.method private offsetKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 941
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    add-int/lit16 v5, v5, 0x320

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private openFlashApp()V
    .locals 6

    .prologue
    .line 767
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    if-eqz v1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.START_LOCK_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 772
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 773
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 774
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 776
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->LongHomePressedEscaped:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setVideoMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 905
    iput p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mCurrentKeyMode:I

    .line 906
    return-void
.end method

.method private setWallpaperLayer()V
    .locals 3
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LAYER_WALLPAPER"

    iget v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperLayer:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1660
    return-void
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/high16 v5, 0x80000

    const/4 v4, 0x3

    .line 1443
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1446
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1448
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v2, :cond_3

    .line 1449
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1452
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v4, :cond_0

    .line 1453
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1469
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1470
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1472
    .local v0, "isLauncher":Z
    if-eqz v0, :cond_5

    .line 1473
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1479
    :cond_1
    :goto_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1480
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_6

    .line 1482
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    .line 1489
    :cond_2
    :goto_2
    return-void

    .line 1457
    .end local v0    # "isLauncher":Z
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1460
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v4, :cond_4

    .line 1461
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1464
    :cond_4
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1474
    .restart local v0    # "isLauncher":Z
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_5
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_1

    .line 1475
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    .line 1485
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    goto :goto_2
.end method

.method public beginLayoutLw(ZIII)V
    .locals 1
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 1617
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isOffsetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1618
    iget v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mScreenDragStatusBarHeight:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarHeight:I

    .line 1623
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->beginLayoutLw(ZIII)V

    .line 1624
    return-void

    .line 1620
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mScreenDragStatusBarHeight:I

    iput v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarHeight:I

    goto :goto_0
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 1
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 1431
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->beginPostLayoutPolicyLw(II)V

    .line 1432
    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWallpaperWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1433
    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLauncherWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1434
    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    .line 1439
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1679
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isParentKeyguard(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    const/4 v0, 0x1

    .line 1687
    :goto_0
    return v0

    .line 1683
    :cond_0
    const/16 v0, 0x7d4

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_1

    .line 1684
    const/4 v0, 0x0

    goto :goto_0

    .line 1687
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public canMagnifyWindow(I)Z
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 1596
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    sparse-switch p1, :sswitch_data_0

    .line 1609
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canMagnifyWindow(I)Z

    move-result v0

    :goto_0
    return v0

    .line 1601
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1605
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1597
    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x8fd -> :sswitch_1
        0x8fe -> :sswitch_1
    .end sparse-switch
.end method

.method public doesNeedWaitingKeyguard()Z
    .locals 1

    .prologue
    .line 1949
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 14

    .prologue
    const-wide/16 v12, 0x32

    const/16 v11, 0x13

    const/16 v10, 0x11

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1105
    const/4 v1, 0x0

    .line 1106
    .local v1, "changes":I
    const/4 v3, 0x0

    .line 1108
    .local v3, "isCameraShow":Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.oppo.camera"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1109
    const/4 v3, 0x1

    .line 1112
    :cond_0
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    if-eq v3, v6, :cond_1

    .line 1113
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    .line 1114
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1115
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsCameraShow:Z

    if-eqz v6, :cond_6

    move v6, v7

    :goto_0
    invoke-static {v9, v10, v6, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    .line 1117
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1120
    .end local v5    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v0, 0x0

    .line 1121
    .local v0, "appName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1122
    .local v4, "isInGestureGuide":Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1123
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopAppWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    .line 1124
    const/16 v6, 0x2f

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1125
    .local v2, "index":I
    if-lez v2, :cond_2

    .line 1126
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "appName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1128
    .restart local v0    # "appName":Ljava/lang/String;
    :cond_2
    const-string v6, "com.oppo.gestureguide.activity.CaptureActivity"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.oppo.gestureguide.activity.StartMultiTouchOpenCamera"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.android.cts.verifier.projection.touch.ProjectionTouchActivity"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1129
    :cond_3
    const/4 v4, 0x1

    .line 1132
    .end local v2    # "index":I
    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    if-eq v4, v6, :cond_5

    .line 1133
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    .line 1134
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1135
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIsInGestureGuide:Z

    if-eqz v9, :cond_7

    :goto_1
    invoke-static {v6, v11, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    .line 1137
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1140
    .end local v5    # "msg":Landroid/os/Message;
    :cond_5
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v6

    or-int/2addr v1, v6

    .line 1142
    return v1

    .end local v0    # "appName":Ljava/lang/String;
    .end local v4    # "isInGestureGuide":Z
    :cond_6
    move v6, v8

    .line 1115
    goto :goto_0

    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v4    # "isInGestureGuide":Z
    :cond_7
    move v7, v8

    .line 1135
    goto :goto_1
.end method

.method public finishPostLayoutPolicyLwKeyguard(I)I
    .locals 6
    .param p1, "changes"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1794
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->checkLiveWallpaperLayer()V

    .line 1796
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1797
    .local v1, "mApkLockScreen":Landroid/view/WindowManagerPolicy$WindowState;
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v2, :cond_1

    .line 1798
    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1800
    :cond_1
    if-eqz v1, :cond_0

    .line 1803
    iget v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mDismissKeyguard:I

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isKeyguardSecure()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1804
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardHidden:Z

    .line 1805
    invoke-interface {v1, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1806
    or-int/lit8 p1, p1, 0x7

    .line 1810
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 1813
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1814
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1821
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    if-eqz v2, :cond_5

    .line 1822
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardHidden:Z

    .line 1823
    invoke-interface {v1, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1824
    or-int/lit8 p1, p1, 0x7

    .line 1828
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    goto :goto_0

    .line 1830
    :cond_5
    iget v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mDismissKeyguard:I

    if-eqz v2, :cond_7

    .line 1832
    iget v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mDismissKeyguard:I

    if-ne v2, v5, :cond_0

    .line 1834
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardHidden:Z

    .line 1835
    invoke-interface {v1, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1836
    or-int/lit8 p1, p1, 0x7

    .line 1840
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 1842
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$12;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1850
    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDoShowLw:Z

    if-eqz v2, :cond_0

    .line 1851
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardHidden:Z

    .line 1852
    invoke-interface {v1, v4}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1853
    or-int/lit8 p1, p1, 0x7

    .line 1857
    :cond_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    goto/16 :goto_0

    .line 1863
    .end local v1    # "mApkLockScreen":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_9
    return p1
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v9, 0x1

    .line 330
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 334
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v2, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v4, "com.oppo.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.END_CALL"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v4, "com.oppo.intent.action.START_SPEECH_ENABLE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v4, "com.oppo.intent.action.START_SPEECH_DISABLE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v4, "oppo.intent.action.SCREEN_SHOT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoBaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBootShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 361
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 364
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->init(Landroid/os/Handler;Landroid/content/Context;)V

    .line 366
    new-instance v4, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager$WakeLock;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    .line 368
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 369
    .local v3, "telephoneManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 372
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oppo.disable.small.window.leather"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLidControlsSleep:Z

    .line 377
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oppo.quick.shot.support"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 378
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    .line 381
    :cond_1
    new-instance v4, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/os/PowerManager;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    .line 384
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->resetState()V

    .line 386
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mScreenDragStatusBarHeight:I

    .line 389
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "notifyLidSwitchWakeLock"

    invoke-virtual {v4, v9, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mNotifyLidWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 391
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 30
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_0

    const/4 v7, 0x1

    .line 506
    .local v7, "down1":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_1

    const/4 v6, 0x1

    .line 507
    .local v6, "down":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 508
    .local v13, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    .line 509
    .local v9, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    .line 510
    .local v4, "canceled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    .line 515
    .local v20, "repeatCount":I
    if-nez v7, :cond_2

    .line 516
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v13, v0, :cond_2

    .line 517
    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "interceptKeyBeforeDispatching disabled flashlights"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->closeFlashApp()V

    .line 519
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->flashlights:Z

    .line 520
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->RemoveHomeLongPressedR()V

    .line 521
    const-wide/16 v26, -0x1

    .line 750
    :goto_2
    return-wide v26

    .line 503
    .end local v4    # "canceled":Z
    .end local v6    # "down":Z
    .end local v7    # "down1":Z
    .end local v9    # "flags":I
    .end local v13    # "keyCode":I
    .end local v20    # "repeatCount":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 506
    .restart local v7    # "down1":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 529
    .restart local v4    # "canceled":Z
    .restart local v6    # "down":Z
    .restart local v9    # "flags":I
    .restart local v13    # "keyCode":I
    .restart local v20    # "repeatCount":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    move-object/from16 v26, v0

    if-nez v26, :cond_3

    .line 530
    new-instance v26, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct/range {v26 .. v26}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    .line 532
    :cond_3
    if-eqz p1, :cond_c

    .line 534
    if-nez v20, :cond_9

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    const/16 v26, 0x4

    move/from16 v0, v26

    if-eq v13, v0, :cond_5

    :cond_4
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v13, v0, :cond_9

    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v26

    if-nez v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/IOppoWindowManagerImpl;->isRotatingLw()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 536
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "do not shotscreen when animating or window rotating! repeatCount="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", keyCode="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", isAnimatingLw="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", isRotatingLw="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/IOppoWindowManagerImpl;->isRotatingLw()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v13, v0, :cond_8

    .line 540
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    .line 542
    :cond_8
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 544
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v26

    if-eqz v26, :cond_c

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v13, v0, :cond_c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v26

    if-nez v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/IOppoWindowManagerImpl;->isRotatingLw()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 545
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "do not shotscreen when isCanceled and animating or window rotating!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :cond_b
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 548
    :catch_0
    move-exception v26

    .line 553
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 554
    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "interceptKeyBeforeDispatching key: win="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "  event = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    move/from16 v26, v0

    if-eqz v26, :cond_15

    .line 560
    and-int/lit16 v0, v9, 0x400

    move/from16 v26, v0

    if-nez v26, :cond_15

    .line 561
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v26, v0

    if-nez v26, :cond_f

    .line 562
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 564
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v26

    if-eqz v26, :cond_e

    .line 565
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0xc8

    add-long v24, v26, v28

    .line 569
    .local v24, "timeoutTime":J
    :goto_3
    cmp-long v26, v16, v24

    if-gez v26, :cond_f

    .line 570
    sub-long v26, v24, v16

    goto/16 :goto_2

    .line 567
    .end local v24    # "timeoutTime":J
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x12c

    add-long v24, v26, v28

    .restart local v24    # "timeoutTime":J
    goto :goto_3

    .line 574
    .end local v16    # "now":J
    .end local v24    # "timeoutTime":J
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v26, v0

    if-nez v26, :cond_11

    .line 575
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 577
    .restart local v16    # "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v26

    if-eqz v26, :cond_10

    .line 578
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0xc8

    add-long v24, v26, v28

    .line 582
    .restart local v24    # "timeoutTime":J
    :goto_4
    cmp-long v26, v16, v24

    if-gez v26, :cond_11

    .line 583
    sub-long v26, v24, v16

    goto/16 :goto_2

    .line 580
    .end local v24    # "timeoutTime":J
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x12c

    add-long v24, v26, v28

    .restart local v24    # "timeoutTime":J
    goto :goto_4

    .line 587
    .end local v16    # "now":J
    .end local v24    # "timeoutTime":J
    :cond_11
    const/16 v26, 0x19

    move/from16 v0, v26

    if-ne v13, v0, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 589
    if-nez v6, :cond_12

    .line 590
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 592
    :cond_12
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 595
    :cond_13
    const/16 v26, 0x18

    move/from16 v0, v26

    if-ne v13, v0, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    move/from16 v26, v0

    if-eqz v26, :cond_15

    .line 597
    if-nez v6, :cond_14

    .line 598
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyConsumedByUpDownChord:Z

    .line 600
    :cond_14
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 606
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 608
    .local v15, "newEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_16

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 609
    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "interceptKeyBeforeDispatching newEvent keyCode = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_16
    invoke-virtual {v15}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_28

    .line 615
    if-nez v6, :cond_23

    .line 616
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    .line 618
    .local v10, "homeWasLongPressed":Z
    if-nez v10, :cond_23

    .line 619
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomePressed:Z

    .line 620
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    .line 622
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v21

    .line 623
    .local v21, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v21, :cond_17

    .line 624
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 632
    .end local v21    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_17
    :goto_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomePressed:Z

    .line 633
    if-nez v4, :cond_22

    .line 637
    const/4 v11, 0x0

    .line 638
    .local v11, "incomingRinging":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v22

    .line 639
    .local v22, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v22, :cond_18

    .line 640
    invoke-virtual/range {v22 .. v22}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v11

    .line 643
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 654
    .local v18, "nowTime":J
    if-eqz v11, :cond_1c

    if-eqz p1, :cond_19

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const-string v27, "com.android.incallui/com.android.incallui.OppoInCallActivity"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const-string v27, "com.android.incallui/com.android.incallui.OppoSlidingDrawerInCallActivity"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mRingingTime:J

    move-wide/from16 v26, v0

    sub-long v26, v18, v26

    const-wide/16 v28, 0x7d0

    cmp-long v26, v26, v28

    if-gez v26, :cond_1c

    .line 656
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v11    # "incomingRinging":Z
    .end local v18    # "nowTime":J
    .end local v22    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1b
    :goto_6
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 626
    :catch_1
    move-exception v8

    .line 627
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "RemoteException when showing recent apps"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_5

    .line 670
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v11    # "incomingRinging":Z
    .restart local v18    # "nowTime":J
    .restart local v22    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1c
    const-string v26, "persist.sys.oppo.region"

    const-string v27, "CN"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 672
    .local v5, "currRegion":Ljava/lang/String;
    const-string v26, "CN"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1e

    .line 673
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 675
    .restart local v16    # "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    move-wide/from16 v26, v0

    sub-long v26, v16, v26

    const-wide/16 v28, 0xfa

    cmp-long v26, v26, v28

    if-gez v26, :cond_1d

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleDoubleClickOnHome()V

    .line 682
    :goto_7
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastHomeKeyTime:J

    goto :goto_6

    .line 679
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeKeyTap:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0xfa

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 687
    .end local v16    # "now":J
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "oppo_double_press_home_lock_screen"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    const/4 v12, 0x1

    .line 689
    .local v12, "isDoubleHomeEnable":Z
    :goto_8
    if-eqz v12, :cond_21

    .line 690
    and-int/lit8 v26, p3, 0x2

    if-eqz v26, :cond_20

    .line 691
    const-wide/16 v26, 0xc8

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleDoubleKeyEvents(J)V

    goto/16 :goto_6

    .line 687
    .end local v12    # "isDoubleHomeEnable":Z
    :cond_1f
    const/4 v12, 0x0

    goto :goto_8

    .line 693
    .restart local v12    # "isDoubleHomeEnable":Z
    :cond_20
    const-wide/16 v26, 0xfa

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleDoubleKeyEvents(J)V

    goto/16 :goto_6

    .line 696
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->launchHomeFromHotKey()V

    goto/16 :goto_6

    .line 703
    .end local v5    # "currRegion":Ljava/lang/String;
    .end local v11    # "incomingRinging":Z
    .end local v12    # "isDoubleHomeEnable":Z
    .end local v18    # "nowTime":J
    .end local v22    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "Ignoring HOME; event canceled."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 710
    .end local v10    # "homeWasLongPressed":Z
    :cond_23
    const/4 v14, 0x0

    .line 711
    .local v14, "keyguardOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v26, v0

    if-eqz v26, :cond_24

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v14

    .line 715
    :cond_24
    if-eqz v6, :cond_25

    if-eqz v14, :cond_25

    .line 716
    if-nez v20, :cond_26

    .line 730
    :cond_25
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v26

    goto/16 :goto_2

    .line 718
    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_25

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    const-string v27, "oppo.disable.small.window.leather"

    invoke-virtual/range {v26 .. v27}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    move/from16 v26, v0

    if-nez v26, :cond_27

    .line 722
    sget-object v26, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v27, "leather is closed. Ignore HomeLongPress startup flashApp!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 725
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->closeFlashApp()V

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->openFlashApp()V

    .line 727
    const-wide/16 v26, -0x1

    goto/16 :goto_2

    .line 734
    .end local v14    # "keyguardOn":Z
    :cond_28
    const/16 v26, 0x52

    move/from16 v0, v26

    if-ne v13, v0, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuEnable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_29

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->keyguardOn()Z

    move-result v14

    .line 738
    .restart local v14    # "keyguardOn":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v23

    .line 739
    .local v23, "telephoneManager":Landroid/telecom/TelecomManager;
    if-eqz v6, :cond_29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_29

    if-nez v14, :cond_29

    .line 741
    if-eqz p1, :cond_29

    const-string v26, "com.oppo.speechassist"

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    const-string v26, "com.oppo.drivemode"

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v26

    if-nez v26, :cond_29

    .line 744
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->longPressMenuKey()V

    .line 750
    .end local v14    # "keyguardOn":Z
    .end local v23    # "telephoneManager":Landroid/telecom/TelecomManager;
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-super {v0, v1, v15, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v26

    goto/16 :goto_2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 395
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemBooted:Z

    if-nez v7, :cond_0

    .line 397
    const/4 v5, 0x0

    .line 498
    :goto_0
    return v5

    .line 400
    :cond_0
    const/high16 v7, 0x20000000

    and-int/2addr v7, p2

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    .line 401
    .local v1, "interactive":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_3

    const/4 v0, 0x1

    .line 402
    .local v0, "down":Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 403
    .local v3, "keyCode":I
    const/4 v5, 0x0

    .line 407
    .local v5, "result":I
    const/4 v7, 0x3

    if-ne v3, v7, :cond_1

    if-nez v0, :cond_1

    .line 408
    iget-wide v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    iput-wide v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->lastDoubleHomeKeyTime:J

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->homeKeyUpTime:J

    .line 413
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    sget-boolean v7, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    if-eqz v7, :cond_4

    .line 414
    sget-object v7, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v8, "OppoPhoneWindowManager block key at shutdown/restart sequence"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v5, 0x0

    goto :goto_0

    .line 400
    .end local v0    # "down":Z
    .end local v1    # "interactive":Z
    .end local v3    # "keyCode":I
    .end local v5    # "result":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 401
    .restart local v1    # "interactive":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 419
    .restart local v0    # "down":Z
    .restart local v3    # "keyCode":I
    .restart local v5    # "result":I
    :cond_4
    const/16 v7, 0x19

    if-eq v7, v3, :cond_5

    const/16 v7, 0x18

    if-eq v7, v3, :cond_5

    const/16 v7, 0xa4

    if-ne v7, v3, :cond_9

    .line 422
    :cond_5
    if-eqz v0, :cond_7

    .line 425
    new-instance v2, Landroid/content/Intent;

    const-string v7, "SILENCE_ACTION_FOR_OPPO_SPEECH"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v2, "it":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 427
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v8, "send broadcast silence action for speechassist."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_6
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->disableNotificationAlert()V

    .line 437
    .end local v2    # "it":Landroid/content/Intent;
    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "oppo.sky.gesture.support"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 438
    .local v6, "supportSkyGesture":Z
    if-eqz v6, :cond_9

    .line 439
    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    .line 440
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->dealSkyGestureDown()V

    .line 442
    :cond_8
    if-nez v0, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->isVolumeLongPress()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 443
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSkyGestureHelper:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->dealSkyGestureUp()V

    .line 453
    .end local v6    # "supportSkyGesture":Z
    :cond_9
    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->handleScreenoffGesture(Landroid/view/KeyEvent;IZ)I

    move-result p2

    .line 456
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->adjustKey(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v4

    .line 458
    .local v4, "newEvent":Landroid/view/KeyEvent;
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v7, :cond_a

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLogKey(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 459
    sget-object v7, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interceptKeyBeforeQueueing"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_a
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSupportQuickShot:Z

    if-eqz v7, :cond_e

    .line 465
    const/16 v7, 0x19

    if-ne v3, v7, :cond_c

    .line 466
    if-eqz v0, :cond_f

    .line 467
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v7, :cond_c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_c

    .line 469
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 470
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    .line 471
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v7, :cond_b

    sget-object v7, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mVolumeDownKeyTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_b
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 473
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptUpDownChord()V

    .line 480
    :cond_c
    :goto_3
    const/16 v7, 0x18

    if-ne v3, v7, :cond_e

    .line 481
    if-eqz v0, :cond_10

    .line 482
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v7, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_e

    .line 484
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 485
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 486
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v7, :cond_d

    sget-object v7, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mVolumeUpKeyTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_d
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyConsumedByUpDownChord:Z

    .line 488
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->interceptUpDownChord()V

    .line 497
    :cond_e
    :goto_4
    invoke-super {p0, v4, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v5

    .line 498
    goto/16 :goto_0

    .line 476
    :cond_f
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    goto :goto_3

    .line 491
    :cond_10
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    goto :goto_4
.end method

.method public isApkLockScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1870
    const/4 v0, 0x1

    .line 1873
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1664
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_0

    .line 1665
    const/4 v0, 0x0

    .line 1667
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public isForceHiding(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1772
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isParentKeyguard(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    const/4 v0, 0x1

    .line 1775
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isForceHiding(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    goto :goto_0
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1674
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusBarVisible()Z
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    return v0
.end method

.method launchHomeFromHotKey()V
    .locals 1

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->removePowerView()V

    .line 1589
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 1590
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1160
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oppo.disable.small.window.leather"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1161
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    if-eqz p3, :cond_2

    move v1, v2

    .line 1168
    .local v1, "newLidState":I
    :goto_1
    iget v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    if-ne v1, v4, :cond_3

    .line 1169
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v3, "notifyLidSwitchChanged newLidState == mLidState"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "newLidState":I
    :cond_2
    move v1, v3

    .line 1166
    goto :goto_1

    .line 1174
    .restart local v1    # "newLidState":I
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isLeatherModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1175
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.oppo.intent.action.LID_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "lid_state"

    iget v5, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    if-ne v1, v2, :cond_7

    :goto_2
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1181
    if-ne v1, v2, :cond_4

    .line 1182
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mNotifyLidWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1184
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1185
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoPhoneWindowManager notifyLidSwitchChanged sendBroadcast com.oppo.intent.action.LID_STATE_CHANGED, newLidState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_5
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isOffsetState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1190
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oppo.intent.action.KEY_EXIT_DRAG_WINDOW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1194
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1196
    iput v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    goto :goto_0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_7
    move v3, v2

    .line 1178
    goto :goto_2

    :cond_8
    iget v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mOppoLastLidState:I

    goto :goto_2
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1096
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1098
    .local v0, "hapticsDisabled":Z
    :cond_0
    if-nez v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 1099
    invoke-super {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    .line 1101
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1692
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isParentKeyguard(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    :cond_0
    const/16 v0, 0x7d4

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_2

    .line 1696
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    .line 1697
    const/4 v0, -0x7

    .line 1703
    :goto_0
    return v0

    .line 1699
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1700
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1701
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->hideScrim()V

    .line 1703
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    goto :goto_0
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1708
    const/16 v0, 0x7d4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isParentKeyguard(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1710
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mApkLockScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1712
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 1713
    sget-object v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "Removing keyguard window (Did it crash?)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1716
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1717
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->showScrim()V

    .line 1720
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1721
    return-void
.end method

.method public requestDismissKeyguard()V
    .locals 2

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1966
    :cond_0
    return-void
.end method

.method public rm_add_StatusBarRunnable(I)V
    .locals 4
    .param p1, "type"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oukun add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1918
    if-ne p1, v3, :cond_3

    .line 1919
    const/high16 v0, 0x80000

    iget v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mLastSystemUiFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopIsFullscreen:Z

    if-nez v0, :cond_1

    .line 1945
    :cond_0
    :goto_0
    return-void

    .line 1923
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1924
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1927
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    .line 1928
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0

    .line 1936
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1937
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1938
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    if-eqz v0, :cond_0

    .line 1939
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    .line 1940
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public screenTurnedOff()V
    .locals 1

    .prologue
    .line 1068
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff()V

    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->screenTurnedOff()V

    .line 1077
    :cond_0
    invoke-static {}, Landroid/view/OppoScreenShotUtil;->resumeDeliverPointerEvent()V

    .line 1078
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 1
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 1082
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1086
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGestureManager:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->screenTurningOn()V

    .line 1092
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->closeFlashApp()V

    .line 1093
    return-void
.end method

.method final sendIsCameraModeIntent(Z)V
    .locals 4
    .param p1, "isCameraMode"    # Z

    .prologue
    .line 1520
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->OPPODEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===sendIsCameraModeIntent=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-nez v1, :cond_2

    .line 1522
    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIsCameraModeIntent:isCameraMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", can\'t send broadcast before boot completed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_1
    :goto_0
    return-void

    .line 1527
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1528
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "iscameramode"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1529
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1530
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1528
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final sendIsHomeModeIntent(ZZ)V
    .locals 5
    .param p1, "isHomeMode"    # Z
    .param p2, "isSemipermeable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1505
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 1506
    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIsHomeModeIntent:isHomeMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", can\'t send broadcast before boot completed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HOME_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1512
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "ishomemode"

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1513
    const-string v1, "isSemipermeable"

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1514
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1515
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1512
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1513
    goto :goto_2
.end method

.method final sendIsInGestureGuideIntent(Z)V
    .locals 3
    .param p1, "isInGestureGuideMode"    # Z

    .prologue
    .line 1537
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 1538
    sget-object v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "GestureGuideIntent can\'t send broadcast before boot completed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_0
    :goto_0
    return-void

    .line 1541
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.GESTUREGUIDE_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1542
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "isInGestureGuideMode"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1543
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1544
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1542
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1563
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 3

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    if-nez v0, :cond_0

    .line 1572
    new-instance v0, Lcom/android/internal/policy/impl/OppoGlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    .line 1575
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1576
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->setSystemUiVisibility(Z)V

    .line 1580
    :goto_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 1581
    return-void

    .line 1578
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->setSystemUiVisibility(Z)V

    goto :goto_0
.end method

.method public showStatusBar()V
    .locals 4
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oukun add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1884
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1887
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    .line 1888
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 1889
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->hideStatusBar:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1894
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 1060
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V

    .line 1062
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 1064
    return-void
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1748
    sparse-switch p1, :sswitch_data_0

    .line 1766
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    :goto_0
    return v0

    .line 1750
    :sswitch_0
    const/16 v0, 0xd

    goto :goto_0

    .line 1752
    :sswitch_1
    const/16 v0, 0x64

    goto :goto_0

    .line 1754
    :sswitch_2
    const/16 v0, 0x65

    goto :goto_0

    .line 1756
    :sswitch_3
    const/16 v0, 0x66

    goto :goto_0

    .line 1758
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    .line 1759
    const/16 v0, 0x67

    goto :goto_0

    .line 1762
    :cond_1
    :sswitch_5
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 1763
    const/16 v0, 0x68

    goto :goto_0

    .line 1748
    :sswitch_data_0
    .sparse-switch
        0x7d4 -> :sswitch_0
        0x7e3 -> :sswitch_4
        0x7e8 -> :sswitch_5
        0x8fc -> :sswitch_2
        0x8fe -> :sswitch_3
        0x8ff -> :sswitch_1
    .end sparse-switch
.end method
