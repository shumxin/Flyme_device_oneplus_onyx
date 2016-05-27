.class Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakelockAssertCheck"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;,
        Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;,
        Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;
    }
.end annotation


# static fields
.field private static final ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String; = "android.intent.action.OPPO_GUARD_ELF_MONITOR"

.field private static final ACTION_OPPO_GUARD_ELF_MONITOR_FORCESTOP:Ljava/lang/String; = "android.intent.action.OPPO_GUARD_ELF_MONITOR_FORCESTOP"

.field private static final ACTION_OPPO_GUARD_ELF_SCREENON_WAKELOCK:Ljava/lang/String; = "android.intent.action.OPPO_GUARD_ELF_SCREENON_WAKELOCK"

.field private static final ATAG:Ljava/lang/String; = "AssertLock"

.field private static final A_ASSERT:J = 0xafc80L

.field private static final DCS_MORE_DEBUG_INFO:Z = false

.field private static final MSG_SCREEN_ON_WAKELOCK_CHECK:I = 0x4

.field private static final MSG_WAKELOCK_REPORT:I = 0x2

.field private static final MSG_WAKELOCK_RESTAMP:I = 0x3

.field private static final MSG_WAKELOCK_TIMEOUT_CHECK:I = 0x1

.field private static final SCREEN_ON_WAKELOCK_CHECK_DELAY:J = 0x7530L


# instance fields
.field private final ADBG:Z

.field private intervalScreenoff:J

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

.field private mHandlerThreadCheck:Landroid/os/HandlerThread;

.field private mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

.field private mReportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnReportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

.field private msgPartialWakelockSent:Z

.field private msgScreenOnWakelockSent:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field private timeStampScreenoff:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4284
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4265
    const-string v1, "persist.sys.assert.enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "persist.sys.assert.panic"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    .line 4271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    .line 4272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    .line 4278
    iput-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAudioManager:Landroid/media/AudioManager;

    .line 4279
    iput-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mActivityManager:Landroid/app/ActivityManager;

    .line 4280
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->msgScreenOnWakelockSent:Z

    .line 4281
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->msgPartialWakelockSent:Z

    .line 4285
    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "WakelockAssert"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerThreadCheck:Landroid/os/HandlerThread;

    .line 4286
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerThreadCheck:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 4287
    new-instance v1, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerThreadCheck:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;-><init>(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    .line 4289
    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4290
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "WakelockCheck"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    .line 4291
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 4292
    new-instance v1, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct {v1}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    .line 4293
    return-void

    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_1
    move v1, v2

    .line 4265
    goto :goto_0
.end method

.method static synthetic access$7100(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;I)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;
    .param p1, "x1"    # I

    .prologue
    .line 4255
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getPkgsForUid(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;
    .param p1, "x1"    # I

    .prologue
    .line 4255
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getPkgNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 4255
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getAppLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 4255
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->intervalScreenoff:J

    return-wide v0
.end method

.method static synthetic access$8000(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 4255
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 4255
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->assertCheck()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 4255
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 4255
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->reportAssertList()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 4255
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 4255
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->restampWakeLock()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 4255
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->screenOnWakelockCheck()V

    return-void
.end method

.method private addReportListLocked(IJLjava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "hold"    # J
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 4844
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getTimeoutWakeLock(I)Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;

    move-result-object v1

    .line 4845
    .local v1, "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    if-eqz v1, :cond_0

    .line 4846
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->updateTagLocked(JLjava/lang/String;)V

    .line 4851
    :goto_0
    return-void

    .line 4848
    :cond_0
    new-instance v1, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;

    .end local v1    # "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;-><init>(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;IJLjava/lang/String;)V

    .line 4849
    .restart local v1    # "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addScreenOnReportListLocked(IJLjava/lang/String;I)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "hold"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 4459
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getScreenOnWakeLock(I)Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;

    move-result-object v1

    .line 4460
    .local v1, "rcd":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;
    if-nez v1, :cond_0

    .line 4461
    new-instance v1, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;

    .end local v1    # "rcd":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;-><init>(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;IJLjava/lang/String;I)V

    .line 4462
    .restart local v1    # "rcd":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4464
    :cond_0
    return-void
.end method

.method private assertCheck()V
    .locals 24

    .prologue
    .line 4899
    const/4 v8, 0x0

    .line 4900
    .local v8, "isAudioMixWsNull":Z
    const-wide/16 v6, 0x0

    .line 4901
    .local v6, "holdAudioMix":J
    const/4 v15, 0x0

    .line 4902
    .local v15, "uidAudioMix":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 4904
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 4905
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4906
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 4907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4909
    .local v18, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move/from16 v19, v0

    const v21, 0xffff

    and-int v19, v19, v21

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 4906
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4913
    :cond_1
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAssertTime:J

    move-wide/from16 v22, v0

    sub-long v4, v12, v22

    .line 4914
    .local v4, "hold":J
    const-wide/32 v22, 0xafc80

    cmp-long v19, v4, v22

    if-ltz v19, :cond_0

    .line 4918
    const-wide/16 v22, 0x3e8

    div-long v4, v4, v22

    .line 4919
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 4920
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/WorkSource;->size()I

    move-result v11

    .line 4921
    .local v11, "size":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    if-ge v9, v11, :cond_0

    .line 4922
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/os/WorkSource;->get(I)I

    move-result v14

    .line 4923
    .local v14, "uid":I
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v4, v5, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->addReportListLocked(IJLjava/lang/String;)V

    .line 4921
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 4926
    .end local v9    # "k":I
    .end local v11    # "size":I
    .end local v14    # "uid":I
    :cond_2
    const-string v19, "AudioMix"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 4927
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    const-string v19, "AssertLock"

    const-string v21, "assertCheck: \'AudioMix\' is held, worksource is null!!!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4928
    :cond_3
    const/4 v8, 0x1

    .line 4929
    move-wide v6, v4

    .line 4930
    move-object/from16 v0, v18

    iget v15, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    goto :goto_1

    .line 4932
    :cond_4
    move-object/from16 v0, v18

    iget v14, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 4933
    .restart local v14    # "uid":I
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v4, v5, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->addReportListLocked(IJLjava/lang/String;)V

    goto/16 :goto_1

    .line 4937
    .end local v2    # "N":I
    .end local v3    # "i":I
    .end local v4    # "hold":J
    .end local v14    # "uid":I
    .end local v18    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .restart local v2    # "N":I
    .restart local v3    # "i":I
    :cond_5
    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4939
    if-eqz v8, :cond_6

    .line 4940
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v15}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->handleAudioMixWsNull(JI)V

    .line 4943
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4944
    .local v10, "len":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v10, :cond_8

    .line 4945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;

    .line 4946
    .local v16, "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->updatePkgNameNotLocked()V

    .line 4947
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->getWarningString()Ljava/lang/String;

    move-result-object v17

    .line 4948
    .local v17, "warningString":Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 4949
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const-string v19, "AssertLock"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4944
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4952
    .end local v16    # "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    .end local v17    # "warningString":Ljava/lang/String;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->reportAssertListForceStop()V

    .line 4953
    return-void
.end method

.method private getActiveAudioPids()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 4723
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 4724
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAudioManager:Landroid/media/AudioManager;

    .line 4725
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 4726
    const/4 v1, 0x0

    .line 4731
    :goto_0
    return-object v1

    .line 4730
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_pid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4731
    .local v0, "pids":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getActiveAudioPids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getActiveAudioPids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "pids"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4735
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4744
    :cond_0
    :goto_0
    return-object v0

    .line 4739
    :cond_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4743
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4744
    .local v0, "pid":[Ljava/lang/String;
    goto :goto_0
.end method

.method private getAppLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 4865
    const-string v3, ""

    .line 4867
    .local v3, "str":Ljava/lang/String;
    const/16 v5, 0x2710

    if-ge p2, v5, :cond_0

    move-object v4, v3

    .line 4885
    .end local v3    # "str":Ljava/lang/String;
    .local v4, "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 4871
    .end local v4    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4872
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 4874
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4878
    :goto_1
    if-eqz v0, :cond_1

    .line 4879
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4880
    .local v1, "label":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "label":Ljava/lang/String;
    :goto_2
    move-object v4, v3

    .line 4885
    .end local v3    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    goto :goto_0

    .line 4882
    .end local v4    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_1
    const-string v5, "AssertLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error happened when  getApplicationInfo from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4875
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private getForegroundPackage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4592
    new-instance v2, Landroid/app/OppoActivityManager;

    invoke-direct {v2}, Landroid/app/OppoActivityManager;-><init>()V

    .line 4593
    .local v2, "oAm":Landroid/app/OppoActivityManager;
    const/4 v0, 0x0

    .line 4595
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/OppoActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4600
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 4596
    :catch_0
    move-exception v1

    .line 4597
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AssertLock"

    const-string v4, "getTopActivityComponentName exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    const/4 v0, 0x0

    goto :goto_0

    .line 4600
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getPkgNameForUid(I)Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 4854
    const/4 v1, 0x0

    .line 4855
    .local v1, "pkgName":Ljava/lang/String;
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4857
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4861
    :goto_0
    return-object v1

    .line 4858
    :catch_0
    move-exception v0

    .line 4859
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AssertLock"

    const-string v4, "getNameForUid exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPkgsForUid(I)[Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 4581
    const/4 v1, 0x0

    .line 4582
    .local v1, "pkgName":[Ljava/lang/String;
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4584
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4588
    :goto_0
    return-object v1

    .line 4585
    :catch_0
    move-exception v0

    .line 4586
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AssertLock"

    const-string v4, "getPackagesForUid exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProcessForPid(Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 6
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4748
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v3, :cond_0

    .line 4749
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mActivityManager:Landroid/app/ActivityManager;

    .line 4751
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v3, :cond_0

    move-object v1, v4

    .line 4763
    :goto_0
    return-object v1

    .line 4756
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 4758
    .local v2, "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4759
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v3, v5, :cond_1

    goto :goto_0

    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    move-object v1, v4

    .line 4763
    goto :goto_0
.end method

.method private getScreenOnWakeLock(I)Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 4446
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4447
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4448
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;

    .line 4449
    .local v2, "rcd":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;->mUid:I

    if-ne p1, v3, :cond_0

    .line 4454
    .end local v2    # "rcd":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;
    :goto_1
    return-object v2

    .line 4447
    .restart local v2    # "rcd":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4454
    .end local v2    # "rcd":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getSurfceLayers()Ljava/lang/String;
    .locals 9

    .prologue
    .line 4629
    const-string v1, ""

    .line 4630
    .local v1, "layers":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4631
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 4633
    .local v3, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "dumpsys SurfaceFlinger --list"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 4634
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4637
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 4638
    .local v2, "lineText":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4639
    const-string v6, "FocusedStackFrame"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "DimLayer"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "TickerPanel"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Magnification Overlay"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "AssertTip"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4644
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    goto :goto_0

    .line 4649
    :cond_1
    if-eqz v5, :cond_2

    .line 4651
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4657
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    .line 4658
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    move-object v4, v5

    .line 4661
    .end local v2    # "lineText":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    return-object v1

    .line 4652
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "lineText":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 4653
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "AssertLock"

    const-string v7, "failed closing reader"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4646
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "lineText":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 4647
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v6, "AssertLock"

    const-string v7, "dumpsys SurfaceFlinger --list IOException"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4649
    if-eqz v4, :cond_4

    .line 4651
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4657
    :cond_4
    :goto_4
    if-eqz v3, :cond_3

    .line 4658
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 4652
    :catch_2
    move-exception v0

    .line 4653
    const-string v6, "AssertLock"

    const-string v7, "failed closing reader"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4649
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v4, :cond_5

    .line 4651
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 4657
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 4658
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_6
    throw v6

    .line 4652
    :catch_3
    move-exception v0

    .line 4653
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "AssertLock"

    const-string v8, "failed closing reader"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4649
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "lineText":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 4646
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_7
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private getTimeoutWakeLock(I)Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 4831
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4832
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4833
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;

    .line 4834
    .local v2, "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mUid:I

    if-ne p1, v3, :cond_0

    .line 4839
    .end local v2    # "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    :goto_1
    return-object v2

    .line 4832
    .restart local v2    # "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4839
    .end local v2    # "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getTopAppName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4616
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    .line 4617
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mActivityManager:Landroid/app/ActivityManager;

    .line 4619
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    .line 4620
    const/4 v1, 0x0

    .line 4625
    :goto_0
    return-object v1

    .line 4624
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getTopAppName()Landroid/content/ComponentName;

    move-result-object v0

    .line 4625
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private getUidForPkgName(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4604
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4606
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v0, -0x1

    .line 4608
    .local v0, "packageUid":I
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4612
    :goto_0
    return v0

    .line 4609
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private handleAudioMixWsNull(JI)V
    .locals 5
    .param p1, "hold"    # J
    .param p3, "uid"    # I

    .prologue
    .line 4767
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getActiveAudioPids()[Ljava/lang/String;

    move-result-object v1

    .line 4768
    .local v1, "pids":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 4769
    const-string v3, "AudioMix"

    invoke-direct {p0, p3, p1, p2, v3}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->addReportListLocked(IJLjava/lang/String;)V

    .line 4782
    :cond_0
    return-void

    .line 4773
    :cond_1
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 4774
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4773
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4777
    :cond_3
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getProcessForPid(Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v2

    .line 4778
    .local v2, "trackApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v2, :cond_2

    .line 4779
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const-string v4, "AudioMix"

    invoke-direct {p0, v3, p1, p2, v4}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->addReportListLocked(IJLjava/lang/String;)V

    goto :goto_1
.end method

.method private isWindowShownForUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 4889
    const/4 v0, 0x1

    .line 4891
    .local v0, "shown":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mIOppoWindowManagerImpl:Landroid/view/IOppoWindowManagerImpl;

    invoke-virtual {v1, p1}, Landroid/view/IOppoWindowManagerImpl;->isWindowShownForUid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4895
    :goto_0
    return v0

    .line 4892
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private removeFlagOnAfterRelease()V
    .locals 12

    .prologue
    const v11, -0x20000001

    .line 4467
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 4500
    :goto_0
    return-void

    .line 4471
    :cond_0
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 4472
    const/4 v1, 0x0

    .line 4473
    .local v1, "hasFlagOnAfterRelease":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4474
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 4475
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4477
    .local v7, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v10, 0xffff

    and-int v5, v8, v10

    .line 4478
    .local v5, "type":I
    const/4 v8, 0x6

    if-eq v5, v8, :cond_2

    const/16 v8, 0xa

    if-eq v5, v8, :cond_2

    const/16 v8, 0x1a

    if-eq v5, v8, :cond_2

    .line 4474
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4484
    :cond_2
    iget-object v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v8, :cond_4

    .line 4485
    iget-object v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v8}, Landroid/os/WorkSource;->size()I

    move-result v4

    .line 4486
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_3
    if-ge v3, v4, :cond_1

    .line 4487
    iget-object v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v8, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 4488
    .local v6, "uid":I
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getScreenOnWakeLock(I)Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 4489
    iget v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v8, v11

    iput v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    goto :goto_2

    .line 4499
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "k":I
    .end local v4    # "size":I
    .end local v5    # "type":I
    .end local v6    # "uid":I
    .end local v7    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 4486
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "k":I
    .restart local v4    # "size":I
    .restart local v5    # "type":I
    .restart local v6    # "uid":I
    .restart local v7    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4494
    .end local v3    # "k":I
    .end local v4    # "size":I
    .end local v6    # "uid":I
    :cond_4
    :try_start_1
    iget v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-direct {p0, v8}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getScreenOnWakeLock(I)Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 4495
    iget v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v8, v11

    iput v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    goto :goto_2

    .line 4499
    .end local v5    # "type":I
    .end local v7    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private reportAssertList()V
    .locals 9

    .prologue
    .line 4810
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4811
    .local v2, "len":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4813
    .local v4, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 4814
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;

    .line 4815
    .local v5, "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    const/4 v6, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->getReportString(Z)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->access$7900(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;Z)Ljava/lang/String;

    move-result-object v3

    .line 4816
    .local v3, "reportString":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4817
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    if-eqz v6, :cond_0

    const-string v6, "AssertLock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportAssertList: reportString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4813
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4820
    .end local v3    # "reportString":Ljava/lang/String;
    .end local v5    # "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 4821
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4822
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "data"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4823
    const-string v6, "type"

    const-string v7, "wakelock"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4824
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4827
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private reportAssertListForceStop()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 4785
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4786
    .local v2, "len":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4788
    .local v4, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 4789
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;

    .line 4790
    .local v5, "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    iget-boolean v6, v5, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->isForcestopReported:Z

    if-ne v6, v9, :cond_1

    .line 4788
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4793
    :cond_1
    iput-boolean v9, v5, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->isForcestopReported:Z

    .line 4795
    const/4 v6, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->getReportString(Z)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->access$7900(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;Z)Ljava/lang/String;

    move-result-object v3

    .line 4796
    .local v3, "reportString":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4797
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    if-eqz v6, :cond_0

    const-string v6, "AssertLock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportAssertListForceStop: reportString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4800
    .end local v3    # "reportString":Ljava/lang/String;
    .end local v5    # "wakeLockTimeoutRecord":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 4801
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPPO_GUARD_ELF_MONITOR_FORCESTOP"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4802
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "data"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4803
    const-string v6, "type"

    const-string v7, "wakelock"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4804
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4806
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private reportScreenOnWakelock()V
    .locals 20

    .prologue
    .line 4503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4504
    .local v12, "len":I
    if-nez v12, :cond_1

    .line 4578
    :cond_0
    :goto_0
    return-void

    .line 4508
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getForegroundPackage()Ljava/lang/String;

    move-result-object v3

    .line 4509
    .local v3, "foregroundPackage":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4510
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    if-eqz v2, :cond_0

    const-string v2, "AssertLock"

    const-string v17, "reportScreenOnWakelock: foregroundPackage is null, return!!!"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4514
    :cond_3
    const/4 v6, -0x1

    .line 4515
    .local v6, "foregroundPackageUid":I
    const-string v4, ""

    .line 4516
    .local v4, "topAppName":Ljava/lang/String;
    const-string v5, ""

    .line 4523
    .local v5, "layers":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4524
    .local v16, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 4525
    .local v11, "isForegroundPackage":Z
    add-int/lit8 v8, v12, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_c

    .line 4526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;

    .line 4527
    .local v1, "rcd":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;->updatePkgNameNotLocked()V

    .line 4528
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;->mPkgs:[Ljava/lang/String;

    if-nez v2, :cond_5

    .line 4529
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    if-eqz v2, :cond_4

    const-string v2, "AssertLock"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "reportScreenOnWakelock: wakeLockScreenOnRecord.mPkgs is null, ignore!!!  uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v1, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;->mUid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4530
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4525
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 4534
    :cond_5
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;->mPkgs:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v13, :cond_6

    aget-object v14, v7, v9

    .line 4535
    .local v14, "pkg":Ljava/lang/String;
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4536
    const/4 v11, 0x1

    .line 4540
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_6
    if-eqz v11, :cond_9

    .line 4541
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    if-eqz v2, :cond_7

    const-string v2, "AssertLock"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "reportScreenOnWakelock: current package is foregroundPackage ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), ignore all pkgs, return!!!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4542
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4543
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 4534
    .restart local v14    # "pkg":Ljava/lang/String;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 4547
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_9
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;->mUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->isWindowShownForUid(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4548
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    if-eqz v2, :cond_a

    const-string v2, "AssertLock"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "reportScreenOnWakelock: current package has window shown ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;->mPkgs:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), ignore all pkgs, return!!!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4550
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 4554
    :cond_b
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;->mPkgs:[Ljava/lang/String;

    const/16 v17, 0x0

    aget-object v2, v2, v17

    # invokes: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;->getReportString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;->access$7800(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 4555
    .local v15, "reportString":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 4558
    .end local v1    # "rcd":Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockScreenOnRecord;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "reportString":Ljava/lang/String;
    :cond_c
    const/4 v8, 0x0

    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_e

    .line 4559
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    if-eqz v2, :cond_d

    const-string v17, "AssertLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "reportScreenOnWakelock: reportString="

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4558
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 4562
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->needScreenOnWakelockCheck()Z

    move-result v2

    if-nez v2, :cond_10

    .line 4563
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    if-eqz v2, :cond_f

    .line 4564
    const-string v2, "AssertLock"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "reportScreenOnWakelock: mWakefulness="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/PowerManagerService;->access$7200(Lcom/android/server/power/PowerManagerService;)I

    move-result v18

    # invokes: Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/PowerManagerService;->access$7300(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", mUserActivitySummary=0x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/PowerManagerService;->access$7400(Lcom/android/server/power/PowerManagerService;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", mHandler.hasMessages(MSG_USER_ACTIVITY_TIMEOUT)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->hasMessages(I)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", ignore!!!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 4573
    :cond_10
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4574
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPPO_GUARD_ELF_SCREENON_WAKELOCK"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4575
    .local v10, "intent":Landroid/content/Intent;
    const-string v2, "data"

    move-object/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private restampWakeLock()V
    .locals 6

    .prologue
    .line 4713
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4714
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4715
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 4716
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4717
    .local v1, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAssertTime:J

    .line 4715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4719
    .end local v1    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_0
    monitor-exit v5

    .line 4720
    return-void

    .line 4719
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private screenOnWakelockCheck()V
    .locals 22

    .prologue
    .line 4670
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->needScreenOnWakelockCheck()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4671
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ADBG:Z

    if-eqz v2, :cond_0

    .line 4672
    const-string v2, "AssertLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screenOnWakelockCheck: mWakefulness="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->access$7200(Lcom/android/server/power/PowerManagerService;)I

    move-result v8

    # invokes: Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->access$7300(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mUserActivitySummary=0x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->access$7400(Lcom/android/server/power/PowerManagerService;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mHandler.hasMessages(MSG_USER_ACTIVITY_TIMEOUT)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->hasMessages(I)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", ignore!!!"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4710
    :cond_0
    :goto_0
    return-void

    .line 4680
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 4682
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 4683
    .local v18, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 4684
    .local v14, "N":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v14, :cond_5

    .line 4685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4687
    .local v20, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int v7, v2, v6

    .line 4688
    .local v7, "type":I
    const/4 v2, 0x6

    if-eq v7, v2, :cond_3

    const/16 v2, 0xa

    if-eq v7, v2, :cond_3

    const/16 v2, 0x1a

    if-eq v7, v2, :cond_3

    .line 4684
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 4694
    :cond_3
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAssertTime:J

    sub-long v8, v18, v8

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    .line 4695
    .local v4, "hold":J
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_4

    .line 4696
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v17

    .line 4697
    .local v17, "size":I
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 4698
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    .line 4699
    .local v3, "uid":I
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->addScreenOnReportListLocked(IJLjava/lang/String;I)V

    .line 4697
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 4702
    .end local v3    # "uid":I
    .end local v16    # "k":I
    .end local v17    # "size":I
    :cond_4
    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v8, p0

    move-wide v10, v4

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->addScreenOnReportListLocked(IJLjava/lang/String;I)V

    goto :goto_2

    .line 4705
    .end local v4    # "hold":J
    .end local v7    # "type":I
    .end local v14    # "N":I
    .end local v15    # "i":I
    .end local v18    # "now":J
    .end local v20    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v14    # "N":I
    .restart local v15    # "i":I
    .restart local v18    # "now":J
    :cond_5
    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4707
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->reportScreenOnWakelock()V

    .line 4708
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->removeFlagOnAfterRelease()V

    .line 4709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mScreenOnReportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method


# virtual methods
.method public assertOnScreenOff()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4417
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->msgPartialWakelockSent:Z

    if-nez v0, :cond_0

    .line 4423
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xafc80

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->timeStampScreenoff:J

    .line 4426
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->msgPartialWakelockSent:Z

    .line 4428
    :cond_0
    return-void
.end method

.method public assertOnScreenOn()V
    .locals 4

    .prologue
    .line 4408
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->msgPartialWakelockSent:Z

    if-eqz v0, :cond_0

    .line 4409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->timeStampScreenoff:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->intervalScreenoff:J

    .line 4410
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->removeMessages(I)V

    .line 4411
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->msgPartialWakelockSent:Z

    .line 4414
    :cond_0
    return-void
.end method

.method public needScreenOnWakelockCheck()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4665
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$7200(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$7400(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public screenOnWakelockCheckStart()V
    .locals 4

    .prologue
    .line 4431
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->msgScreenOnWakelockSent:Z

    if-nez v0, :cond_0

    .line 4432
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->msgScreenOnWakelockSent:Z

    .line 4435
    :cond_0
    return-void
.end method

.method public screenOnWakelockCheckStop()V
    .locals 2

    .prologue
    .line 4438
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->msgScreenOnWakelockSent:Z

    if-eqz v0, :cond_0

    .line 4439
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->removeMessages(I)V

    .line 4440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->msgScreenOnWakelockSent:Z

    .line 4442
    :cond_0
    return-void
.end method
