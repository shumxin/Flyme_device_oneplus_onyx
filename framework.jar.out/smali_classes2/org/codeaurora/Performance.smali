.class public Lorg/codeaurora/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# static fields
.field public static final ALL_CPUS_PWR_CLPS_DIS:I = 0x101

.field public static final CPU0_FREQ_NONTURBO_MAX:I = 0x20a

.field public static final CPU0_FREQ_TURBO_MAX:I = 0x2fe

.field public static final CPU0_MAX_FREQ_NONTURBO_MAX:I = 0x150a

.field public static final CPU1_FREQ_NONTURBO_MAX:I = 0x30a

.field public static final CPU1_FREQ_TURBO_MAX:I = 0x3fe

.field public static final CPU1_MAX_FREQ_NONTURBO_MAX:I = 0x160a

.field public static final CPU2_FREQ_NONTURBO_MAX:I = 0x40a

.field public static final CPU2_FREQ_TURBO_MAX:I = 0x4fe

.field public static final CPU2_MAX_FREQ_NONTURBO_MAX:I = 0x170a

.field public static final CPU3_FREQ_NONTURBO_MAX:I = 0x50a

.field public static final CPU3_FREQ_TURBO_MAX:I = 0x5fe

.field public static final CPU3_MAX_FREQ_NONTURBO_MAX:I = 0x180a

.field public static final CPUS_ON_2:I = 0x702

.field public static final CPUS_ON_3:I = 0x703

.field public static final CPUS_ON_LIMIT_1:I = 0x8fe

.field public static final CPUS_ON_LIMIT_2:I = 0x8fd

.field public static final CPUS_ON_LIMIT_3:I = 0x8fc

.field public static final CPUS_ON_MAX:I = 0x7ff

.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_SUCCEEDED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Perf"

.field private static sPower:Landroid/os/IPowerManager;


# instance fields
.field private handle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/Performance;->handle:I

    .line 49
    return-void
.end method

.method private native native_cpu_setoptions(II)I
.end method

.method private native native_deinit()V
.end method

.method private native native_perf_lock_acq(II[I)I
.end method

.method private native native_perf_lock_rel(I)I
.end method


# virtual methods
.method public boostEnableAndRaisePriorityTimeoutMs(I)V
    .locals 5
    .param p1, "timeout_ms"    # I

    .prologue
    .line 120
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, p1, v2}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    .line 123
    :try_start_0
    sget-object v2, Lorg/codeaurora/Performance;->sPower:Landroid/os/IPowerManager;

    if-nez v2, :cond_0

    .line 124
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 125
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    sput-object v2, Lorg/codeaurora/Performance;->sPower:Landroid/os/IPowerManager;

    .line 126
    sget-object v2, Lorg/codeaurora/Performance;->sPower:Landroid/os/IPowerManager;

    if-nez v2, :cond_0

    .line 127
    const-string v2, "Perf"

    const-string v3, "Failed to get power manager service."

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 131
    :cond_0
    sget-object v2, Lorg/codeaurora/Performance;->sPower:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/os/IPowerManager;->boostEnableAndRaisePriorityTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Perf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: RemoteException in boostEnableAndRaisePriorityTimeoutMs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    nop

    :array_0
    .array-data 4
        0x704
        0x216
        0x316
        0x416
        0x516
    .end array-data
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/codeaurora/Performance;->native_deinit()V

    .line 107
    return-void
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 2
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "rc":I
    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v1, p1, p2}, Lorg/codeaurora/Performance;->native_perf_lock_acq(II[I)I

    move-result v1

    iput v1, p0, Lorg/codeaurora/Performance;->handle:I

    .line 94
    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    if-nez v1, :cond_0

    .line 95
    const/4 v0, -0x1

    .line 96
    :cond_0
    return v0
.end method

.method public perfLockRelease()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v0}, Lorg/codeaurora/Performance;->native_perf_lock_rel(I)I

    move-result v0

    return v0
.end method
