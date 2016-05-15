.class public Lcom/android/internal/policy/impl/OemPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemSettingsObserver;,
        Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;,
        Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;,
        Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;
    }
.end annotation


# static fields
.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field protected static final DEBUG:Z

.field private static final KEYLOCK_MODE_BASE:I = 0x8

.field private static final KEYS_DEFAULT:I = 0x0

.field private static final KEYS_SWAP:I = 0x1

.field private static final KEY_ACTION_APP_SWITCH:I = 0x2

.field private static final KEY_ACTION_ASSIST:I = 0x3

.field private static final KEY_ACTION_BACK:I = 0xa

.field private static final KEY_ACTION_HOME:I = 0x9

.field private static final KEY_ACTION_LAST_APP:I = 0x7

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x5

.field private static final KEY_ACTION_MENU:I = 0x1

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_QUICK_ACCESS_PAGE:I = 0x8

.field private static final KEY_ACTION_TURN_OFF_SCREEN:I = 0x4

.field private static final KEY_ACTION_VOICE_SEARCH:I = 0x6

.field private static final KEY_CODE_OEM_SOURCE:I = -0x6

.field private static final KEY_LOCK_MODE_BACK_MENU:I = 0x5

.field private static final KEY_LOCK_MODE_FOOT:I = 0x4

.field private static final KEY_LOCK_MODE_HOME:I = 0x3

.field private static final KEY_LOCK_MODE_NORMAL:I = 0x0

.field private static final KEY_LOCK_MODE_POWER:I = 0x1

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field private static final LOCK_TASK_END_DELAY:I = 0x7d0

.field private static final MDM_FINGERPRINT_SOURCE:Ljava/lang/String; = "fg_unlock_loc"

.field private static final MDM_FINGERPRINT_UNLOCK:Ljava/lang/String; = "fg_unlock"

.field private static final MSG_PANEL_STATUS:I = 0x1

.field private static final OEM_SMART_SCREEN_CAPTURE:Ljava/lang/String; = "oem_acc_sensor_three_finger"

.field private static mDoublePiontHome:Z

.field static mFingerPrintBehavior:I

.field static mKeyguardState:Z

.field private static mShotPiontHome:Z

.field public static sCurrentKeyLockMode:I

.field public static sEnableSoftwareKeys:Z

.field public static sFingerprintRecognized:Z

.field public static sForceHomeEnabled:Z

.field public static sKeysBehavior:I

.field public static sLockHomeUp:I


# instance fields
.field private HomeConsume:Z

.field private mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

.field private final mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyDoubleTapPending:Z

.field private mBackKeyPressed:Z

.field private mBackLongPress:Ljava/lang/Runnable;

.field private mDelay:Z

.field private mDelayHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;

.field private mDeviceKeyHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler;

.field private mDoubleTapOnBackBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field private mDoubleTapOnMenuBehavior:I

.field private mDownTime:J

.field private mEnableThreePointersScreenShot:Z

.field private mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

.field private mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeEvent:I

.field private mHomeKeyConsumed:Z

.field private mHomeKeyDoubleTapPending:Z

.field private mHomeKeyPressed:Z

.field mHomeRepateBeavhaver:Z

.field private mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

.field mLock:Ljava/lang/Object;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field private mLongPressOnMenuBehavior:I

.field private final mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mMenuKeyConsumed:Z

.field private mMenuKeyDoubleTapPending:Z

.field private mMenuKeyPressed:Z

.field mMenuRepateBeavhaver:Z

.field private mMenuUp:Z

.field private mOemSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemSettingsObserver;

.field mSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

.field mShotScreenHelper:Lcom/android/internal/policy/impl/OemShotScreenHelper;

.field private mT:Landroid/telephony/TelephonyManager;

.field private mThreePointersGestures:Lcom/android/internal/policy/impl/OemThreePointersGesturesListener;

.field preShowingLock:Z

.field telecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShotPiontHome:Z

    .line 110
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoublePiontHome:Z

    .line 112
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    .line 115
    sput v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sLockHomeUp:I

    .line 116
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sFingerprintRecognized:Z

    .line 138
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    .line 140
    sput v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerPrintBehavior:I

    .line 203
    sput v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    .line 204
    sput v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sKeysBehavior:I

    .line 205
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    .line 206
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sForceHomeEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 89
    new-instance v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 118
    new-instance v0, Lcom/android/internal/policy/impl/OemShotScreenHelper;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/OemShotScreenHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    .line 120
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDelay:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuRepateBeavhaver:Z

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeRepateBeavhaver:Z

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDownTime:J

    .line 145
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuUp:Z

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 214
    new-instance v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 224
    new-instance v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 234
    new-instance v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 244
    new-instance v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    .line 1044
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->HomeConsume:Z

    .line 1573
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preShowingLock:Z

    .line 1626
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/OemPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/FingerprintUnlock;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->checkFingerPrint()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mT:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuUp:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->toggleRecentApps()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->updateOxygenOemSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/OemPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performKeyAction(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    return v0
.end method

.method private cancelPreloadRecentApps()V
    .locals 4

    .prologue
    .line 1029
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 1031
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1032
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 1033
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when toggling recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private checkFingerPrint()V
    .locals 2

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preShowingLock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerPrintBehavior:I

    if-nez v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    const-string v0, "WindowManager"

    const-string v1, "checkFingerPrint  resume fingerprintUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resume(Z)V

    .line 1605
    :cond_0
    return-void
.end method

.method private getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1875
    const-string v0, "com.android.systemui"

    .line 1876
    .local v0, "SYSTEMUI_PACKAGE":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1877
    .local v2, "defaultHomePackage":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1878
    .local v1, "am":Landroid/app/IActivityManager;
    const/4 v7, 0x5

    const/4 v8, 0x2

    invoke-interface {v1, v7, v8, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v6

    .line 1881
    .local v6, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 1882
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1883
    .local v5, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    .line 1884
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1886
    :cond_0
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1887
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1889
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1893
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :goto_1
    return-object v7

    .line 1881
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1893
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDelayHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1048
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1049
    return-object v0
.end method

.method private interceptKeyBeforeDispatchingH2(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 12
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 625
    sget v9, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 626
    const-wide/16 v10, 0x0

    .line 654
    :goto_0
    return-wide v10

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->keyguardOn()Z

    move-result v4

    .line 630
    .local v4, "keyguardOn":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 631
    .local v3, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 632
    .local v7, "repeatCount":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 633
    .local v6, "metaState":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_3

    const/4 v2, 0x1

    .line 634
    .local v2, "down":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    .line 635
    .local v1, "canceled":Z
    const/16 v9, 0x52

    if-ne v3, v9, :cond_4

    const/4 v5, 0x1

    .line 636
    .local v5, "menuKeyCode":Z
    :goto_2
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 637
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    if-eqz v0, :cond_6

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 639
    .local v8, "type":I
    :goto_4
    sget-boolean v9, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 640
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interceptKeyTi keyCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " down="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " repeatCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " keyguardOn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mHomePressed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomePressed:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " canceled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " metaState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_1
    if-eqz v5, :cond_7

    .line 646
    const/16 v9, 0x7ed

    if-eq v8, v9, :cond_2

    const/16 v9, 0x7d9

    if-eq v8, v9, :cond_2

    if-eqz v0, :cond_7

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_7

    .line 650
    :cond_2
    const-wide/16 v10, -0x1

    goto/16 :goto_0

    .line 633
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "canceled":Z
    .end local v2    # "down":Z
    .end local v5    # "menuKeyCode":Z
    .end local v8    # "type":I
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 635
    .restart local v1    # "canceled":Z
    .restart local v2    # "down":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 636
    .restart local v5    # "menuKeyCode":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 637
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    .line 654
    .restart local v8    # "type":I
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v10

    goto/16 :goto_0
.end method

.method private interceptKeyBeforeDispatchingO2(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 30
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 658
    sget-boolean v26, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v26, :cond_0

    .line 659
    const-string v26, "WindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " ++++++++++ interceptKeyBeforeDispatching "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->interceptKeyO2(Landroid/content/Context;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p2

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    .line 667
    .local v9, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 668
    .local v13, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v17

    .line 669
    .local v17, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    .line 670
    .local v19, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v20

    .line 671
    .local v20, "source":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->keyguardOn()Z

    move-result v14

    .line 672
    .local v14, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_3

    const/4 v7, 0x1

    .line 673
    .local v7, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    const/16 v24, 0x1

    .line 674
    .local v24, "up":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 675
    .local v6, "canceled":Z
    and-int/lit16 v0, v9, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_5

    const/4 v15, 0x1

    .line 676
    .local v15, "longPress":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v26

    and-int/lit8 v26, v26, 0x40

    if-eqz v26, :cond_6

    const/4 v12, 0x1

    .line 677
    .local v12, "isFromNavbar":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    const/16 v25, 0x1

    .line 678
    .local v25, "virtualKey":Z
    :goto_4
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v13, v0, :cond_8

    const/4 v5, 0x1

    .line 679
    .local v5, "backKeyCode":Z
    :goto_5
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v13, v0, :cond_9

    const/4 v10, 0x1

    .line 680
    .local v10, "homeKeyCode":Z
    :goto_6
    const/16 v26, 0x52

    move/from16 v0, v26

    if-ne v13, v0, :cond_a

    const/16 v16, 0x1

    .line 681
    .local v16, "menuKeyCode":Z
    :goto_7
    const/16 v26, 0x1a

    move/from16 v0, v26

    if-ne v13, v0, :cond_b

    const/16 v18, 0x1

    .line 683
    .local v18, "powerKeyCode":Z
    :goto_8
    if-eqz p1, :cond_c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 684
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_9
    if-eqz v4, :cond_d

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    .line 686
    .local v22, "type":I
    :goto_a
    sget v26, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    packed-switch v26, :pswitch_data_0

    .line 707
    :cond_1
    if-eqz v5, :cond_2

    .line 708
    if-nez v7, :cond_10

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 721
    :cond_2
    :goto_b
    if-eqz v12, :cond_11

    .line 722
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v26

    .line 972
    :goto_c
    return-wide v26

    .line 672
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "backKeyCode":Z
    .end local v6    # "canceled":Z
    .end local v7    # "down":Z
    .end local v10    # "homeKeyCode":Z
    .end local v12    # "isFromNavbar":Z
    .end local v15    # "longPress":Z
    .end local v16    # "menuKeyCode":Z
    .end local v18    # "powerKeyCode":Z
    .end local v22    # "type":I
    .end local v24    # "up":Z
    .end local v25    # "virtualKey":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 673
    .restart local v7    # "down":Z
    :cond_4
    const/16 v24, 0x0

    goto :goto_1

    .line 675
    .restart local v6    # "canceled":Z
    .restart local v24    # "up":Z
    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    .line 676
    .restart local v15    # "longPress":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 677
    .restart local v12    # "isFromNavbar":Z
    :cond_7
    const/16 v25, 0x0

    goto :goto_4

    .line 678
    .restart local v25    # "virtualKey":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 679
    .restart local v5    # "backKeyCode":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_6

    .line 680
    .restart local v10    # "homeKeyCode":Z
    :cond_a
    const/16 v16, 0x0

    goto :goto_7

    .line 681
    .restart local v16    # "menuKeyCode":Z
    :cond_b
    const/16 v18, 0x0

    goto :goto_8

    .line 683
    .restart local v18    # "powerKeyCode":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_9

    .line 684
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const/16 v22, 0x0

    goto :goto_a

    .line 694
    .restart local v22    # "type":I
    :pswitch_0
    if-nez v12, :cond_f

    .line 695
    if-nez v10, :cond_e

    if-nez v5, :cond_e

    if-eqz v16, :cond_1

    .line 696
    :cond_e
    const-wide/16 v26, 0x0

    goto :goto_c

    .line 698
    :cond_f
    if-eqz v18, :cond_1

    .line 699
    const-wide/16 v26, 0x0

    goto :goto_c

    .line 710
    :cond_10
    if-eqz v7, :cond_2

    if-nez v19, :cond_2

    .line 712
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockTaskEndDelay:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 715
    :catch_0
    move-exception v8

    .line 716
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b

    .line 725
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_11
    if-eqz v10, :cond_23

    .line 726
    if-eqz v4, :cond_15

    .line 727
    const/16 v26, 0x7ed

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    const/16 v26, 0x7d9

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 730
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->hideVolumePanel()V

    .line 732
    const-wide/16 v26, 0x0

    goto :goto_c

    .line 734
    :cond_13
    sget-object v26, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v23, v0

    .line 735
    .local v23, "typeCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_d
    move/from16 v0, v23

    if-ge v11, v0, :cond_15

    .line 736
    sget-object v26, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v26, v26, v11

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->hideVolumePanel()V

    .line 739
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 735
    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 744
    .end local v11    # "i":I
    .end local v23    # "typeCount":I
    :cond_15
    if-eqz v7, :cond_1b

    .line 745
    if-nez v19, :cond_19

    .line 746
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 750
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 753
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    move/from16 v26, v0

    if-eqz v26, :cond_17

    .line 754
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 756
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 757
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performKeyAction(I)V

    .line 815
    :cond_16
    :goto_e
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 758
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 760
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_e

    .line 762
    :cond_19
    if-eqz v15, :cond_16

    .line 763
    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v26, v0

    if-nez v26, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v26, v0

    if-eqz v26, :cond_16

    .line 765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1a

    .line 766
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 768
    :cond_1a
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 769
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 770
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 771
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performKeyAction(I)V

    goto :goto_e

    .line 775
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 779
    :cond_1c
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 780
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1d

    .line 781
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 782
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 785
    :cond_1d
    if-eqz v6, :cond_1f

    .line 786
    sget-boolean v26, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v26, :cond_1e

    .line 787
    const-string v26, "WindowManager"

    const-string v27, "Ignoring HOME; event canceled."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_1e
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 795
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v21

    .line 796
    .local v21, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v21, :cond_21

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v26

    if-eqz v26, :cond_21

    .line 797
    sget-boolean v26, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v26, :cond_20

    .line 798
    const-string v26, "WindowManager"

    const-string v27, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_20
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 804
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v26, v0

    if-eqz v26, :cond_22

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 806
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 809
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 812
    :cond_22
    const/16 v26, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performKeyAction(I)V

    .line 813
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 816
    .end local v21    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_23
    if-eqz v16, :cond_33

    .line 817
    const/16 v26, 0x7ed

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_24

    const/16 v26, 0x7d9

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_24

    if-eqz v4, :cond_25

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    if-eqz v26, :cond_25

    .line 820
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->hideVolumePanel()V

    .line 822
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 825
    :cond_25
    if-eqz v25, :cond_27

    .line 826
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_26

    .line 827
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 829
    :cond_26
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 831
    const-wide/16 v26, 0x0

    goto/16 :goto_c

    .line 836
    :cond_27
    if-eqz v7, :cond_2d

    .line 837
    if-nez v19, :cond_2b

    .line 838
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyPressed:Z

    .line 839
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 840
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    move/from16 v26, v0

    if-eqz v26, :cond_29

    .line 841
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 843
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 844
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performKeyAction(I)V

    .line 891
    :cond_28
    :goto_f
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 845
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_28

    .line 847
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_f

    .line 849
    :cond_2b
    if-eqz v15, :cond_28

    .line 850
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v26, v0

    if-nez v26, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v26, v0

    if-eqz v26, :cond_28

    .line 852
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2c

    .line 853
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 855
    :cond_2c
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyPressed:Z

    .line 856
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 857
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 858
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performKeyAction(I)V

    goto :goto_f

    .line 862
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2e

    .line 863
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 866
    :cond_2e
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyPressed:Z

    .line 867
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2f

    .line 868
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 869
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 872
    :cond_2f
    if-eqz v6, :cond_31

    .line 873
    sget-boolean v26, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v26, :cond_30

    .line 874
    const-string v26, "WindowManager"

    const-string v27, "Ignoring MENU; event canceled."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_30
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 880
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v26, v0

    if-eqz v26, :cond_32

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 882
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 885
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 888
    :cond_32
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performKeyAction(I)V

    .line 889
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 892
    :cond_33
    if-eqz v5, :cond_44

    .line 893
    const/16 v26, 0x7ed

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_34

    const/16 v26, 0x7d9

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_34

    if-eqz v4, :cond_36

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    if-eqz v26, :cond_36

    .line 896
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->hideVolumePanel()V

    .line 898
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_35

    .line 899
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 902
    :cond_35
    const-wide/16 v26, 0x0

    goto/16 :goto_c

    .line 906
    :cond_36
    if-eqz v25, :cond_38

    .line 907
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_37

    .line 908
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 911
    :cond_37
    const-wide/16 v26, 0x0

    goto/16 :goto_c

    .line 915
    :cond_38
    if-eqz v7, :cond_3e

    .line 916
    if-nez v19, :cond_3c

    .line 917
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 918
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3a

    .line 919
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 921
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 922
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performKeyAction(I)V

    .line 969
    :cond_39
    :goto_10
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 923
    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_39

    .line 925
    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_10

    .line 927
    :cond_3c
    if-eqz v15, :cond_39

    .line 928
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v26, v0

    if-nez v26, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v26, v0

    if-eqz v26, :cond_39

    .line 930
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3d

    .line 931
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 933
    :cond_3d
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 934
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 935
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 936
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performKeyAction(I)V

    goto :goto_10

    .line 940
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3f

    .line 941
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 944
    :cond_3f
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 945
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_40

    .line 946
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 947
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 950
    :cond_40
    if-eqz v6, :cond_42

    .line 951
    sget-boolean v26, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v26, :cond_41

    .line 952
    const-string v26, "WindowManager"

    const-string v27, "Ignoring BACK; event canceled."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_41
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 958
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v26, v0

    if-eqz v26, :cond_43

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 960
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 963
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 966
    :cond_43
    const/16 v26, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performKeyAction(I)V

    .line 967
    const-wide/16 v26, -0x1

    goto/16 :goto_c

    .line 972
    :cond_44
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v26

    goto/16 :goto_c

    .line 686
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private interceptKeyBeforeQueueingH2(Landroid/view/KeyEvent;I)I
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 346
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 347
    const/4 v8, 0x1

    .line 490
    :goto_0
    return v8

    .line 350
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 351
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/4 v7, 0x1

    .line 352
    .local v7, "up":Z
    :goto_1
    const/high16 v8, 0x20000000

    and-int/2addr v8, p2

    if-eqz v8, :cond_4

    const/4 v2, 0x1

    .line 353
    .local v2, "interactive":Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v6

    .line 354
    .local v6, "source":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 355
    .local v5, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    const/4 v0, 0x1

    .line 357
    .local v0, "down":Z
    :goto_3
    sget-boolean v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 358
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interceptKeyTq keycode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " interactive="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " down ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " source="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " repeatCount ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    const/4 v8, 0x3

    if-ne v3, v8, :cond_6

    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sLockHomeUp:I

    if-eqz v8, :cond_6

    .line 366
    if-eqz v7, :cond_2

    .line 367
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sLockHomeUp:I

    add-int/lit8 v8, v8, -0x1

    sput v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sLockHomeUp:I

    .line 369
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 351
    .end local v0    # "down":Z
    .end local v2    # "interactive":Z
    .end local v5    # "repeatCount":I
    .end local v6    # "source":I
    .end local v7    # "up":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 352
    .restart local v7    # "up":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 355
    .restart local v2    # "interactive":Z
    .restart local v5    # "repeatCount":I
    .restart local v6    # "source":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 371
    .restart local v0    # "down":Z
    :cond_6
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_8

    .line 373
    const/4 v8, 0x4

    if-eq v3, v8, :cond_7

    const/4 v8, 0x3

    if-eq v3, v8, :cond_7

    const/16 v8, 0x52

    if-ne v3, v8, :cond_8

    .line 375
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 378
    :cond_8
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    .line 379
    const/4 v8, 0x3

    if-ne v3, v8, :cond_9

    .line 380
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 383
    :cond_9
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    const/16 v9, 0x8

    if-le v8, v9, :cond_c

    .line 384
    const/16 v8, 0x52

    if-ne v3, v8, :cond_a

    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 385
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 387
    :cond_a
    const/4 v8, 0x3

    if-ne v3, v8, :cond_b

    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    shr-int/lit8 v8, v8, 0x1

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 388
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 390
    :cond_b
    const/4 v8, 0x4

    if-ne v3, v8, :cond_c

    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    shr-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 391
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 395
    :cond_c
    and-int/lit8 p2, p2, -0x3

    .line 396
    if-eqz v2, :cond_e

    const/4 v8, 0x4

    if-eq v3, v8, :cond_d

    const/4 v8, 0x3

    if-eq v3, v8, :cond_d

    const/16 v8, 0x52

    if-ne v3, v8, :cond_e

    :cond_d
    if-nez v7, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_e

    const/16 v8, 0x101

    if-ne v6, v8, :cond_e

    .line 400
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 403
    :cond_e
    const/16 v8, 0x52

    if-eq v3, v8, :cond_f

    const/4 v8, 0x4

    if-ne v3, v8, :cond_11

    .line 404
    :cond_f
    if-eqz v2, :cond_10

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-eqz v8, :cond_10

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-nez v8, :cond_11

    .line 405
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 409
    :cond_11
    const/4 v8, 0x3

    if-eq v3, v8, :cond_12

    const/4 v8, 0x4

    if-ne v3, v8, :cond_17

    :cond_12
    const/16 v8, 0x101

    if-ne v6, v8, :cond_17

    .line 411
    if-eqz v7, :cond_14

    .line 412
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 413
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDelayHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;

    invoke-virtual {v8, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 414
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDelayHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;

    invoke-virtual {v8, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;->removeMessages(I)V

    .line 415
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;

    move-result-object v4

    .line 416
    .local v4, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDelayHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 421
    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 418
    .end local v4    # "msg":Landroid/os/Message;
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;

    move-result-object v4

    .line 419
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDelayHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;

    const-wide/16 v10, 0x3c

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 423
    .end local v4    # "msg":Landroid/os/Message;
    :cond_14
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 427
    const/4 v8, 0x4

    if-ne v3, v8, :cond_15

    .line 428
    if-nez v0, :cond_16

    .line 429
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    :cond_15
    :goto_5
    const/4 v8, 0x4

    if-ne v3, v8, :cond_17

    .line 442
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 443
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 430
    :cond_16
    if-eqz v0, :cond_15

    if-nez v5, :cond_15

    .line 432
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 433
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 435
    :catch_0
    move-exception v1

    .line 436
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 447
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_17
    const/16 v8, 0x52

    if-ne v3, v8, :cond_1b

    const/16 v8, 0x101

    if-ne v6, v8, :cond_1b

    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 450
    if-eqz v7, :cond_1a

    .line 451
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuRepateBeavhaver:Z

    if-eqz v8, :cond_18

    .line 452
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 454
    :cond_18
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuUp:Z

    .line 455
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 456
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 459
    :cond_19
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 460
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 461
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v10, 0x3c

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 462
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 464
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1a
    if-nez v7, :cond_1b

    .line 465
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preloadRecentApps()V

    .line 466
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 467
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuRepateBeavhaver:Z

    .line 468
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuUp:Z

    .line 469
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 470
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 471
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 472
    .restart local v4    # "msg":Landroid/os/Message;
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 473
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 474
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v10, 0x190

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 475
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 480
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1b
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 482
    if-nez v2, :cond_1c

    const/16 v8, 0x86

    if-ne v3, v8, :cond_1c

    .line 483
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    if-eqz v8, :cond_1c

    .line 484
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    invoke-virtual {v8, p1}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 485
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 490
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v8

    goto/16 :goto_0
.end method

.method private interceptKeyBeforeQueueingO2(Landroid/view/KeyEvent;I)I
    .locals 24
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 494
    sget-boolean v21, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v21, :cond_0

    .line 495
    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " ++++++++++ interceptKeyBeforeQueueing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->interceptKeyO2(Landroid/content/Context;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    .line 502
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 503
    .local v7, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 504
    .local v12, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v18

    .line 505
    .local v18, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v17

    .line 506
    .local v17, "repeatCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->keyguardOn()Z

    move-result v13

    .line 507
    .local v13, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_3

    const/4 v6, 0x1

    .line 508
    .local v6, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    .line 509
    .local v19, "up":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 510
    .local v5, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    and-int/lit8 v21, v21, 0x40

    if-eqz v21, :cond_5

    const/4 v11, 0x1

    .line 511
    .local v11, "isFromNavbar":Z
    :goto_2
    const/high16 v21, 0x20000000

    and-int v21, v21, p2

    if-eqz v21, :cond_6

    const/4 v10, 0x1

    .line 512
    .local v10, "interactive":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v20, 0x1

    .line 513
    .local v20, "virtualKey":Z
    :goto_4
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v12, v0, :cond_8

    const/4 v4, 0x1

    .line 514
    .local v4, "backKeyCode":Z
    :goto_5
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v12, v0, :cond_9

    const/4 v9, 0x1

    .line 515
    .local v9, "homeKeyCode":Z
    :goto_6
    const/16 v21, 0x52

    move/from16 v0, v21

    if-ne v12, v0, :cond_a

    const/4 v14, 0x1

    .line 516
    .local v14, "menuKeyCode":Z
    :goto_7
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v12, v0, :cond_b

    const/16 v16, 0x1

    .line 517
    .local v16, "powerKeyCode":Z
    :goto_8
    const/16 v21, 0x86

    move/from16 v0, v21

    if-ne v12, v0, :cond_c

    const/4 v8, 0x1

    .line 518
    .local v8, "gestureKeyCode":Z
    :goto_9
    const/16 v21, -0x6

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v15, 0x1

    .line 520
    .local v15, "oemSource":Z
    :goto_a
    sget v21, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    packed-switch v21, :pswitch_data_0

    .line 550
    :cond_1
    :pswitch_0
    if-nez v11, :cond_13

    if-nez v6, :cond_13

    .line 551
    sget-boolean v21, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v21, :cond_2

    .line 552
    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " ++++++++++ interceptKeyBeforeQueueing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " , mBackKeyConsumed: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_2
    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 556
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 558
    const/16 v21, 0x0

    .line 608
    :goto_b
    return v21

    .line 507
    .end local v4    # "backKeyCode":Z
    .end local v5    # "canceled":Z
    .end local v6    # "down":Z
    .end local v8    # "gestureKeyCode":Z
    .end local v9    # "homeKeyCode":Z
    .end local v10    # "interactive":Z
    .end local v11    # "isFromNavbar":Z
    .end local v14    # "menuKeyCode":Z
    .end local v15    # "oemSource":Z
    .end local v16    # "powerKeyCode":Z
    .end local v19    # "up":Z
    .end local v20    # "virtualKey":Z
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 508
    .restart local v6    # "down":Z
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 510
    .restart local v5    # "canceled":Z
    .restart local v19    # "up":Z
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 511
    .restart local v11    # "isFromNavbar":Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 512
    .restart local v10    # "interactive":Z
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 513
    .restart local v20    # "virtualKey":Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 514
    .restart local v4    # "backKeyCode":Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 515
    .restart local v9    # "homeKeyCode":Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 516
    .restart local v14    # "menuKeyCode":Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_8

    .line 517
    .restart local v16    # "powerKeyCode":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_9

    .line 518
    .restart local v8    # "gestureKeyCode":Z
    :cond_d
    const/4 v15, 0x0

    goto :goto_a

    .line 525
    .restart local v15    # "oemSource":Z
    :pswitch_1
    if-eqz v16, :cond_1

    .line 526
    const/16 v21, 0x1

    goto :goto_b

    .line 530
    :pswitch_2
    if-nez v11, :cond_1

    if-eqz v9, :cond_1

    .line 531
    const/16 v21, 0x0

    goto :goto_b

    .line 535
    :pswitch_3
    if-nez v11, :cond_1

    if-nez v4, :cond_e

    if-nez v9, :cond_e

    if-eqz v14, :cond_1

    .line 536
    :cond_e
    const/16 v21, 0x0

    goto :goto_b

    .line 540
    :pswitch_4
    if-nez v11, :cond_1

    if-nez v4, :cond_10

    if-eqz v14, :cond_f

    if-eqz v15, :cond_10

    :cond_f
    sget-boolean v21, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sForceHomeEnabled:Z

    if-nez v21, :cond_1

    if-eqz v9, :cond_1

    .line 542
    :cond_10
    const/16 v21, 0x0

    goto :goto_b

    .line 560
    :cond_11
    sget-boolean v21, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v21, :cond_12

    .line 561
    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " ++++++++++ interceptKeyBeforeQueueing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " , mMenuKeyConsumed: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_12
    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 565
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 567
    const/16 v21, 0x0

    goto/16 :goto_b

    .line 571
    :cond_13
    if-nez v11, :cond_14

    .line 572
    and-int/lit8 p2, p2, -0x3

    .line 575
    :cond_14
    if-eqz v10, :cond_17

    .line 576
    if-nez v11, :cond_16

    if-nez v4, :cond_15

    if-nez v9, :cond_15

    if-eqz v14, :cond_16

    :cond_15
    if-nez v19, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_16

    if-nez v15, :cond_16

    .line 578
    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 603
    :cond_16
    if-nez v11, :cond_1a

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardOccluded:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->hideVolumePanel()V

    .line 605
    const/16 v21, 0x0

    goto/16 :goto_b

    .line 592
    :cond_17
    if-eqz v8, :cond_18

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_16

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 595
    const/16 v21, 0x0

    goto/16 :goto_b

    .line 598
    :cond_18
    if-nez v11, :cond_16

    if-nez v9, :cond_19

    if-nez v14, :cond_19

    if-eqz v4, :cond_16

    .line 599
    :cond_19
    const/16 v21, 0x0

    goto/16 :goto_b

    .line 608
    :cond_1a
    invoke-super/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v21

    goto/16 :goto_b

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static interceptKeyO2(Landroid/content/Context;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1999
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.virtual.hw.key"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2002
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 2005
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x41

    invoke-static {p1, v0}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    .line 2009
    :cond_0
    return-object p1
.end method

.method private launchCameraAction()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1835
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sendCloseSystemWindows()V

    .line 1836
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.KEYGUARD_CAMERA_TRANSITION"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1837
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1839
    return-void
.end method

.method private launchQuickAccessPage()V
    .locals 2

    .prologue
    .line 1912
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1913
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1914
    return-void
.end method

.method private performKeyAction(I)V
    .locals 4
    .param p1, "behavior"    # I

    .prologue
    const/4 v2, 0x4

    .line 1917
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 1918
    .local v0, "keyguardOn":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    .line 1921
    .local v1, "userSetupComplete":Z
    if-nez v1, :cond_0

    .line 1922
    packed-switch p1, :pswitch_data_0

    .line 1972
    :goto_0
    return-void

    .line 1924
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1932
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 1971
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->hideVolumePanel()V

    goto :goto_0

    .line 1934
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_1

    .line 1937
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->handleShortPressOnHome()V

    goto :goto_1

    .line 1940
    :pswitch_4
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_1

    .line 1943
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->toggleRecentApps()V

    goto :goto_1

    .line 1946
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->launchAssistAction()V

    goto :goto_1

    .line 1949
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->putDeviceToSleep()V

    goto :goto_1

    .line 1952
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->launchCameraAction()V

    goto :goto_1

    .line 1955
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_1

    .line 1958
    :pswitch_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->switchToLastApp(Landroid/content/Context;I)Z

    goto :goto_1

    .line 1961
    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->launchQuickAccessPage()V

    goto :goto_1

    .line 1922
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch

    .line 1932
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .locals 4

    .prologue
    .line 1015
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 1017
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1018
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 1019
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1024
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private putDeviceToSleep()V
    .locals 4

    .prologue
    .line 1905
    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1906
    const-string v0, "WindowManager"

    const-string v1, " ++++++++++ putDeviceToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1909
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 1742
    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1745
    .local v6, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x30b0000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1751
    .local v4, "defaultLongPressOnHomeBehavior":I
    :goto_0
    const-string v7, "key_home_long_press_action"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1754
    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v7, :cond_0

    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v7, v10, :cond_1

    .line 1756
    :cond_0
    iput v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1760
    :cond_1
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x30b0001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1766
    .local v1, "defaultDoubleTapOnHomeBehavior":I
    :goto_1
    const-string v7, "key_home_double_tap_action"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1769
    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v7, v10, :cond_3

    .line 1771
    :cond_2
    iput v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1775
    :cond_3
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x30b0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1781
    .local v5, "defaultLongPressOnMenuBehavior":I
    :goto_2
    const-string v7, "key_menu_long_press_action"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1784
    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-ltz v7, :cond_4

    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-le v7, v10, :cond_5

    .line 1786
    :cond_4
    iput v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1790
    :cond_5
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x30b0003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1796
    .local v2, "defaultDoubleTapOnMenuBehavior":I
    :goto_3
    const-string v7, "key_menu_double_tap_action"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1799
    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-ltz v7, :cond_6

    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-le v7, v10, :cond_7

    .line 1801
    :cond_6
    iput v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1805
    :cond_7
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x30b0004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1811
    .local v3, "defaultLongPressOnBackBehavior":I
    :goto_4
    const-string v7, "key_back_long_press_action"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1814
    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-ltz v7, :cond_8

    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-le v7, v10, :cond_9

    .line 1816
    :cond_8
    iput v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1820
    :cond_9
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x30b0005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1825
    .local v0, "defaultDoubleTapOnBackBehavior":I
    :goto_5
    const-string v7, "key_back_double_tap_action"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1828
    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-ltz v7, :cond_a

    iget v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-le v7, v10, :cond_b

    .line 1830
    :cond_a
    iput v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1832
    :cond_b
    return-void

    .line 1745
    .end local v0    # "defaultDoubleTapOnBackBehavior":I
    .end local v1    # "defaultDoubleTapOnHomeBehavior":I
    .end local v2    # "defaultDoubleTapOnMenuBehavior":I
    .end local v3    # "defaultLongPressOnBackBehavior":I
    .end local v4    # "defaultLongPressOnHomeBehavior":I
    .end local v5    # "defaultLongPressOnMenuBehavior":I
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x4080000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto/16 :goto_0

    .line 1760
    .restart local v4    # "defaultLongPressOnHomeBehavior":I
    :cond_d
    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4080001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto/16 :goto_1

    .line 1775
    .restart local v1    # "defaultDoubleTapOnHomeBehavior":I
    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4080002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    goto/16 :goto_2

    .line 1790
    .restart local v5    # "defaultLongPressOnMenuBehavior":I
    :cond_f
    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4080003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto/16 :goto_3

    .line 1805
    .restart local v2    # "defaultDoubleTapOnMenuBehavior":I
    :cond_10
    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4080004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    goto :goto_4

    .line 1820
    .restart local v3    # "defaultLongPressOnBackBehavior":I
    :cond_11
    iget-object v7, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4080005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_5
.end method

.method private resetKeysInterceptors()V
    .locals 1

    .prologue
    .line 1731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuKeyPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyConsumed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackKeyPressed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1732
    return-void
.end method

.method private resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 1897
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1899
    .local v1, "launcherIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1900
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1901
    .local v0, "launcherInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method public static setKeyBehaviorMode(I)V
    .locals 1
    .param p0, "behavior"    # I

    .prologue
    .line 1982
    sget v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sKeysBehavior:I

    if-eq p0, v0, :cond_0

    .line 1983
    sput p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sKeysBehavior:I

    .line 1985
    :cond_0
    return-void
.end method

.method public static setKeyLockMode(I)V
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 1988
    sget v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    if-eq p0, v0, :cond_0

    .line 1989
    sput p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    .line 1991
    :cond_0
    return-void
.end method

.method private switchToLastApp(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 1843
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->switchToLastAppInternal(Landroid/content/Context;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1847
    :goto_0
    return v1

    .line 1844
    :catch_0
    move-exception v0

    .line 1845
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Could not switch to last app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchToLastAppInternal(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1852
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 1854
    .local v1, "lastTask":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v3, :cond_1

    .line 1855
    :cond_0
    const/4 v3, 0x0

    .line 1870
    :goto_0
    return v3

    .line 1858
    :cond_1
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1859
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1861
    .local v0, "am":Landroid/app/IActivityManager;
    sget-boolean v3, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1862
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switching to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_2
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1870
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private togglePanel()V
    .locals 4

    .prologue
    .line 977
    :try_start_0
    const-string v2, "WindowManager"

    const-string v3, "togglePanel"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 979
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 980
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when toggling Panel"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private toggleRecentApps()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 989
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 990
    const/4 v1, 0x0

    .line 991
    .local v1, "isCall":Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.dialer/com.android.incallui.InCallActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.incallui/com.android.incallui.InCallActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 994
    :goto_0
    if-eqz v1, :cond_3

    .line 1012
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 991
    goto :goto_0

    .line 999
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 1000
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_1

    .line 1001
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V

    .line 1004
    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1007
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException when toggling recent apps"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1010
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method private triggerVirtualKeypress(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 1235
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 1236
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1238
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, -0x6

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1241
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 1243
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1244
    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1245
    return-void
.end method

.method private updateOxygenOemSettings()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1677
    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1684
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "oem_acc_key_define"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sKeysBehavior:I

    .line 1687
    const-string v3, "oem_acc_key_lock_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    .line 1690
    const-string v3, "buttons_force_home_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sForceHomeEnabled:Z

    .line 1700
    sget v3, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sKeysBehavior:I

    if-nez v3, :cond_2

    .line 1702
    :try_start_0
    const-string v3, "proc/s1302/key_rep"

    const-string v6, "1"

    invoke-static {v3, v6}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1715
    :goto_1
    const-string v3, "buttons_show_on_screen_navkeys"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v4

    .line 1717
    .local v1, "enableSoftwareKeys":Z
    :goto_2
    sget-boolean v3, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    if-eq v1, v3, :cond_0

    .line 1718
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    .line 1719
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->resetKeysInterceptors()V

    .line 1727
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 1728
    return-void

    .end local v1    # "enableSoftwareKeys":Z
    :cond_1
    move v3, v5

    .line 1690
    goto :goto_0

    .line 1703
    :catch_0
    move-exception v0

    .line 1704
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1709
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    const-string v3, "proc/s1302/key_rep"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1710
    :catch_1
    move-exception v0

    .line 1711
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    move v1, v5

    .line 1715
    goto :goto_2
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "arg1"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attach"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1578
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preShowingLock:Z

    .line 1579
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1580
    return-void
.end method

.method public finishLayoutLw()V
    .locals 4

    .prologue
    const/4 v2, 0x6

    .line 1585
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishLayoutLw()V

    .line 1587
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preShowingLock:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerPrintBehavior:I

    if-nez v1, :cond_0

    .line 1588
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 1589
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1590
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1591
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1593
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public forceReloadOemSettings()V
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mOemSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemSettingsObserver;

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mOemSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemSettingsObserver;->observe()V

    .line 1979
    :cond_0
    return-void
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public goingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 1527
    const-string v0, "WindowManager"

    const-string v1, "goingToSleep  ondestory fingerprintUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goingToSleep(I)V

    .line 1530
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resume(Z)V

    .line 1535
    :cond_0
    return-void
.end method

.method public handleDoubleTapOnHome()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1381
    const-string v0, "WindowManager"

    const-string v1, "handleDoubleTapOnHome"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeConsumed:Z

    .line 1383
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->togglePanel()V

    .line 1386
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1387
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    .local v0, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v2, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    new-instance v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    .line 262
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/policy/impl/OemShotScreenHelper;->init(Landroid/os/Handler;Landroid/content/Context;)V

    .line 265
    new-instance v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

    .line 266
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;->observe()V

    .line 268
    new-instance v2, Lcom/android/internal/policy/impl/FingerprintUnlock;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/android/internal/policy/impl/FingerprintUnlock;-><init>(Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;ILandroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    .line 269
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mT:Landroid/telephony/TelephonyManager;

    .line 271
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 273
    new-instance v2, Lcom/android/internal/policy/impl/OemThreePointersGesturesListener;

    new-instance v3, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    invoke-direct {v2, p1, v3}, Lcom/android/internal/policy/impl/OemThreePointersGesturesListener;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/OemThreePointersGesturesListener$Callbacks;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/internal/policy/impl/OemThreePointersGesturesListener;

    .line 314
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/internal/policy/impl/OemThreePointersGesturesListener;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 315
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "delayInputThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, "mDelayThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 317
    new-instance v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDelayHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;

    .line 326
    .end local v1    # "mDelayThread":Landroid/os/HandlerThread;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    if-nez v2, :cond_0

    .line 327
    new-instance v2, Lcom/android/internal/policy/impl/DeviceKeyHandler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/DeviceKeyHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    .line 328
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->systemReady()V

    .line 331
    :cond_0
    return-void

    .line 319
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 320
    new-instance v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemSettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemSettingsObserver;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mOemSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemSettingsObserver;

    .line 321
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mOemSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemSettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemSettingsObserver;->observe()V

    .line 323
    new-instance v2, Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    goto :goto_0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 614
    const-wide/16 v0, 0x0

    .line 615
    .local v0, "ret":J
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->interceptKeyBeforeDispatchingH2(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    .line 620
    :goto_0
    return-wide v0

    .line 618
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->interceptKeyBeforeDispatchingO2(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "ret":I
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->interceptKeyBeforeQueueingH2(Landroid/view/KeyEvent;I)I

    move-result v0

    .line 342
    :goto_0
    return v0

    .line 340
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->interceptKeyBeforeQueueingO2(Landroid/view/KeyEvent;I)I

    move-result v0

    goto :goto_0
.end method

.method public keepScreenOn(I)V
    .locals 0
    .param p1, "millis"    # I

    .prologue
    .line 1393
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 1372
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 1373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LID_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "lidOpen"

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1375
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1377
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1378
    return-void

    .line 1374
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onIdentified(IZI)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "updated"    # Z
    .param p3, "mFingerPrintBehavior"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1399
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onIdentified  success + mScreenOnFully "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mKeyguard "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAwake "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1402
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 1404
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v1

    .line 1405
    .local v1, "mNotOcculed":Z
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHideLockScreen:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v4, v5, :cond_5

    move v0, v2

    .line 1406
    .local v0, "mHideLock":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-nez v4, :cond_7

    .line 1408
    :cond_1
    sget-boolean v4, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 1409
    invoke-virtual {p0, v8, v3, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1410
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 1411
    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v3, :cond_2

    .line 1412
    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 1414
    :cond_2
    sput v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sLockHomeUp:I

    .line 1422
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    new-instance v3, Lcom/android/internal/policy/impl/OemPhoneWindowManager$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1461
    :cond_4
    :goto_2
    return-void

    .end local v0    # "mHideLock":Z
    :cond_5
    move v0, v3

    .line 1405
    goto :goto_0

    .line 1416
    .restart local v0    # "mHideLock":Z
    :cond_6
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Need startFpIdentify because of  isShowingAndNotOccluded ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v2, :cond_3

    .line 1419
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRestartFpId()V

    goto :goto_1

    .line 1430
    :cond_7
    sget-boolean v4, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v4, :cond_d

    if-nez v1, :cond_8

    if-eqz v0, :cond_d

    .line 1431
    :cond_8
    invoke-virtual {p0, v8, v3, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1432
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 1433
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mScreenOnFully "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAwake "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    sput v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sLockHomeUp:I

    .line 1436
    if-eqz v0, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-eqz v2, :cond_b

    .line 1437
    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v2, :cond_b

    .line 1438
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 1441
    :cond_b
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-nez v2, :cond_4

    .line 1445
    :cond_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_2

    .line 1450
    :cond_d
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1451
    const-string v2, "WindowManager"

    const-string v3, " onIdentified need startFpIdentify "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v2, :cond_4

    .line 1456
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRestartFpId()V

    goto/16 :goto_2

    .line 1453
    :cond_e
    const-string v2, "WindowManager"

    const-string v3, " onIdentified success do nothing "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onNomatch(IIIII)V
    .locals 7
    .param p1, "attempts"    # I
    .param p2, "mFingerPrintBehavior"    # I
    .param p3, "result"    # I
    .param p4, "id"    # I
    .param p5, "userdata"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1467
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1471
    const/4 p2, 0x0

    .line 1472
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onNomatch attempts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isKeyguardOn ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenOnFully "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAwake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    if-gt p1, v5, :cond_5

    .line 1476
    const/16 v0, 0x32

    if-lt p4, v0, :cond_1

    .line 1477
    invoke-virtual {p0, v6, v4, v4}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1479
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1482
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v0, :cond_2

    .line 1483
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1484
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x3040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->showNoMatchView(Ljava/lang/String;)V

    .line 1494
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 1495
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1510
    :cond_3
    :goto_1
    return-void

    .line 1490
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x4090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->showNoMatchView(Ljava/lang/String;)V

    goto :goto_0

    .line 1498
    :cond_5
    const/16 v0, 0x23

    if-ge p4, v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_3

    .line 1499
    :cond_6
    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1500
    invoke-virtual {p0, v6, v4, v4}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1501
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-nez v0, :cond_8

    .line 1502
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1504
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v0, :cond_9

    .line 1505
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->identifyPause()V

    .line 1507
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public onStatus(II)V
    .locals 2
    .param p1, "mStatus"    # I
    .param p2, "userData"    # I

    .prologue
    .line 1610
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessage(I)Z

    .line 1624
    :cond_0
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 3
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 1559
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1560
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenTurningOn  resume mScreenOnFully = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isInteractive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    const-string v0, "WindowManager"

    const-string v1, "screenTurningOn  resume fingerprintUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resume(Z)V

    .line 1571
    :cond_0
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 1515
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    .line 1517
    const-string v0, "WindowManager"

    const-string v1, "startKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 1522
    :cond_0
    return-void
.end method

.method public updateOemSettings()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1320
    iget-object v5, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1321
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1322
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v6, "oem_acc_key_define"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v2, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1326
    .local v1, "mMenubehavior":I
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateOemSettings mMenubehavior="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    if-ne v1, v3, :cond_0

    .line 1329
    :try_start_1
    const-string v6, "proc/s1302/key_rep"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1344
    :goto_0
    :try_start_2
    const-string v6, "oem_acc_sensor_three_finger"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v2, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v3, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    .line 1347
    monitor-exit v5

    .line 1348
    return-void

    .line 1330
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1347
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "mMenubehavior":I
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1337
    .restart local v1    # "mMenubehavior":I
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :try_start_3
    const-string v6, "proc/s1302/key_rep"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1338
    :catch_1
    move-exception v0

    .line 1340
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    move v3, v4

    .line 1344
    goto :goto_1
.end method

.method public wakingUp()V
    .locals 2

    .prologue
    .line 1540
    const-string v0, "WindowManager"

    const-string v1, "wakingUp  resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerPrintBehavior:I

    if-nez v0, :cond_1

    .line 1550
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->wakingUp()V

    .line 1553
    :cond_1
    return-void
.end method
