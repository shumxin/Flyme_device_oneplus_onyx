.class public Lcom/android/server/storage/OppoDeviceStorageMonitorService;
.super Lcom/android/server/storage/DeviceStorageMonitorService;
.source "OppoDeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_DEBUG_LOGV_MASK:I = 0x2

.field private static final DEBUG_LOCAL_LOGV_MASK:I = 0x1

.field private static final OPPO_DEFAULT_CHECK_INTERVAL:J = 0x7530L

.field private static final OPPO_DEVICE_MEMORY_WHAT:I = 0x1

.field private static final OPPO_LOW_SD_NOTIFICATION_ID:I = 0x3

.field private static final OPPO_MONITOR_INTERVAL:I = 0x1e

.field private static final OPPO_SHORT_CHECK_INTERVAL:J = 0x2710L

.field private static final OPPO_SHORT_INTERVAL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OppoDeviceStorageMonitorService"

.field private static debugLOGV:Z

.field private static localLOGV:Z

.field private static mLogFlag:J


# instance fields
.field private final DEFAULT_THRESHOLD_PERCENTAGE:I

.field private final GB_BYTES:J

.field private final MB_BYTES:J

.field private final OPPO_ACTION_FILE_CLEANUP:Ljava/lang/String;

.field private final OPPO_FULL_THRESHOLD_MB:J

.field private final OPPO_SD_NOT_ENOUGH_MB:J

.field private final OPPO_SD_NOT_ENOUGH_TRIM_MB:J

.field private final REMINDER_INTERVAL:J

.field private firstboot:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mExternalSdFileStats:Landroid/os/StatFs;

.field private mExternalSdPath:Ljava/lang/String;

.field private mFreeExternalSd:J

.field private mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntentFileCleanUP:Landroid/content/Intent;

.field private mLowDataFlag:Z

.field private mLowDataTimeStamp:J

.field private mLowSdFlag:Z

.field private mLowSdTimeStamp:J

.field private mMountService:Landroid/os/storage/IMountService;

.field private mSdFullFlag:Z

.field private mSdStartTrimThreshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    .line 64
    sput-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    .line 67
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdFullFlag:Z

    .line 81
    iput-boolean v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->firstboot:Z

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    .line 105
    const-wide/32 v2, 0x100000

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->MB_BYTES:J

    .line 106
    const-wide/32 v2, 0x40000000

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->GB_BYTES:J

    .line 107
    const-wide/32 v2, 0x6400000

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OPPO_SD_NOT_ENOUGH_MB:J

    .line 108
    const-wide/32 v2, 0x3200000

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OPPO_SD_NOT_ENOUGH_TRIM_MB:J

    .line 109
    const-wide/32 v2, 0xa00000

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OPPO_FULL_THRESHOLD_MB:J

    .line 110
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->DEFAULT_THRESHOLD_PERCENTAGE:I

    .line 112
    const-wide/32 v2, 0xf731400

    iput-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->REMINDER_INTERVAL:J

    .line 116
    const-string v1, "com.oppo.cleandroid.ui.ClearMainActivity"

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OPPO_ACTION_FILE_CLEANUP:Ljava/lang/String;

    .line 274
    new-instance v1, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 306
    iput-object p1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    .line 308
    sget-boolean v1, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoDeviceStorageMonitorService"

    const-string v2, "init!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OppoDeviceStorageMonitor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 311
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 312
    new-instance v1, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;-><init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oppo.cleandroid.ui.ClearMainActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    .line 344
    invoke-static {p1}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    .line 345
    const-string v1, "OppoDeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mExternalSdPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    invoke-virtual {v2, v4}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 348
    return-void
.end method

.method public static HasRooted()Z
    .locals 1

    .prologue
    .line 563
    invoke-static {}, Lcom/oppo/rutils/RUtils;->OppoRUtilsCompareSystemMD5()I

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    const/4 v0, 0x1

    .line 566
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private OppoCancelNotification(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 432
    .local v0, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 433
    return-void
.end method

.method private final OppoCheckMemory()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x100000

    .line 188
    const-wide/16 v0, 0x2710

    .line 190
    .local v0, "checkInterval":J
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCheckSdMounted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    const-wide/16 v0, 0x7530

    .line 192
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->restatSdDir()V

    .line 193
    sget-boolean v2, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "OppoDeviceStorageMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFreeExternalSd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    sget-boolean v2, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "OppoDeviceStorageMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSdStartTrimThreshold = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    iget-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    iget-wide v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 213
    iget-boolean v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-nez v2, :cond_2

    .line 214
    const-string v2, "OppoDeviceStorageMonitorService"

    const-string v3, "OppoCheckMemory: Running low on SDCARD. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->sdsendNotification()V

    .line 232
    :cond_2
    :goto_0
    const-wide/32 v2, 0xf731400

    invoke-direct {p0, v2, v3}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->timedReminder(J)V

    .line 233
    sget-boolean v2, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v2, :cond_3

    const-string v2, "OppoDeviceStorageMonitorService"

    const-string v3, "Posting Message again"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoPostCheckMemoryMsg(J)V

    .line 235
    return-void

    .line 219
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-eqz v2, :cond_2

    .line 220
    const-string v2, "OppoDeviceStorageMonitorService"

    const-string v3, "OppoCheckMemory: SDCARD available. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->sdcancelNotification()V

    goto :goto_0

    .line 226
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-eqz v2, :cond_2

    .line 227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 228
    const-string v2, "OppoDeviceStorageMonitorService"

    const-string v3, "OppoCheckMemory: SDCARD is removed. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->sdcancelNotification()V

    goto :goto_0
.end method

.method private OppoCheckSdMounted()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    if-nez v3, :cond_0

    .line 161
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    .line 162
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    if-nez v3, :cond_0

    .line 163
    const-string v3, "OppoDeviceStorageMonitorService"

    const-string v4, "OppoCheckSdMounted: Unable to connect to mount service!!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return v2

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    .line 170
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 171
    const-string v3, "OppoDeviceStorageMonitorService"

    const-string v4, "OppoCheckSdMounted: mExternalSdPath is null!!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    .local v1, "mountState":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "OppoDeviceStorageMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoCheckSdMounted: mountState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 179
    .end local v1    # "mountState":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OppoDeviceStorageMonitorService"

    const-string v4, "OppoCheckSdMounted: Failed to get volume state"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private OppoPostCheckMemoryMsg(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x1

    .line 238
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->removeMessages(I)V

    .line 239
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 240
    return-void
.end method

.method private OppoShowNotification(Landroid/content/Intent;III)V
    .locals 11
    .param p1, "ointent"    # Landroid/content/Intent;
    .param p2, "id"    # I
    .param p3, "title_id"    # I
    .param p4, "details_id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 418
    .local v8, "mNotificationMgr":Landroid/app/NotificationManager;
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 419
    .local v10, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 420
    .local v6, "details":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 422
    .local v7, "intent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 423
    .local v9, "notification":Landroid/app/Notification;
    const v0, 0x1080652

    iput v0, v9, Landroid/app/Notification;->icon:I

    .line 424
    iput-object v10, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 425
    iget v0, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 426
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0, v10, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 427
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, p2, v9, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 428
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCheckMemory()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/storage/OppoDeviceStorageMonitorService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Landroid/content/Intent;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoShowNotification(Landroid/content/Intent;III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private parseLogMask([Ljava/lang/String;J)J
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 536
    move-wide v2, p2

    .line 538
    .local v2, "flag":J
    :try_start_0
    array-length v1, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 539
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "0x"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 548
    :cond_0
    :goto_0
    return-wide v2

    .line 542
    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private final restatSdDir()V
    .locals 4

    .prologue
    .line 138
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->firstboot:Z

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->firstboot:Z

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    .line 148
    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    .line 152
    :goto_1
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private sdcancelNotification()V
    .locals 2

    .prologue
    .line 454
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V

    .line 455
    sget-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "Canceling low SDCARD notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 457
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdTimeStamp:J

    .line 458
    return-void
.end method

.method private sdsendNotification()V
    .locals 6

    .prologue
    const v3, 0xc04052e

    const/4 v5, 0x1

    .line 438
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    const/4 v1, 0x3

    const v2, 0xc040530

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoShowNotification(Landroid/content/Intent;III)V

    .line 442
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0xc04052f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0xc04052b

    const v4, 0xc04052d

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 448
    sget-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "sdsendNotification: Sending low SDCARD notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdTimeStamp:J

    .line 451
    return-void
.end method

.method private timedReminder(J)V
    .locals 9
    .param p1, "interval"    # J

    .prologue
    const v4, 0xc04052d

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 245
    .local v6, "nowElapsed":J
    sget-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoDeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timedReminder: nowElapsed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    sget-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "OppoDeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timedReminder: mLowSdTimeStamp= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLowDataTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-eqz v0, :cond_2

    .line 248
    iget-wide v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdTimeStamp:J

    sub-long v0, v6, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc04052e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0xc04052f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0xc04052b

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 255
    iput-wide v6, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdTimeStamp:J

    .line 256
    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "timedReminder: show sd not enough diag"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    if-eqz v0, :cond_3

    .line 261
    iget-wide v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataTimeStamp:J

    sub-long v0, v6, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc040531

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0xc040532

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0xc04052c

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 268
    iput-wide v6, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataTimeStamp:J

    .line 269
    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "timedReminder: show data not enough diag"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_3
    return-void
.end method

.method private updateLogMask(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 552
    sget-wide v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    invoke-direct {p0, p2, v4, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->parseLogMask([Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    .line 554
    sget-wide v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    cmp-long v0, v4, v10

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    .line 555
    sget-wide v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v10

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLogFlag=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLogFlag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 557
    const-string v0, "  localLOGV(0x%1$h)=%2$b"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    sget-boolean v4, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->localLOGV:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    const-string v0, "  debugLOGV(0x%1$h)=%2$b"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    sget-boolean v2, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    return-void

    :cond_0
    move v0, v2

    .line 554
    goto :goto_0

    :cond_1
    move v0, v2

    .line 555
    goto :goto_1
.end method


# virtual methods
.method public OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "issd"    # Z

    .prologue
    .line 481
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;

    invoke-direct {v1, p0, p5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Z)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/storage/OppoDeviceStorageMonitorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    .line 506
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 507
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 509
    return-void
.end method

.method cancelNotification()V
    .locals 2

    .prologue
    .line 377
    invoke-super {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelNotification()V

    .line 378
    sget-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "Canceling low data notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    .line 380
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataTimeStamp:J

    .line 381
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 571
    invoke-super {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 573
    const-string v0, "Current OppoDeviceStorageMonitor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    const-string v0, "  mFreeExternalSd="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    const-string v0, "  mSdStartTrimThreshold="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    const-string v0, "  mLowSdFlag="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 578
    const-string v0, "  SystemImgHasRooted="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->HasRooted()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 579
    return-void
.end method

.method sendNotification()V
    .locals 7

    .prologue
    const v4, 0xc040531

    const/4 v6, 0x1

    .line 353
    const/16 v0, 0xab9

    iget-wide v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 359
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    const v1, 0xc040533

    invoke-direct {p0, v0, v6, v4, v1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoShowNotification(Landroid/content/Intent;III)V

    .line 363
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0xc040532

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0xc04052c

    const v4, 0xc04052d

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 369
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 370
    sget-boolean v0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->debugLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "Sending low data notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataTimeStamp:J

    .line 373
    return-void
.end method
