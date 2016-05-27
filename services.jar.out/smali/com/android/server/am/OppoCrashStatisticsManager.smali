.class public Lcom/android/server/am/OppoCrashStatisticsManager;
.super Ljava/lang/Object;
.source "OppoCrashStatisticsManager.java"


# static fields
.field private static final CRASH_TIMEOUT:J = 0x493e0L

.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "OppoCrashDataStatistics"

.field private static mOppoCrashManager:Lcom/android/server/am/OppoCrashStatisticsManager;


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field mCrashAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OppoCrashStatisticsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessRecord:Lcom/android/server/am/ProcessRecord;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OppoCrashStatisticsManager;->DEBUG:Z

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoCrashStatisticsManager;->mOppoCrashManager:Lcom/android/server/am/OppoCrashStatisticsManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/android/server/am/OppoCrashStatisticsManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoCrashStatisticsManager;->mCrashAppList:Ljava/util/List;

    .line 38
    iput-object v1, p0, Lcom/android/server/am/OppoCrashStatisticsManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/OppoCrashStatisticsManager;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/server/am/OppoCrashStatisticsManager;->mOppoCrashManager:Lcom/android/server/am/OppoCrashStatisticsManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/server/am/OppoCrashStatisticsManager;

    invoke-direct {v0}, Lcom/android/server/am/OppoCrashStatisticsManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoCrashStatisticsManager;->mOppoCrashManager:Lcom/android/server/am/OppoCrashStatisticsManager;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoCrashStatisticsManager;->mOppoCrashManager:Lcom/android/server/am/OppoCrashStatisticsManager;

    return-object v0
.end method


# virtual methods
.method public collectCrashAppInfo()Z
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 56
    iget-object v9, p0, Lcom/android/server/am/OppoCrashStatisticsManager;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    if-nez v9, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v7

    .line 60
    :cond_1
    iget-object v9, p0, Lcom/android/server/am/OppoCrashStatisticsManager;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 61
    .local v6, "processName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 65
    invoke-virtual {p0, v6}, Lcom/android/server/am/OppoCrashStatisticsManager;->getCrashAppInfoInList(Ljava/lang/String;)Lcom/android/server/am/OppoCrashStatisticsInfo;

    move-result-object v0

    .line 66
    .local v0, "appCrashInfo":Lcom/android/server/am/OppoCrashStatisticsInfo;
    sget-boolean v9, Lcom/android/server/am/OppoCrashStatisticsManager;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "OppoCrashDataStatistics"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "collectCrashAppInfo appCrashInfo=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    if-nez v0, :cond_3

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 70
    .local v4, "firstTime":J
    new-instance v1, Lcom/android/server/am/OppoCrashStatisticsInfo;

    invoke-direct {v1, v6, v4, v5}, Lcom/android/server/am/OppoCrashStatisticsInfo;-><init>(Ljava/lang/String;J)V

    .line 71
    .local v1, "info":Lcom/android/server/am/OppoCrashStatisticsInfo;
    iget-object v7, p0, Lcom/android/server/am/OppoCrashStatisticsManager;->mCrashAppList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v7, "OppoCrashDataStatistics"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "collectCrashAppInfo add=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 73
    goto :goto_0

    .line 75
    .end local v1    # "info":Lcom/android/server/am/OppoCrashStatisticsInfo;
    .end local v4    # "firstTime":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 76
    .local v2, "curTime":J
    invoke-virtual {v0}, Lcom/android/server/am/OppoCrashStatisticsInfo;->getFirstStartTime()J

    move-result-wide v10

    const-wide/32 v12, 0x493e0

    add-long/2addr v10, v12

    cmp-long v9, v2, v10

    if-lez v9, :cond_0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/OppoCrashStatisticsInfo;->setFirstStartTime(J)V

    move v7, v8

    .line 78
    goto :goto_0
.end method

.method public getCrashAppInfoInList(Ljava/lang/String;)Lcom/android/server/am/OppoCrashStatisticsInfo;
    .locals 10
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v5, 0x0

    .line 89
    .local v5, "resultInfo":Lcom/android/server/am/OppoCrashStatisticsInfo;
    iget-object v6, p0, Lcom/android/server/am/OppoCrashStatisticsManager;->mCrashAppList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoCrashStatisticsInfo;

    .line 91
    .local v0, "appinfo":Lcom/android/server/am/OppoCrashStatisticsInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OppoCrashStatisticsInfo;->getProcessName()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "proName":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    move-object v5, v0

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 97
    .local v2, "curTime":J
    invoke-virtual {v0}, Lcom/android/server/am/OppoCrashStatisticsInfo;->getFirstStartTime()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    add-long/2addr v6, v8

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 103
    .end local v0    # "appinfo":Lcom/android/server/am/OppoCrashStatisticsInfo;
    .end local v2    # "curTime":J
    .end local v4    # "proName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public setActivityManager(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/am/OppoCrashStatisticsManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 53
    return-void
.end method

.method public setProcessRecord(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "processRecord"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/am/OppoCrashStatisticsManager;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    .line 108
    return-void
.end method
