.class public Lcom/android/internal/policy/impl/FingerprintUnlock;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"

# interfaces
.implements Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;
.implements Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;,
        Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
    }
.end annotation


# static fields
.field static fingerprintEnable:Z

.field static mScreenState:Z

.field static mStartIdentify:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAttempts:I

.field private mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

.field mCaptureStatus:I

.field mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

.field private mIds:[I

.field mLock:Ljava/lang/Object;

.field private mMaxAttempts:I

.field private mSupport:Z

.field private mToast:Lcom/android/internal/policy/impl/keyguardToast;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field noMatchView:Landroid/view/View;

.field private oemSettings:Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    sput-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    .line 130
    sput v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;ILandroid/os/Handler;Landroid/content/Context;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
    .param p2, "maxAttempts"    # I
    .param p3, "mH"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v1, "WindowManager"

    iput-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    .line 51
    iput-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->noMatchView:Landroid/view/View;

    .line 56
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    .line 123
    iput-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 284
    iput v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCaptureStatus:I

    .line 350
    new-instance v1, Lcom/android/internal/policy/impl/FingerprintUnlock$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/FingerprintUnlock$1;-><init>(Lcom/android/internal/policy/impl/FingerprintUnlock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    .line 62
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.finger.print.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    .line 63
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    .line 67
    iput p2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mMaxAttempts:I

    .line 68
    iput-object p3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p4, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    .line 74
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFingerprintSupport =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "power"

    invoke-virtual {p4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 76
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "fingerprintUnlock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    new-instance v1, Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/FingerprintUnlock;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->oemSettings:Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;

    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->oemSettings:Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/FingerprintUnlock$SettingsObserver;->observe()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/FingerprintUnlock;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FingerprintUnlock;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/FingerprintUnlock;)Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FingerprintUnlock;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/FingerprintUnlock;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FingerprintUnlock;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/internal/policy/impl/FingerprintUnlock;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FingerprintUnlock;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    return v0
.end method


# virtual methods
.method public identifyContinue()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->identifyContinue()V

    .line 229
    :cond_0
    return-void
.end method

.method public identifyPause()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->identifyPause()V

    .line 223
    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v0, :cond_1

    .line 204
    :cond_0
    monitor-exit v1

    .line 217
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAbort  mScreenState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStartIdentify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->removeNoMatchView()V

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 216
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCaptureCompleted()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCaptureStatus:I

    .line 300
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 288
    iput p1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCaptureStatus:I

    .line 290
    return-void
.end method

.method public onIdentified(IZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "updated"    # Z

    .prologue
    .line 343
    return-void
.end method

.method public onInput()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    const/16 v1, 0x1f4

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;->keepScreenOn(I)V

    .line 295
    return-void
.end method

.method public onNoMatch()V
    .locals 6

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v0, :cond_1

    .line 306
    :cond_0
    monitor-exit v1

    .line 319
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_2

    .line 309
    monitor-exit v1

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 313
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNoMatch  mScreenState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStartIdentify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIds:[I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oneplus/fingerprints/service/FingerprintManager;->startFpIdentify(Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;I[II)I

    .line 318
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onRelease()V
    .locals 4

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v0, :cond_1

    .line 235
    :cond_0
    monitor-exit v1

    .line 250
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->removeNoMatchView()V

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRelease mStartIdentify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 242
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    .line 243
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->identifyContinue()V

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->release()I

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 249
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRestartFpId()V
    .locals 6

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v0, :cond_1

    .line 324
    :cond_0
    monitor-exit v1

    .line 337
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_2

    .line 327
    monitor-exit v1

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 331
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReStartFpId  mScreenState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStartIdentify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIds:[I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oneplus/fingerprints/service/FingerprintManager;->startFpIdentify(Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;I[II)I

    .line 336
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onSucess()V
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v0, :cond_1

    .line 188
    :cond_0
    monitor-exit v1

    .line 198
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_2

    .line 191
    monitor-exit v1

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 193
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    const-string v2, "FingerprintManager on onSucess "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->release()I

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 197
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onWaitingForInput()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCallback:Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;

    const/16 v1, 0x1f4

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;->keepScreenOn(I)V

    .line 275
    iget v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mCaptureStatus:I

    packed-switch v0, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeNoMatchView()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguardToast;->mTN:Lcom/android/internal/policy/impl/keyguardToast$TN;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguardToast$TN;->handleHide()V

    .line 269
    :cond_0
    return-void
.end method

.method public resetAttempts()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetAttempts  mAttempts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    .line 348
    return-void
.end method

.method public resume(Z)V
    .locals 7
    .param p1, "intercative"    # Z

    .prologue
    const/4 v5, 0x1

    .line 134
    iget-object v2, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_0
    sget-boolean v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mSupport:Z

    if-nez v1, :cond_1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    const-string v3, "FingerprintManager disEnable"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    monitor-exit v2

    .line 183
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " on resume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intercative "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mStartIdentify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mAttempts:I

    .line 145
    sget v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    if-ne v1, v5, :cond_2

    sget-boolean v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    if-eq v1, p1, :cond_2

    .line 146
    sput-boolean p1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    .line 147
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    sget-boolean v3, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    invoke-virtual {v1, v3}, Lcom/oneplus/fingerprints/service/FingerprintManager;->notifyScreenOff(Z)V

    .line 151
    :cond_2
    sget v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    if-ne v1, v5, :cond_3

    if-nez p1, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->identifyContinue()V

    .line 154
    :cond_3
    sget v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    if-nez v1, :cond_7

    .line 155
    sput-boolean p1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mScreenState:Z

    .line 157
    const/4 v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->mStartIdentify:I

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    const-string v3, "FingerprintManager open "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/oneplus/fingerprints/service/FingerprintManager;->open()Lcom/oneplus/fingerprints/service/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;
    :try_end_1
    .catch Lcom/oneplus/fingerprints/service/UnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :cond_4
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-nez v1, :cond_5

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->TAG:Ljava/lang/String;

    const-string v3, "open FingerprintManager error on resume"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-exit v2

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lcom/oneplus/fingerprints/service/UnsupportedException;
    :try_start_3
    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/UnsupportedException;->printStackTrace()V

    goto :goto_1

    .line 174
    .end local v0    # "e":Lcom/oneplus/fingerprints/service/UnsupportedException;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_6

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 178
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/fingerprints/service/FingerprintManager;->notifyScreenOff(Z)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/oneplus/fingerprints/service/FingerprintManager;->startFpIdentify(Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;I[II)I

    .line 182
    :cond_7
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public showNoMatchView(Ljava/lang/String;)V
    .locals 3
    .param p1, "attample"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/android/internal/policy/impl/keyguardToast;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/internal/policy/impl/keyguardToast;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguardToast;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mToast:Lcom/android/internal/policy/impl/keyguardToast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguardToast;->mTN:Lcom/android/internal/policy/impl/keyguardToast$TN;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguardToast$TN;->handleShow()V

    .line 261
    return-void
.end method

.method public updateOemSettings()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "oem_finger_lockscreen"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    .line 112
    sget-boolean v1, Lcom/android/internal/policy/impl/FingerprintUnlock;->fingerprintEnable:Z

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 121
    return-void

    :cond_0
    move v1, v2

    .line 110
    goto :goto_0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
