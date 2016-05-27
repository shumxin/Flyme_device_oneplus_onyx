.class public Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
.super Ljava/lang/Object;
.source "OppoScreenOffGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;
    }
.end annotation


# static fields
.field public static final GESTURE_CIRCLE:I = 0x6

.field public static final GESTURE_DOUBLE_SWIP:I = 0x7

.field public static final GESTURE_DOUBLE_TAP:I = 0x1

.field public static final GESTURE_DOWN_TO_UP_SWIP:I = 0xb

.field public static final GESTURE_DOWN_VEE:I = 0x3

.field public static final GESTURE_LEFT_TO_RIGHT_SWIP:I = 0x8

.field public static final GESTURE_LEFT_VEE:I = 0x4

.field public static final GESTURE_M:I = 0xc

.field public static final GESTURE_RIGHT_TO_LEFT_SWIP:I = 0x9

.field public static final GESTURE_RIGHT_VEE:I = 0x5

.field public static final GESTURE_UP_TO_DOWN_SWIP:I = 0xa

.field public static final GESTURE_UP_VEE:I = 0x2

.field public static final GESTURE_W:I = 0xd

.field public static final MSG_SCREEN_TURNED_OFF:I = 0x2711

.field public static final MSG_SCREEN_TURNING_ON:I = 0x2710

.field private static TAG:Ljava/lang/String; = null

.field private static final WAIT_TIME_CPU_LOCK:I = 0x3e8


# instance fields
.field listener:Landroid/telephony/PhoneStateListener;

.field private mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mExManager:Landroid/os/IOppoExService;

.field private mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

.field private mIsInOffHook:Z

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "OppoScreenOffGestureManager"

    sput-object v0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager$WakeLock;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "keyguardMediator"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
    .param p4, "broadcastWakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    .line 61
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    .line 63
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 92
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    .line 265
    new-instance v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;-><init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->listener:Landroid/telephony/PhoneStateListener;

    .line 101
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mPowerManager:Landroid/os/PowerManager;

    .line 102
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "OppoScreenOffGestureManager.mAnimCpuLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    new-instance v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    .line 107
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 108
    .local v0, "telephoneManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 110
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    .line 111
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    return p1
.end method

.method private dealExScreenOffGesture(I)V
    .locals 4
    .param p1, "nGesture"    # I

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_0

    .line 228
    const-string v1, "OPPOExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_1

    .line 233
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "mExManager == null!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 236
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoScreenOffGestureManager  dealScreenoffGesture nGesture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mExManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    invoke-interface {v1, p1}, Landroid/os/IOppoExService;->dealScreenoffGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "Failing dealScreenoffGesture"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private gestureTosString(I)Ljava/lang/String;
    .locals 1
    .param p1, "nGesture"    # I

    .prologue
    .line 175
    const-string v0, ""

    .line 176
    .local v0, "strGesture":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    const-string v0, "GESTURE_DOUBLE_TAP"

    .line 179
    goto :goto_0

    .line 181
    :pswitch_1
    const-string v0, "GESTURE_UP_VEE"

    .line 182
    goto :goto_0

    .line 184
    :pswitch_2
    const-string v0, "GESTURE_DOWN_VEE"

    .line 185
    goto :goto_0

    .line 187
    :pswitch_3
    const-string v0, "GESTURE_LEFT_VEE"

    .line 188
    goto :goto_0

    .line 190
    :pswitch_4
    const-string v0, "GESTURE_RIGHT_VEE"

    .line 191
    goto :goto_0

    .line 193
    :pswitch_5
    const-string v0, "GESTURE_CIRCLE"

    .line 194
    goto :goto_0

    .line 196
    :pswitch_6
    const-string v0, "GESTURE_DOUBLE_SWIP"

    .line 197
    goto :goto_0

    .line 199
    :pswitch_7
    const-string v0, "GESTURE_LEFT_TO_RIGHT_SWIP"

    .line 200
    goto :goto_0

    .line 202
    :pswitch_8
    const-string v0, "GESTURE_RIGHT_TO_LEFT_SWIP"

    .line 203
    goto :goto_0

    .line 205
    :pswitch_9
    const-string v0, "GESTURE_UP_TO_DOWN_SWIP"

    .line 206
    goto :goto_0

    .line 208
    :pswitch_a
    const-string v0, "GESTURE_DOWN_TO_UP_SWIP"

    .line 209
    goto :goto_0

    .line 211
    :pswitch_b
    const-string v0, "GESTURE_M"

    .line 212
    goto :goto_0

    .line 214
    :pswitch_c
    const-string v0, "GESTURE_W"

    .line 215
    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method private isGestureExist(I)Z
    .locals 5
    .param p1, "nGesture"    # I

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "isGestureExist":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v2, :cond_0

    .line 247
    const-string v2, "OPPOExService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v2, :cond_1

    .line 252
    sget-object v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v3, "mExManager == null!!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v2, 0x0

    .line 262
    :goto_0
    return v2

    .line 257
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    invoke-interface {v2, p1}, Landroid/os/IOppoExService;->getGestureState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 261
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoScreenOffGestureManager isGestureExist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 262
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v3, "Failing getGestureState"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method dealScreenOffGesture(Landroid/view/KeyEvent;IZ)I
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 115
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 116
    .local v0, "down":Z
    :goto_0
    const v3, -0x40000001    # -1.9999999f

    and-int/2addr p2, v3

    .line 117
    if-eqz p3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    if-nez v3, :cond_2

    .line 118
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v4, "-----  return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_1
    return p2

    .line 115
    .end local v0    # "down":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    .restart local v0    # "down":Z
    :cond_2
    const/16 v3, 0x86

    if-ne v1, v3, :cond_0

    if-eqz v0, :cond_0

    .line 123
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    iget v2, v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mGestureType:I

    .line 124
    .local v2, "nGesture":I
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->isGestureExist(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAnimCpuLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 130
    sget-object v3, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dealScreenOffGesture is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->gestureTosString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->dealExScreenOffGesture(I)V

    goto :goto_1
.end method

.method isGestureDoubleTap()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 293
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    iget v1, v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->mGestureType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInOffHook()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScreenoffGestureKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 223
    const/16 v0, 0x86

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method screenTurnedOff()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_0

    .line 141
    const-string v1, "OPPOExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_1

    .line 146
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "mExManager == null!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    const/16 v2, 0x2711

    invoke-interface {v1, v2}, Landroid/os/IOppoExService;->dealScreenoffGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "Failing screenTurnedOff"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method screenTurningOn()V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_0

    .line 158
    const-string v1, "OPPOExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    if-nez v1, :cond_1

    .line 163
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "mExManager == null!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mExManager:Landroid/os/IOppoExService;

    const/16 v2, 0x2710

    invoke-interface {v1, v2}, Landroid/os/IOppoExService;->dealScreenoffGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "Failing screenTurningOn"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateGestureInfo()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mGestureUtil:Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoScreenOffGestureUtil;->updateGestureInfo()V

    .line 298
    return-void
.end method
