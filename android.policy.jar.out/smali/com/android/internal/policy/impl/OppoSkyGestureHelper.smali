.class public Lcom/android/internal/policy/impl/OppoSkyGestureHelper;
.super Ljava/lang/Object;
.source "OppoSkyGestureHelper.java"


# static fields
.field private static final ACTION_KEY_DOWN:Ljava/lang/String; = "com.oppo.intent.action.SKYGESTURE_ACTION_KEY_DOWN"

.field private static final ACTION_KEY_UP:Ljava/lang/String; = "com.oppo.intent.action.SKYGESTURE_ACTION_KEY_UP"

.field private static final TAG:Ljava/lang/String; = "OppoSkyGestureHelper"

.field private static final WAIT_TIME_CPU_LOCK:I = 0x1770

.field private static final WAIT_TIME_UNBIND_SERVICE:I = 0x2710


# instance fields
.field listener:Landroid/telephony/PhoneStateListener;

.field private mContext:Landroid/content/Context;

.field private mGestureCpuLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mIsInOffHook:Z

.field private mIsVolumeLongPress:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mSkyGestureConnection:Landroid/content/ServiceConnection;

.field final mSkyGestureLock:Ljava/lang/Object;

.field final mSkyGestureTimeout:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/os/PowerManager;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "power"    # Landroid/os/PowerManager;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mIsVolumeLongPress:Z

    .line 46
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mSkyGestureLock:Ljava/lang/Object;

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mSkyGestureConnection:Landroid/content/ServiceConnection;

    .line 54
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mIsInOffHook:Z

    .line 97
    new-instance v1, Lcom/android/internal/policy/impl/OppoSkyGestureHelper$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper$1;-><init>(Lcom/android/internal/policy/impl/OppoSkyGestureHelper;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mSkyGestureTimeout:Ljava/lang/Runnable;

    .line 148
    new-instance v1, Lcom/android/internal/policy/impl/OppoSkyGestureHelper$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper$3;-><init>(Lcom/android/internal/policy/impl/OppoSkyGestureHelper;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->listener:Landroid/telephony/PhoneStateListener;

    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mContext:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 61
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "OppoSkyGestureHelper.mGestureCpuLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mGestureCpuLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    const-string v1, "phone"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 65
    .local v0, "telephoneManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/OppoSkyGestureHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/OppoSkyGestureHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoSkyGestureHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mIsInOffHook:Z

    return p1
.end method

.method private bindSkyGestureService()V
    .locals 7

    .prologue
    .line 119
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mSkyGestureLock:Ljava/lang/Object;

    monitor-enter v4

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mSkyGestureConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    .line 122
    monitor-exit v4

    .line 146
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.oppo.gestureguide.custom"

    const-string v5, "com.oppo.gestureguide.custom.service.SkyGestureService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    new-instance v1, Lcom/android/internal/policy/impl/OppoSkyGestureHelper$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper$2;-><init>(Lcom/android/internal/policy/impl/OppoSkyGestureHelper;)V

    .line 138
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mSkyGestureConnection:Landroid/content/ServiceConnection;

    .line 141
    const-string v3, "OppoSkyGestureHelper"

    const-string v5, "bindService "

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 143
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "conn":Landroid/content/ServiceConnection;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v3, "OppoSkyGestureHelper"

    const-string v5, "bindService error"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public dealSkyGestureDown()V
    .locals 4

    .prologue
    .line 69
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mIsInOffHook:Z

    if-eqz v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->bindSkyGestureService()V

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mIsVolumeLongPress:Z

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.intent.action.SKYGESTURE_ACTION_KEY_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "intentKeyDown":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mGestureCpuLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 79
    const-string v1, "OppoSkyGestureHelper"

    const-string v2, "send broadcast silence action for ACTION_KEY_DOWN."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mSkyGestureTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public dealSkyGestureUp()V
    .locals 6

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.intent.action.SKYGESTURE_ACTION_KEY_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intentKeyUp":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mGestureCpuLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 87
    const-string v1, "OppoSkyGestureHelper"

    const-string v2, "send broadcast silence action for ACTION_KEY_UP."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mIsVolumeLongPress:Z

    .line 90
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mSkyGestureTimeout:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
.end method

.method public isVolumeLongPress()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->mIsVolumeLongPress:Z

    return v0
.end method
