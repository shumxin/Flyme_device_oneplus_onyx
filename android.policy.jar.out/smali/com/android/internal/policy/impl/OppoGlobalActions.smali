.class Lcom/android/internal/policy/impl/OppoGlobalActions;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeToggleAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$Action;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final OPPO_THREE_KEY_SUPPORT:Ljava/lang/String; = "oppo.threekey.support"

.field private static final ROTATION_180:F = 180.0f

.field private static final ROTATION_270:F = 90.0f

.field private static final ROTATION_90:F = 270.0f

.field private static final SCALETIMES:I = 0x4

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoGlobalActions"

.field static isPRStatus:Z = false

.field private static final mDefaultBackground:I = -0x34000000


# instance fields
.field private mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mHideFourKey:Z

.field private mInnovativeV2HAction:Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

.field private mIsReceiverRegisted:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/OppoGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnTouchListenerRemove:Landroid/view/View$OnTouchListener;

.field private mOppoAirplaneState:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousOrientation:I

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

.field private mSystemUiVisibility:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z

    .line 125
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDeviceProvisioned:Z

    .line 126
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z

    .line 133
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    .line 137
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsReceiverRegisted:Z

    .line 141
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    .line 149
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasNavigationBar:Z

    .line 150
    iput v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mPreviousOrientation:I

    .line 154
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHideFourKey:Z

    .line 403
    new-instance v5, Lcom/android/internal/policy/impl/OppoGlobalActions$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOnTouchListenerRemove:Landroid/view/View$OnTouchListener;

    .line 414
    new-instance v5, Lcom/android/internal/policy/impl/OppoGlobalActions$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 916
    new-instance v5, Lcom/android/internal/policy/impl/OppoGlobalActions$6;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 938
    new-instance v5, Lcom/android/internal/policy/impl/OppoGlobalActions$7;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$7;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 951
    new-instance v5, Lcom/android/internal/policy/impl/OppoGlobalActions$8;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$8;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 961
    new-instance v5, Lcom/android/internal/policy/impl/OppoGlobalActions$9;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/OppoGlobalActions$9;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 973
    new-instance v5, Lcom/android/internal/policy/impl/OppoGlobalActions$10;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$10;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    .line 159
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 161
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 164
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 173
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 175
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z

    .line 176
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 177
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "airplane_mode_on"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mVibrator:Landroid/os/Vibrator;

    .line 181
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mVibrator:Landroid/os/Vibrator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasVibrator:Z

    .line 184
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 185
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    .line 186
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplay:Landroid/view/Display;

    .line 187
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplay:Landroid/view/Display;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 188
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 190
    .local v3, "mWm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oppo.threekey.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHideFourKey:Z

    .line 195
    return-void

    .end local v3    # "mWm":Landroid/view/IWindowManager;
    :cond_0
    move v5, v7

    .line 181
    goto :goto_0

    .line 191
    .restart local v3    # "mWm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "OppoGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OppoGlobalActions e= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/OppoGlobalActions;Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;)Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->initialize()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHideFourKey:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->refreshAirplaneMode()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->startQuickBoot()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/OppoGlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->isOrientationPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasNavigationBar:Z

    return v0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1011
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1013
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1014
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1015
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 1016
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    .line 1018
    :cond_0
    return-void

    .line 1009
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1241
    packed-switch p1, :pswitch_data_0

    .line 1252
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1243
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 1246
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 1249
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 1241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleShow()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 229
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->isOrientationPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const v3, 0xc090457

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->getViewRootImpl()Landroid/view/ViewRootImpl;

    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOnTouchListenerRemove:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    const v4, 0x10900

    .line 240
    .local v4, "flags":I
    const/4 v6, -0x1

    .line 241
    .local v6, "stretch":I
    const/16 v7, 0x8fc

    .line 242
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8fc

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 244
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->initialize()V

    .line 245
    const v1, 0xc030408

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 246
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->deliveryValue(Landroid/view/WindowManager;)V

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    new-instance v2, Lcom/android/internal/policy/impl/OppoGlobalActions$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->setOnChangeListener(Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnChangeListener;)V

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    new-instance v2, Lcom/android/internal/policy/impl/OppoGlobalActions$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->setOnKeyListener(Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnKeyListener;)V

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->setGaussianBlur()V

    .line 271
    return-void

    .line 232
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v6    # "stretch":I
    .end local v7    # "type":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const v3, 0xc090451

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    goto :goto_0
.end method

.method private initialize()V
    .locals 13

    .prologue
    .line 323
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasVibrator:Z

    if-nez v9, :cond_0

    .line 324
    new-instance v9, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeToggleAction;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    .line 328
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->onAirplaneModeChanged()V

    .line 329
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 331
    new-instance v9, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, v10, v11}, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mInnovativeV2HAction:Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

    .line 332
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->onAirplaneModeChanged()V

    .line 334
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mInnovativeV2HAction:Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 343
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_6

    .line 346
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 351
    .local v7, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_2

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    if-nez v9, :cond_1

    const/4 v4, 0x1

    .line 353
    .local v4, "isCurrentUser":Z
    :goto_3
    new-instance v6, Lcom/android/internal/policy/impl/OppoGlobalActions$3;

    const v10, 0xc080480

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_5

    const-string v9, " \u2714"

    :goto_5
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, p0, v10, v9, v7}, Lcom/android/internal/policy/impl/OppoGlobalActions$3;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;ILjava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 373
    .local v6, "switchToUser":Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 326
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isCurrentUser":Z
    .end local v6    # "switchToUser":Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    new-instance v9, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    goto/16 :goto_0

    .line 347
    .restart local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v5

    .line 348
    .local v5, "re":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0    # "currentUser":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 351
    .end local v5    # "re":Landroid/os/RemoteException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v9, v10, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 353
    .restart local v4    # "isCurrentUser":Z
    :cond_4
    const-string v9, "Primary"

    goto :goto_4

    :cond_5
    const-string v9, ""

    goto :goto_5

    .line 377
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isCurrentUser":Z
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_6
    new-instance v9, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Lcom/android/internal/policy/impl/OppoGlobalActions$1;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    .line 378
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->refreshSilentMode()V

    .line 380
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const/4 v9, 0x1

    :goto_6
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    .line 382
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    instance-of v9, v9, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    if-eqz v9, :cond_7

    .line 383
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    check-cast v9, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->updateState(Z)V

    .line 385
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->getCount()I

    move-result v9

    if-ge v2, v9, :cond_9

    .line 386
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v11, v12}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->addView(Landroid/view/View;)V

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 380
    .end local v2    # "i":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_6

    .line 388
    .restart local v2    # "i":I
    :cond_9
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 391
    new-instance v1, Landroid/content/IntentFilter;

    const-string v9, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_8
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsReceiverRegisted:Z

    .line 394
    return-void

    .line 392
    :cond_a
    const/4 v9, 0x0

    goto :goto_8
.end method

.method private isOrientationPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 225
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 993
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 999
    .local v0, "airplaneModeOn":Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    .line 1000
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    instance-of v1, v1, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->updateState(Z)V

    goto :goto_0

    .end local v0    # "airplaneModeOn":Z
    :cond_2
    move v0, v1

    .line 997
    goto :goto_1
.end method

.method private refreshAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 442
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 444
    .local v0, "airplaneModeOn":Z
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    .line 445
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    instance-of v1, v1, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->updateState(Z)V

    .line 448
    :cond_0
    return-void

    .end local v0    # "airplaneModeOn":Z
    :cond_1
    move v0, v1

    .line 442
    goto :goto_0
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 434
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 436
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;)V

    .line 439
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 436
    .restart local v0    # "silentModeOn":Z
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private setGaussianBlur()V
    .locals 12

    .prologue
    const/high16 v10, 0x40800000    # 4.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 274
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplay:Landroid/view/Display;

    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 275
    const/4 v8, 0x2

    new-array v1, v8, [F

    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    aput v8, v1, v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    aput v8, v1, v6

    .line 276
    .local v1, "dims":[F
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/OppoGlobalActions;->getDegreesForRotation(I)F

    move-result v0

    .line 277
    .local v0, "degrees":F
    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-lez v8, :cond_3

    move v4, v6

    .line 278
    .local v4, "requiresRotation":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 279
    aget v8, v1, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v1, v7

    .line 280
    aget v8, v1, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v1, v6

    .line 282
    :cond_0
    const/4 v5, 0x0

    .line 283
    .local v5, "statusBarHeight":I
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSystemUiVisibility:Z

    if-eqz v8, :cond_1

    .line 285
    iget-object v8, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc050002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 289
    :cond_1
    aget v8, v1, v7

    div-float/2addr v8, v10

    float-to-int v8, v8

    aget v6, v1, v6

    div-float/2addr v6, v10

    float-to-int v6, v6

    invoke-static {v8, v6}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 293
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    .line 294
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    div-int/lit8 v8, v5, 0x4

    iget-object v9, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v11, v5, 0x4

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 298
    invoke-static {}, Lcom/oppo/launcher/graphic/GaussianBlur;->getInstance()Lcom/oppo/launcher/graphic/GaussianBlur;

    move-result-object v3

    .line 300
    .local v3, "mGaussianBlur":Lcom/oppo/launcher/graphic/GaussianBlur;
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    const v8, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v6, v8, v7}, Lcom/oppo/launcher/graphic/GaussianBlur;->generateGaussianBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 307
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 308
    .local v2, "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-nez v6, :cond_4

    .line 320
    .end local v2    # "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "mGaussianBlur":Lcom/oppo/launcher/graphic/GaussianBlur;
    :cond_2
    :goto_1
    return-void

    .end local v4    # "requiresRotation":Z
    .end local v5    # "statusBarHeight":I
    :cond_3
    move v4, v7

    .line 277
    goto :goto_0

    .line 311
    .restart local v2    # "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "mGaussianBlur":Lcom/oppo/launcher/graphic/GaussianBlur;
    .restart local v4    # "requiresRotation":Z
    .restart local v5    # "statusBarHeight":I
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 314
    .end local v2    # "mBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "mGaussianBlur":Lcom/oppo/launcher/graphic/GaussianBlur;
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-eqz v6, :cond_2

    .line 315
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    const/high16 v7, -0x34000000    # -3.3554432E7f

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private startQuickBoot()V
    .locals 3

    .prologue
    .line 1023
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.action.QUICKBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1026
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    return-void

    .line 1027
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getDegreesForRotation()F
    .locals 2

    .prologue
    .line 1258
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->getDegreesForRotation(I)F

    move-result v0

    .line 1259
    .local v0, "degrees":F
    return v0
.end method

.method public getPRStatus()Z
    .locals 1

    .prologue
    .line 399
    sget-boolean v0, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 214
    iget v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mPreviousOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->removePowerView()V

    .line 217
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public removePowerView()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    .line 431
    :cond_0
    return-void
.end method

.method public setSystemUiVisibility(Z)V
    .locals 0
    .param p1, "systemUiVisibility"    # Z

    .prologue
    .line 1235
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mSystemUiVisibility:Z

    .line 1236
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 1
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z

    .line 204
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mDeviceProvisioned:Z

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->handleShow()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions;->mPreviousOrientation:I

    .line 209
    return-void
.end method
