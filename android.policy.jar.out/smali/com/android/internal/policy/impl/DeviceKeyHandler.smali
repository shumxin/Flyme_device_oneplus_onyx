.class public Lcom/android/internal/policy/impl/DeviceKeyHandler;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;,
        Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;
    }
.end annotation


# static fields
.field private static BLACK_ENBALE_PATH:Ljava/lang/String; = null

.field private static BLACK_VALUE_PATH:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final GESTURE_CIRCLE_SCANCODE:Ljava/lang/String; = "6"

.field private static final GESTURE_GTR_SCANCODE:Ljava/lang/String; = "4"

.field private static final GESTURE_LTR_SCANCODE:Ljava/lang/String; = "5"

.field private static final GESTURE_SWIPE_DOWN_SCANCODE:Ljava/lang/String; = "7"

.field private static final GESTURE_V_SCANCODE:Ljava/lang/String; = "2"

.field private static final GESTURE_WAKELOCK_DURATION:I = 0xbb8

.field private static final KEY_DOUBLE_TAP:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "DeviceKeyHandler"

.field private static final VIBRATE_DURATION_SHORT:I = 0x4b

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mBlackEnabelState:Z

.field private mBlackKeySettingState:I

.field private final mContext:Landroid/content/Context;

.field private mDoubleScreenOn:Z

.field private mEventHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;

.field mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMusic_control:Z

.field private mMusic_next:Z

.field private mMusic_pause:Z

.field private mMusic_play:Z

.field private mMusic_prev:Z

.field private mObserver:Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStartCamera:Z

.field mStartCameraWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStartFlash:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "/proc/touchpanel/gesture_enable"

    sput-object v0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->BLACK_ENBALE_PATH:Ljava/lang/String;

    .line 82
    const-string v0, "/proc/touchpanel/coordinate"

    sput-object v0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->BLACK_VALUE_PATH:Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 99
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackEnabelState:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mStartCamera:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mStartFlash:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_control:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_prev:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_next:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_pause:Z

    .line 107
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_play:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 123
    iput-object p1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 124
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 125
    new-instance v0, Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/internal/policy/impl/DeviceKeyHandler;Lcom/android/internal/policy/impl/DeviceKeyHandler$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mEventHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;

    .line 126
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 128
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "ProximityWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "GestureWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "StartCamera"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mStartCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 138
    new-instance v0, Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mEventHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/DeviceKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mObserver:Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;

    .line 139
    return-void
.end method

.method private SensorProcessMessage()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v1, Lcom/android/internal/policy/impl/DeviceKeyHandler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler$1;-><init>(Lcom/android/internal/policy/impl/DeviceKeyHandler;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 302
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/DeviceKeyHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DeviceKeyHandler;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DeviceKeyHandler;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->updateH2OemSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DeviceKeyHandler;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->updateO2OemSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/DeviceKeyHandler;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DeviceKeyHandler;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/DeviceKeyHandler;)Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DeviceKeyHandler;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mEventHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/DeviceKeyHandler;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DeviceKeyHandler;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/DeviceKeyHandler;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->processKeyEvent()V

    return-void
.end method

.method private dispatchMediaKeyWithWakeLockToAudioService(I)V
    .locals 9
    .param p1, "keycode"    # I

    .prologue
    const/4 v6, 0x0

    .line 510
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 512
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_0

    .line 513
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p1

    move v8, v6

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 515
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 516
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 517
    invoke-virtual {v0, v1, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 523
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method

.method private ensureKeyguardManager()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 331
    :cond_0
    return-void
.end method

.method public static getOffset(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "index"    # I

    .prologue
    .line 323
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    and-int/2addr v0, p0

    shr-int/2addr v0, p1

    return v0
.end method

.method private performVibration()V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x4b

    sget-object v1, Lcom/android/internal/policy/impl/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 394
    :cond_0
    return-void
.end method

.method private processKeyEvent()V
    .locals 14

    .prologue
    const/16 v13, 0x55

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 398
    sget-object v9, Lcom/android/internal/policy/impl/DeviceKeyHandler;->BLACK_VALUE_PATH:Ljava/lang/String;

    invoke-static {v9}, Lcom/oneplus/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const/16 v9, 0x2c

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 403
    .local v1, "at":I
    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "keyVaule":Ljava/lang/String;
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 406
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->processO2KeyEvent()V

    goto :goto_0

    .line 409
    :cond_2
    const/4 v9, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 411
    :pswitch_1
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mStartCamera:Z

    if-eqz v9, :cond_0

    .line 414
    const/4 v7, 0x0

    .line 416
    .local v7, "obbIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.meizu.media.camera"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 418
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_4

    .line 419
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.meizu.media.camera"

    const-string v12, "com.meizu.media.camera.CameraLauncher"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 431
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 433
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->ensureKeyguardManager()V

    .line 434
    const/4 v6, 0x0

    .line 435
    .local v6, "mKeyguardLock":Landroid/app/KeyguardManager$KeyguardLock;
    iget-object v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 437
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 448
    .local v0, "action":Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v7, :cond_6

    .line 449
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->startActivitySafely(Landroid/content/Intent;)V

    .line 457
    :cond_6
    const-wide/16 v10, 0x1f4

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 463
    :goto_4
    iget-object v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 464
    if-eqz v6, :cond_7

    .line 465
    invoke-virtual {v6}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 467
    :cond_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 409
    .end local v0    # "action":Ljava/lang/String;
    .end local v6    # "mKeyguardLock":Landroid/app/KeyguardManager$KeyguardLock;
    .end local v7    # "obbIntent":Landroid/content/Intent;
    :pswitch_2
    const-string v12, "6"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v9, v10

    goto :goto_1

    :pswitch_3
    const-string v12, "7"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v9, v11

    goto :goto_1

    :pswitch_4
    const-string v12, "2"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v9, 0x2

    goto/16 :goto_1

    :pswitch_5
    const-string v12, "5"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v9, 0x3

    goto/16 :goto_1

    :pswitch_6
    const-string v12, "4"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v9, 0x4

    goto/16 :goto_1

    :pswitch_7
    const-string v12, "1"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v9, 0x5

    goto/16 :goto_1

    .line 423
    .restart local v7    # "obbIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 426
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "DeviceKeyHandler"

    const-string v10, "Could not get find package com.oneplus.camera"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.android.camera2"

    const-string v12, "com.android.camera.CameraLauncher"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    goto/16 :goto_2

    .line 438
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "mKeyguardLock":Landroid/app/KeyguardManager$KeyguardLock;
    :cond_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 439
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 440
    .restart local v0    # "action":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v10, "DeviceKeyHandler"

    invoke-virtual {v9, v10}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v6

    .line 441
    if-eqz v6, :cond_5

    .line 442
    invoke-virtual {v6}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    goto/16 :goto_3

    .line 445
    .end local v0    # "action":Ljava/lang/String;
    :cond_9
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .restart local v0    # "action":Ljava/lang/String;
    goto/16 :goto_3

    .line 458
    :catch_1
    move-exception v2

    .line 460
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 472
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "mKeyguardLock":Landroid/app/KeyguardManager$KeyguardLock;
    .end local v7    # "obbIntent":Landroid/content/Intent;
    :pswitch_8
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_pause:Z

    if-eqz v9, :cond_0

    .line 473
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_play:Z

    if-eqz v9, :cond_a

    .line 474
    invoke-direct {p0, v13}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 475
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_play:Z

    goto/16 :goto_0

    .line 477
    :cond_a
    invoke-direct {p0, v13}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 478
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_play:Z

    goto/16 :goto_0

    .line 483
    :pswitch_9
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mStartFlash:Z

    if-eqz v9, :cond_0

    .line 484
    iget-object v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v10, 0xbb8

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 485
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.OEM_FLASH_LIGHT_STATE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    .local v3, "flashlightIntent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 488
    iget-object v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 493
    .end local v3    # "flashlightIntent":Landroid/content/Intent;
    :pswitch_a
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_prev:Z

    if-eqz v9, :cond_0

    .line 494
    const/16 v9, 0x58

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto/16 :goto_0

    .line 498
    :pswitch_b
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_next:Z

    if-eqz v9, :cond_0

    .line 499
    const/16 v9, 0x57

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto/16 :goto_0

    .line 503
    :pswitch_c
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mDoubleScreenOn:Z

    if-eqz v9, :cond_0

    .line 504
    iget-object v9, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private processO2KeyEvent()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xbb8

    const/4 v5, 0x0

    .line 335
    sget-object v6, Lcom/android/internal/policy/impl/DeviceKeyHandler;->BLACK_VALUE_PATH:Ljava/lang/String;

    invoke-static {v6}, Lcom/oneplus/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const/16 v6, 0x2c

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 340
    .local v0, "at":I
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "keyVaule":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v5, v6

    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 343
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mStartCamera:Z

    if-eqz v5, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->performVibration()V

    .line 345
    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 346
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.KEYGUARD_CAMERA_TRANSITION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v3, "keyguardCameraIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 348
    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 341
    .end local v3    # "keyguardCameraIntent":Landroid/content/Intent;
    :pswitch_2
    const-string v7, "6"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :pswitch_3
    const-string v5, "7"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :pswitch_4
    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :pswitch_5
    const-string v5, "5"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :pswitch_6
    const-string v5, "4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_1

    :pswitch_7
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto :goto_1

    .line 352
    :pswitch_8
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_pause:Z

    if-eqz v5, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->performVibration()V

    .line 354
    const/16 v5, 0x55

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto/16 :goto_0

    .line 358
    :pswitch_9
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mStartFlash:Z

    if-eqz v5, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->performVibration()V

    .line 360
    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 361
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.TOGGLE_FLASH_LIGHT_STATE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v1, "flashlightIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 368
    .end local v1    # "flashlightIntent":Landroid/content/Intent;
    :pswitch_a
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_prev:Z

    if-eqz v5, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->performVibration()V

    .line 370
    const/16 v5, 0x58

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto/16 :goto_0

    .line 374
    :pswitch_b
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_next:Z

    if-eqz v5, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->performVibration()V

    .line 376
    const/16 v5, 0x57

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto/16 :goto_0

    .line 380
    :pswitch_c
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mDoubleScreenOn:Z

    if-eqz v5, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->performVibration()V

    .line 382
    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private startActivitySafely(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 526
    const/high16 v1, 0x34000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 531
    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 532
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v0    # "user":Landroid/os/UserHandle;
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateH2OemSettings()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    const/4 v4, -0x2

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 214
    const-string v1, "DeviceKeyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateOemSettings  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x7

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 217
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x6

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mStartCamera:Z

    .line 218
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x5

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_control:Z

    .line 219
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_prev:Z

    .line 220
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x3

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_next:Z

    .line 222
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_pause:Z

    .line 223
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_6

    :goto_6
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mStartFlash:Z

    .line 224
    sget-object v1, Lcom/android/internal/policy/impl/DeviceKeyHandler;->BLACK_ENBALE_PATH:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v1, v2}, Lcom/oneplus/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    .line 225
    return-void

    :cond_0
    move v1, v3

    .line 216
    goto :goto_0

    :cond_1
    move v1, v3

    .line 217
    goto :goto_1

    :cond_2
    move v1, v3

    .line 218
    goto :goto_2

    :cond_3
    move v1, v3

    .line 219
    goto :goto_3

    :cond_4
    move v1, v3

    .line 220
    goto :goto_4

    :cond_5
    move v1, v3

    .line 222
    goto :goto_5

    :cond_6
    move v2, v3

    .line 223
    goto :goto_6
.end method

.method private updateO2OemSettings()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 231
    const-string v1, "oem_acc_blackscreen_master_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackEnabelState:Z

    .line 238
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x7

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 239
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x6

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mStartCamera:Z

    .line 240
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x5

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_control:Z

    .line 241
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_prev:Z

    .line 242
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x3

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_next:Z

    .line 243
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_pause:Z

    .line 244
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mMusic_play:Z

    .line 245
    iget v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v2, :cond_8

    :goto_8
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mStartFlash:Z

    .line 249
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackEnabelState:Z

    if-eqz v1, :cond_9

    .line 250
    sget-object v1, Lcom/android/internal/policy/impl/DeviceKeyHandler;->BLACK_ENBALE_PATH:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v1, v2}, Lcom/oneplus/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    .line 254
    :goto_9
    return-void

    :cond_0
    move v1, v3

    .line 231
    goto :goto_0

    :cond_1
    move v1, v3

    .line 238
    goto :goto_1

    :cond_2
    move v1, v3

    .line 239
    goto :goto_2

    :cond_3
    move v1, v3

    .line 240
    goto :goto_3

    :cond_4
    move v1, v3

    .line 241
    goto :goto_4

    :cond_5
    move v1, v3

    .line 242
    goto :goto_5

    :cond_6
    move v1, v3

    .line 243
    goto :goto_6

    :cond_7
    move v1, v3

    .line 244
    goto :goto_7

    :cond_8
    move v2, v3

    .line 245
    goto :goto_8

    .line 252
    :cond_9
    sget-object v1, Lcom/android/internal/policy/impl/DeviceKeyHandler;->BLACK_ENBALE_PATH:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/oneplus/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    goto :goto_9
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 257
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 258
    .local v3, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v5, :cond_1

    move v0, v5

    .line 259
    .local v0, "actionUp":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    move v4, v5

    .line 260
    .local v4, "shouldHandleEvent":Z
    :goto_1
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mBlackEnabelState:Z

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    move v1, v5

    .line 263
    .local v1, "handled":Z
    :goto_2
    if-eqz v1, :cond_0

    .line 264
    iget-object v6, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mEventHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;

    invoke-virtual {v6, v5}, Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 265
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_5

    .line 266
    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mEventHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 267
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->SensorProcessMessage()V

    .line 273
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_3
    return v1

    .end local v0    # "actionUp":Z
    .end local v1    # "handled":Z
    .end local v4    # "shouldHandleEvent":Z
    :cond_1
    move v0, v6

    .line 258
    goto :goto_0

    .restart local v0    # "actionUp":Z
    :cond_2
    move v4, v6

    .line 259
    goto :goto_1

    .restart local v4    # "shouldHandleEvent":Z
    :cond_3
    move v1, v6

    .line 260
    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_2

    .line 269
    .restart local v1    # "handled":Z
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mEventHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;

    invoke-virtual {v5, v2}, Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 142
    iget-object v3, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mObserver:Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;->observe()V

    .line 145
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const/4 v2, 0x0

    .line 148
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 155
    :goto_0
    if-eqz v2, :cond_0

    .line 157
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    return-void

    .line 150
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 153
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
