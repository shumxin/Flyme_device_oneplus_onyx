.class public Lcom/android/server/am/OppoAppStartupManager;
.super Ljava/lang/Object;
.source "OppoAppStartupManager.java"


# static fields
.field public static DEBUG_DETAIL:Z

.field public static TAG:Ljava/lang/String;

.field private static mOppoAppStartupManager:Lcom/android/server/am/OppoAppStartupManager;


# instance fields
.field DEBUG:Z

.field mActionBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAms:Lcom/android/server/am/ActivityManagerService;

.field mBlackguardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReceiverBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSeviceCpnBlacklist:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "OppoAppStartupManager"

    sput-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoAppStartupManager;->mOppoAppStartupManager:Lcom/android/server/am/OppoAppStartupManager;

    .line 40
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG:Z

    .line 43
    const-string v0, "persist.sys.startupmanager"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionBlackList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardList:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 59
    invoke-virtual {p0}, Lcom/android/server/am/OppoAppStartupManager;->initData()V

    .line 60
    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OppoAppStartupManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->mOppoAppStartupManager:Lcom/android/server/am/OppoAppStartupManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/server/am/OppoAppStartupManager;

    invoke-direct {v0}, Lcom/android/server/am/OppoAppStartupManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAppStartupManager;->mOppoAppStartupManager:Lcom/android/server/am/OppoAppStartupManager;

    .line 66
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->mOppoAppStartupManager:Lcom/android/server/am/OppoAppStartupManager;

    return-object v0
.end method

.method private updateActionBlackList()V
    .locals 2

    .prologue
    .line 262
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateActionBlackList!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 267
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getActionBlackList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    monitor-exit p0

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateBlackguardList()V
    .locals 2

    .prologue
    .line 272
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateBlackguardList!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getBlackguardList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    monitor-exit p0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateReceiverBlackList()V
    .locals 2

    .prologue
    .line 252
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateReceiverBlackList!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getReceiverBlackList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    monitor-exit p0

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSeviceCpnBlacklist()V
    .locals 2

    .prologue
    .line 242
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateSeviceCpnBlacklist!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/OppoAppStartupManagerUtils;->getSeviceCpnBlacklist()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    monitor-exit p0

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleBroadcastIncludeForceStop(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 82
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 84
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 85
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is the thirdparty app. remove the flag! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    xor-int/lit8 v0, v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public handleSpecialBroadcast(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "result":Z
    iget-boolean v5, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    if-nez v5, :cond_0

    move v4, v3

    .line 184
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 154
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 155
    :cond_1
    sget-boolean v5, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_2

    .line 156
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "intent == null || callerApp == null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v3

    .line 157
    .restart local v4    # "result":I
    goto :goto_0

    .line 162
    .end local v4    # "result":I
    :cond_3
    iget v5, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x2710

    if-gt v5, v6, :cond_5

    .line 163
    sget-boolean v5, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_4

    .line 164
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "handleSpecialBroadcast callerApp.uid <= 10000 return"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v4, v3

    .line 165
    .restart local v4    # "result":I
    goto :goto_0

    .line 168
    .end local v4    # "result":I
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 169
    .local v0, "cpn":Landroid/content/ComponentName;
    if-eqz v0, :cond_7

    .line 170
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "cpnPkgName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "cpnClassName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoAppStartupManager;->inReceiverlist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 178
    sget-boolean v5, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_6

    .line 179
    sget-object v5, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v6, "handleSpecialBroadcast return skip!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_6
    const/4 v3, 0x1

    .end local v1    # "cpnClassName":Ljava/lang/String;
    .end local v2    # "cpnPkgName":Ljava/lang/String;
    :cond_7
    move v4, v3

    .line 184
    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public handleStartOrBindService(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Z
    .locals 9
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 93
    const/4 v5, 0x0

    .line 94
    .local v5, "result":Z
    iget-boolean v7, p0, Lcom/android/server/am/OppoAppStartupManager;->mSwitch:Z

    if-nez v7, :cond_0

    move v6, v5

    .line 145
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 101
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_0
    iget v7, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v8, 0x2710

    if-gt v7, v8, :cond_2

    .line 102
    sget-boolean v7, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v7, :cond_1

    .line 103
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "handleStartOrBindService callerApp.uid <= 10000 return"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v6, v5

    .line 104
    .restart local v6    # "result":I
    goto :goto_0

    .line 107
    .end local v6    # "result":I
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 108
    .local v1, "cpn":Landroid/content/ComponentName;
    if-eqz v1, :cond_5

    .line 109
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "cpnPkgName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "cpnClassName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoAppStartupManager;->inSeviceCpnlist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 117
    sget-boolean v7, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v7, :cond_3

    .line 118
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "handleStartOrBindService return undo!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3
    const/4 v5, 0x1

    .end local v2    # "cpnClassName":Ljava/lang/String;
    .end local v3    # "cpnPkgName":Ljava/lang/String;
    :cond_4
    :goto_1
    move v6, v5

    .line 145
    .restart local v6    # "result":I
    goto :goto_0

    .line 122
    .end local v6    # "result":I
    :cond_5
    sget-boolean v7, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v7, :cond_6

    .line 123
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "handleStartOrBindService cpn = null!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAppStartupManager;->inActionlist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v4, :cond_8

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 134
    sget-boolean v7, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v7, :cond_7

    .line 135
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "handleStartOrBindService return undo!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_7
    const/4 v5, 0x1

    goto :goto_1

    .line 137
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAppStartupManager;->inBlackguardList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 138
    sget-boolean v7, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v7, :cond_9

    .line 139
    sget-object v7, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v8, "handleStartOrBindService inBlackguardList return undo!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_9
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public inActionlist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "result":Z
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mActionBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 214
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    sget-boolean v1, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 217
    sget-object v1, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inActionlist result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    return v0

    .line 214
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public inBlackguardList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "result":Z
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mBlackguardList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 225
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    sget-boolean v1, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 228
    sget-object v1, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inBlackguardList result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    return v0

    .line 225
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public inReceiverlist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cpnClassName"    # Ljava/lang/String;

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "result":Z
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    sget-boolean v1, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inReceiverlist result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    return v0

    .line 203
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public inSeviceCpnlist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cpnClassName"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "result":Z
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoAppStartupManager;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 192
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    sget-boolean v1, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 195
    sget-object v1, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inSeviceCpnlist result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    return v0

    .line 192
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "initData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateBlacklist()V

    .line 72
    return-void
.end method

.method public updateBlacklist()V
    .locals 2

    .prologue
    .line 233
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    const-string v1, "updateBlacklist!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateSeviceCpnBlacklist()V

    .line 236
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateReceiverBlackList()V

    .line 237
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateActionBlackList()V

    .line 238
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManager;->updateBlackguardList()V

    .line 239
    return-void
.end method
