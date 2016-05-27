.class public Lcom/android/server/am/OppoAbnormalAppManager;
.super Ljava/lang/Object;
.source "OppoAbnormalAppManager.java"


# static fields
.field public static DEBUG_DETAIL:Z

.field public static MAX_LIST_COUNT:I

.field public static TAG:Ljava/lang/String;

.field private static mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;


# instance fields
.field final ACTION_OPPO_GUARD_ELF_COUNT_RESTRICT_LIST:Ljava/lang/String;

.field final ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String;

.field final ACTION_OPPO_GUARD_ELF_SET_RESTRICT:Ljava/lang/String;

.field DEBUG:Z

.field final GUARD_ELF_FEATURE_NAME:Ljava/lang/String;

.field mAms:Lcom/android/server/am/ActivityManagerService;

.field mCountRestrictedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLastCheckTime:J

.field mPersistRestrictAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScreenOffRestrictAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScreenStatus:Z

.field mStartAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OppoAppStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStartInfoWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSwitch:Z

.field mUploadInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "OppoAbnormalAppManager"

    sput-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    .line 48
    const/16 v0, 0x64

    sput v0, Lcom/android/server/am/OppoAbnormalAppManager;->MAX_LIST_COUNT:I

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    .line 63
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenStatus:Z

    .line 72
    const-string v0, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String;

    .line 74
    const-string v0, "android.intent.action.OPPO_GUARD_ELF_SET_RESTRICT"

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->ACTION_OPPO_GUARD_ELF_SET_RESTRICT:Ljava/lang/String;

    .line 76
    const-string v0, "android.intent.action.OPPO_GUARD_ELF_COUNT_RESTRICT_LIST"

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->ACTION_OPPO_GUARD_ELF_COUNT_RESTRICT_LIST:Ljava/lang/String;

    .line 78
    const-string v0, "oppo.guard.elf.support"

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->GUARD_ELF_FEATURE_NAME:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 102
    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OppoAbnormalAppManager;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/server/am/OppoAbnormalAppManager;

    invoke-direct {v0}, Lcom/android/server/am/OppoAbnormalAppManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    .line 108
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    return-object v0
.end method

.method private handleCountRestrictedList()V
    .locals 6

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v4

    .line 451
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 452
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 453
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 454
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send ACTION_OPPO_GUARD_ELF_COUNT_RESTRICT_LIST! count == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.OPPO_GUARD_ELF_COUNT_RESTRICT_LIST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "count"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 461
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_0

    .line 462
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 464
    :cond_0
    return-void

    .line 454
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public cleanStartAppList()V
    .locals 2

    .prologue
    .line 124
    sget-boolean v0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "cleanAbnormalAppList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    return-void
.end method

.method public cleanUploadInfoList()V
    .locals 2

    .prologue
    .line 130
    sget-boolean v0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "cleanUploadInfoList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    return-void
.end method

.method public collectStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "startType"    # Ljava/lang/String;
    .param p4, "isThird"    # Z

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoAbnormalAppManager;->getAppInfoInList(Ljava/lang/String;)Lcom/android/server/am/OppoAppStartInfo;

    move-result-object v0

    .line 184
    .local v0, "appStartInfo":Lcom/android/server/am/OppoAppStartInfo;
    if-nez v0, :cond_0

    .line 185
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OppoAppStartInfo;->builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/am/OppoAppStartInfo;

    move-result-object v1

    .line 186
    .local v1, "info":Lcom/android/server/am/OppoAppStartInfo;
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v1    # "info":Lcom/android/server/am/OppoAppStartInfo;
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/am/OppoAppStartInfo;->increaseStartCount(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OppoAppStartInfo;->setCurStartTime(J)V

    goto :goto_0
.end method

.method public getAppInfoInList(Ljava/lang/String;)Lcom/android/server/am/OppoAppStartInfo;
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoAppStartInfo;

    .line 195
    .local v0, "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    .end local v0    # "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleAbnormalApp(Lcom/android/server/am/OppoAppStartInfo;)Z
    .locals 6
    .param p1, "appinfo"    # Lcom/android/server/am/OppoAppStartInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    invoke-virtual {p1}, Lcom/android/server/am/OppoAppStartInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/OppoAppStartInfo;->getIsThird()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 326
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getTopRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 327
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    .line 329
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "don\'t handle! return for top activity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v2

    .line 336
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v0, :cond_1

    const-string v4, "com.android.cts"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "CTS TEST! don\'t handle!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_1
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "handleAbnormalApp setPackageRestricted true!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/OppoAbnormalAppManager;->setPackageRestricted(Ljava/lang/String;Z)Z

    .line 344
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->killAbnormalApp(Ljava/lang/String;)V

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_1
    move v2, v3

    .line 351
    goto :goto_0

    .line 348
    :cond_3
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAbnormalApp! pkg isn\'t third app    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleStartAppInfo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "startType"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    if-nez v2, :cond_0

    .line 218
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    .line 209
    .local v0, "isThird":Z
    const-string v1, ""

    .line 210
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 212
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 213
    const/4 v0, 0x1

    .line 217
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, p2, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->handleStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public handleStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "startType"    # Ljava/lang/String;
    .param p4, "isThird"    # Z

    .prologue
    .line 221
    sget-boolean v2, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_0

    .line 222
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartAppInfo processName == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  startType == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 225
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    iput-wide v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    .line 227
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now Begin Monitor App StartInfo\'s Time == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/OppoAbnormalAppManager;->collectStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 234
    iget-wide v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/OppoGuardElfConfigUtil;->getCheckStartTimeInterval()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->notifyAbnormalInfo()V

    .line 238
    :cond_2
    sget-boolean v2, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_3

    .line 239
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartAppInfo cost time ==  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_3
    return-void
.end method

.method protected inRestrictAppList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "result":Z
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v2

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const/4 v0, 0x1

    .line 488
    :cond_0
    monitor-exit v2

    .line 489
    return v0

    .line 488
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "initData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->getInstance()Lcom/android/server/am/OppoAamUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils;->readScreenStatusFile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenStatus:Z

    .line 114
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->getInstance()Lcom/android/server/am/OppoAamUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils;->readScreenOffResrictFile()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    .line 115
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->getInstance()Lcom/android/server/am/OppoAamUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils;->readStartInfoWhiteFile()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    .line 116
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->getInstance()Lcom/android/server/am/OppoAamUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils;->readPersistRestrictFile()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    .line 117
    return-void
.end method

.method public initStatus(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 473
    .local v1, "pms":Landroid/content/pm/PackageManager;
    const-string v2, "oppo.guard.elf.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 474
    .local v0, "hasGuardElfFeature":Z
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initStatus hasGuardElfFeature is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    if-eqz v0, :cond_0

    .line 477
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    .line 478
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->initData()V

    .line 480
    :cond_0
    return-void
.end method

.method public isPackageRestricted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 244
    sget-object v1, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    monitor-exit v1

    .line 249
    :goto_0
    return v0

    .line 248
    :cond_0
    monitor-exit v1

    .line 249
    const/4 v0, 0x0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public killAbnormalApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 355
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "killAbnormalApp  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 360
    :cond_0
    return-void
.end method

.method public notifyAbnormalInfo()V
    .locals 6

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "hasAbnormalApp":Z
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoAppStartInfo;

    .line 138
    .local v0, "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartInfo;->getStartCount()I

    move-result v4

    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OppoGuardElfConfigUtil;->getAbnormalStartCount()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 139
    iget-boolean v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 140
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "#################  AbnormalInfo app  ##########################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v4, "abnormal appinfo"

    invoke-virtual {v0, v4}, Lcom/android/server/am/OppoAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 142
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "###############################################################"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    const/4 v3, 0x0

    .line 145
    .local v3, "isHandled":Z
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->handleAbnormalApp(Lcom/android/server/am/OppoAppStartInfo;)Z

    move-result v3

    .line 147
    if-eqz v3, :cond_0

    .line 148
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    const-string v5, "abnormal appinfo"

    invoke-virtual {v0, v5}, Lcom/android/server/am/OppoAppStartInfo;->infoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    const/4 v1, 0x1

    goto :goto_0

    .line 151
    .end local v3    # "isHandled":Z
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartInfo;->getStartCount()I

    move-result v4

    invoke-static {}, Lcom/android/server/OppoGuardElfConfigUtil;->getInstance()Lcom/android/server/OppoGuardElfConfigUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OppoGuardElfConfigUtil;->getCollectStartCount()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 152
    sget-boolean v4, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_3

    .line 153
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "---------------------  warning app  -----------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v4, "warning appinfo"

    invoke-virtual {v0, v4}, Lcom/android/server/am/OppoAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 155
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "-----------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    const-string v5, "warning appinfo"

    invoke-virtual {v0, v5}, Lcom/android/server/am/OppoAppStartInfo;->infoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_4
    sget-boolean v4, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_0

    .line 160
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "-----------------  normalInfo app  -----------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v4, "normal appinfo"

    invoke-virtual {v0, v4}, Lcom/android/server/am/OppoAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 162
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "-----------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    .end local v0    # "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->sendAbnormalNotify()V

    .line 170
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->cleanStartAppList()V

    .line 171
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->cleanUploadInfoList()V

    .line 174
    if-eqz v1, :cond_7

    .line 175
    sget-boolean v4, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_6

    .line 176
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v5, "hasAbnormalApp savePersistRestrictedFile!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoAbnormalAppManager;->savePersistRestrictedFile(Ljava/util/List;)V

    .line 179
    :cond_7
    return-void
.end method

.method public savePersistRestrictedFile(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "restrictList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 443
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "savePersistRestrictedFile!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->getInstance()Lcom/android/server/am/OppoAamUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/OppoAamUtils;->savePersistRestrictFile(Ljava/util/List;)V

    .line 445
    return-void
.end method

.method public sendAbnormalNotify()V
    .locals 4

    .prologue
    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "startinfo"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 366
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 368
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 371
    :cond_0
    return-void
.end method

.method public sendUnRestrictNotify(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPPO_GUARD_ELF_SET_RESTRICT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "unrestrict"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    :cond_0
    return-void
.end method

.method public setAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 468
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->initStatus(Landroid/content/Context;)V

    .line 469
    return-void
.end method

.method public setLastCheckTime(J)V
    .locals 1
    .param p1, "lastCheckTime"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    .line 121
    return-void
.end method

.method public setPackageRestricted(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isRestrict"    # Z

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "isChange":Z
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoAbnormalAppManager;->isPackageRestricted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    if-nez p2, :cond_1

    .line 256
    iget-boolean v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 257
    sget-object v1, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageRestricted remove packageName  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v2

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 260
    const/4 v0, 0x1

    .line 261
    monitor-exit v2

    .line 274
    :cond_1
    :goto_0
    return v0

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 264
    :cond_2
    if-eqz p2, :cond_1

    .line 265
    iget-boolean v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 266
    sget-object v1, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageRestricted add packageName  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_3
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v2

    .line 268
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const/4 v0, 0x1

    .line 270
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public setPackageUnRestricted(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-boolean v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/OppoAbnormalAppManager;->setPackageRestricted(Ljava/lang/String;Z)Z

    move-result v0

    .line 283
    .local v0, "isChange":Z
    if-eqz v0, :cond_0

    .line 284
    sget-object v1, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v2, "setPackageUnRestricted updateRestrictedFile!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mPersistRestrictAppList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoAbnormalAppManager;->savePersistRestrictedFile(Ljava/util/List;)V

    goto :goto_0
.end method

.method public updateScreenOffRestrictedList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "screenoffRestrictList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_0

    .line 385
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v3, "updateScreenOffRestrictedList!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 389
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScreenOffRestrictedList str == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v3

    .line 392
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 393
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 394
    monitor-exit v3

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateScreenStatus(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 429
    sget-boolean v0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "updateScreenStatus!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    sget-object v1, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v1

    .line 433
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenStatus:Z

    .line 434
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenStatus:Z

    if-nez v0, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->handleCountRestrictedList()V

    .line 439
    :cond_1
    return-void

    .line 434
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateStartInfoWhiteList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "startInfoWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_0

    .line 399
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v4, "updateStartInfoWhiteList!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 403
    .local v2, "str":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStartInfoWhiteList str == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "cancelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v4

    .line 410
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 411
    .restart local v2    # "str":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 412
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 417
    .end local v2    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 415
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 416
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 421
    .restart local v2    # "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_4

    .line 422
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceStopPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  cancel from startinfo whitelist!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v3, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, -0x2

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_2

    .line 426
    .end local v2    # "str":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public validNewProc(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v0, 0x1

    .line 292
    .local v0, "result":Z
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    if-nez v2, :cond_0

    move v1, v0

    .line 320
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 296
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoAbnormalAppManager;->isPackageRestricted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v3

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartInfoWhiteList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    const/4 v0, 0x0

    .line 307
    :cond_1
    monitor-exit v3

    :goto_1
    move v1, v0

    .line 320
    .restart local v1    # "result":I
    goto :goto_0

    .line 307
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 309
    :cond_2
    sget-object v3, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    monitor-enter v3

    .line 310
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenStatus:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mScreenOffRestrictAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 312
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCountRestrictedList add packageName == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mCountRestrictedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_3
    const/4 v0, 0x0

    .line 317
    :cond_4
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
