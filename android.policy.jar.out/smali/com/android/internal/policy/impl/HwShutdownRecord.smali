.class public Lcom/android/internal/policy/impl/HwShutdownRecord;
.super Ljava/lang/Object;
.source "HwShutdownRecord.java"


# static fields
.field private static final MAX_BLOCK_BYTE:I = 0x200

.field private static final SHUTDOWN_COUNT_BYTE:I = 0x10

.field private static final SHUTDOWN_EACH_TIME_STR_BYTE:I = 0xe

.field private static final SHUTDOWN_TIME_STR_LEN_BYTE:I = 0x4

.field private static final STR_FORMAT:Ljava/lang/String; = "%-16d%03d\n%s"

.field private static final STR_FORMAT_HEAD:Ljava/lang/String; = "%-16d%03d\n"

.field private static final TAG:Ljava/lang/String; = "HwShutdownRecord"

.field private static instance:Lcom/android/internal/policy/impl/HwShutdownRecord;


# instance fields
.field private mHwShutdown:Z

.field private mHwShutdownCount:I

.field private mHwShutdownTimeStr:Ljava/lang/String;

.field private mHwShutdownTimeStrLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/HwShutdownRecord;->instance:Lcom/android/internal/policy/impl/HwShutdownRecord;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownCount:I

    .line 28
    iput v1, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStrLen:I

    .line 30
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdown:Z

    return-void
.end method

.method private LoadHwShutdownCountIfNeed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 76
    iget v2, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownCount:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 112
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    sget v2, Landroid/os/OppoManager;->TYPE_HW_SHUTDOWN:I

    const/16 v3, 0x10

    invoke-static {v2, v3}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "strData":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/HwShutdownRecord;->strToInt(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :try_start_1
    sget v2, Landroid/os/OppoManager;->TYPE_HW_SHUTDOWN:I

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v1

    .line 94
    const/16 v2, 0x10

    const/16 v3, 0x13

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/HwShutdownRecord;->strToInt(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStrLen:I

    .line 95
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStr:Ljava/lang/String;

    .line 97
    iget v2, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStrLen:I

    if-lez v2, :cond_1

    .line 98
    sget v2, Landroid/os/OppoManager;->TYPE_HW_SHUTDOWN:I

    iget v3, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStrLen:I

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v1

    .line 100
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStr:Ljava/lang/String;

    .line 103
    :cond_1
    const-string v2, "HwShutdownRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadHwShutdownCountIfNeed mHwShutdownCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHwShutdownTimeStrLen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStrLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHwShutdownTimeStr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HwShutdownRecord"

    const-string v3, "LoadHwShutdownCountIfNeed read time region Exception,set default hardware shutdown time len to 0!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget v2, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownCount:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/HwShutdownRecord;->initHwShutdownRegion(I)V

    .line 108
    iput v5, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStrLen:I

    .line 109
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStr:Ljava/lang/String;

    goto/16 :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "strData":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 84
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "HwShutdownRecord"

    const-string v3, "LoadHwShutdownCountIfNeed read mHwShutdownCount Exception,set default hardware shutdown count to 0!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/HwShutdownRecord;->initHwShutdownRegion(I)V

    .line 86
    iput v5, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownCount:I

    .line 87
    iput v5, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStrLen:I

    .line 88
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStr:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/HwShutdownRecord;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/policy/impl/HwShutdownRecord;->instance:Lcom/android/internal/policy/impl/HwShutdownRecord;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/internal/policy/impl/HwShutdownRecord;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/HwShutdownRecord;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/HwShutdownRecord;->instance:Lcom/android/internal/policy/impl/HwShutdownRecord;

    .line 38
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/HwShutdownRecord;->instance:Lcom/android/internal/policy/impl/HwShutdownRecord;

    return-object v0
.end method

.method private initHwShutdownRegion(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 115
    const-string v1, "%-16d%03d\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "strWrite":Ljava/lang/String;
    sget v1, Landroid/os/OppoManager;->TYPE_HW_SHUTDOWN:I

    invoke-static {v1, v0}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    .line 117
    return-void
.end method

.method private storeHwShutdownCount(Z)V
    .locals 8
    .param p1, "cancelFlag"    # Z

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownCount:I

    .line 121
    .local v0, "hwShutdownCount":I
    iget v2, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStrLen:I

    .line 122
    .local v2, "hwShutdownTimeStrLen":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdownTimeStr:Ljava/lang/String;

    .line 124
    .local v1, "hwShutdownTimeStr":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    add-int/lit8 v4, v2, 0xe

    const/16 v5, 0x200

    if-gt v4, v5, :cond_1

    .line 127
    add-int/lit8 v2, v2, 0xe

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_0
    :goto_0
    const-string v4, "%-16d%03d\n%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "strWrite":Ljava/lang/String;
    sget v4, Landroid/os/OppoManager;->TYPE_HW_SHUTDOWN:I

    invoke-static {v4, v3}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    .line 137
    const-string v4, "HwShutdownRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeHwShutdownCount hwShutdownCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hwShutdownTimeStrLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hwShutdownTimeStr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oppo/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 130
    .end local v3    # "strWrite":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private strToInt(Ljava/lang/String;II)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "res":I
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "strSub":Ljava/lang/String;
    if-nez v2, :cond_0

    move v1, v0

    .line 72
    .end local v0    # "res":I
    .local v1, "res":I
    :goto_0
    return v1

    .line 65
    .end local v1    # "res":I
    .restart local v0    # "res":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v0

    .line 67
    .end local v0    # "res":I
    .restart local v1    # "res":I
    goto :goto_0

    .line 70
    .end local v1    # "res":I
    .restart local v0    # "res":I
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 72
    .end local v0    # "res":I
    .restart local v1    # "res":I
    goto :goto_0
.end method


# virtual methods
.method public cancelHwShutdownFlag()V
    .locals 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdown:Z

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdown:Z

    .line 53
    const-string v0, "HwShutdownRecord"

    const-string v1, "cancelHwShutdownFlag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/HwShutdownRecord;->storeHwShutdownCount(Z)V

    .line 56
    :cond_0
    return-void
.end method

.method public recordHwShutdownFlag()V
    .locals 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdown:Z

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HwShutdownRecord;->mHwShutdown:Z

    .line 44
    const-string v0, "HwShutdownRecord"

    const-string v1, "recordHwShutdownFlag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HwShutdownRecord;->LoadHwShutdownCountIfNeed()V

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/HwShutdownRecord;->storeHwShutdownCount(Z)V

    .line 48
    :cond_0
    return-void
.end method
