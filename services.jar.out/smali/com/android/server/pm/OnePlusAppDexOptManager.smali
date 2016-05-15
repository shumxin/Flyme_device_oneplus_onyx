.class public Lcom/android/server/pm/OnePlusAppDexOptManager;
.super Ljava/lang/Object;
.source "OnePlusAppDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;,
        Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;
    }
.end annotation


# static fields
.field private static final APP_DEX_WAIT_TIME:J = 0x1388L

.field public static DEBUG:Z = false

.field private static INSTANCE:Lcom/android/server/pm/OnePlusAppDexOptManager; = null

.field public static IN_USING:Z = false

.field private static final IS_H2_OS:Z

.field private static final MSG_APPDEX_BOOT_COMPLETED:I = 0x4

.field private static final MSG_APPDEX_ODEX_FINISH:I = 0x3

.field private static final MSG_APPDEX_ODEX_ONE_APP:I = 0x2

.field private static final MSG_APPDEX_ODEX_START:I = 0x1

.field public static OPT_OTA:Z = false

.field public static PKG_DEBUG:Z = false

.field private static final PROP_BOOT_COMPLETED:Ljava/lang/String; = "sys.boot_completed"

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.appdex.debug"

.field private static final PROP_OTA:Ljava/lang/String; = "persist.sys.appdex.ota"

.field private static final PROP_ROM_CUR_VERSION:Ljava/lang/String; = "ro.build.version.ota"

.field private static final PROP_ROM_DEX2OAT_THREAD_COUNT:Ljava/lang/String; = "sys.vm.dex2oat-threadcount"

.field private static final PROP_ROM_LAST_VERSION:Ljava/lang/String; = "persist.sys.appdex.lastrom"

.field private static final PROP_USING:Ljava/lang/String; = "persist.sys.appdex.using"

.field private static ROM_LAST_VERSION:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "OnePlusAppDexOptManager"

.field private static final THIRD_APP_DEX_DATA_THRESHOLD:J = 0x6400000L

.field public static final VERSION:I = 0xf45665

.field private static mDexOptDone:Z

.field private static mIsUpgrade:Z


# instance fields
.field private mAbnormalNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppDexHandler:Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;

.field private mContext:Landroid/content/Context;

.field private mCurOdexThreadCount:Ljava/lang/String;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private mOrigOdexThreadCount:Ljava/lang/String;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    sput-boolean v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->IN_USING:Z

    .line 66
    sput-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    .line 67
    sput-boolean v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->PKG_DEBUG:Z

    .line 68
    sput-boolean v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->OPT_OTA:Z

    .line 69
    sput-object v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->ROM_LAST_VERSION:Ljava/lang/String;

    .line 82
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->IS_H2_OS:Z

    .line 94
    sput-object v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->INSTANCE:Lcom/android/server/pm/OnePlusAppDexOptManager;

    .line 97
    sput-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->mDexOptDone:Z

    .line 98
    sput-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->mIsUpgrade:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "4"

    iput-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mOrigOdexThreadCount:Ljava/lang/String;

    .line 80
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mCurOdexThreadCount:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPkgMap:Ljava/util/HashMap;

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "game"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.tencent.mm"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.tencent.mobileqq"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.sina.weibo"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "com.popcap"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "com.eg.android.AlipayGphone"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.android.bankabc"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.icbc"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mAbnormalNameList:Ljava/util/ArrayList;

    .line 107
    invoke-direct {p0}, Lcom/android/server/pm/OnePlusAppDexOptManager;->beforeConstruct()V

    .line 108
    invoke-direct {p0}, Lcom/android/server/pm/OnePlusAppDexOptManager;->afterConstruct()V

    .line 109
    iput-object p1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 111
    const-string v0, "all"

    invoke-direct {p0, v0}, Lcom/android/server/pm/OnePlusAppDexOptManager;->dumpInfo(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/OnePlusAppDexOptManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/OnePlusAppDexOptManager;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->sendDexOptMessage(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/OnePlusAppDexOptManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/OnePlusAppDexOptManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mOrigOdexThreadCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/OnePlusAppDexOptManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/OnePlusAppDexOptManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mCurOdexThreadCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/OnePlusAppDexOptManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/OnePlusAppDexOptManager;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/pm/OnePlusAppDexOptManager;->performThirdAppDexOptByMap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/OnePlusAppDexOptManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/OnePlusAppDexOptManager;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/pm/OnePlusAppDexOptManager;->afterAppDexOptFinished()V

    return-void
.end method

.method private afterAppDexOptFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    const-string v1, "OnePlusAppDexOptManager"

    const-string v2, "# afterAppDexOptFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Lcom/android/server/pm/OnePlusAppDexOptManager;->isUsing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 203
    :cond_0
    sget-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 204
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->openPMSLog(Z)V

    .line 206
    :cond_1
    const-string v1, "ro.build.version.ota"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "curVersion":Ljava/lang/String;
    const-string v1, "persist.sys.appdex.lastrom"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->mDexOptDone:Z

    .line 209
    iget-object v1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 210
    iget-object v1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mAbnormalNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 211
    iput-object v3, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mAbnormalNameList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private afterConstruct()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 176
    invoke-static {}, Lcom/android/server/pm/OnePlusAppDexOptManager;->isUsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 179
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 180
    invoke-direct {p0, v3}, Lcom/android/server/pm/OnePlusAppDexOptManager;->openPMSLog(Z)V

    .line 182
    :cond_1
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "ThirdAppDex"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 184
    iget-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 186
    new-instance v0, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;

    iget-object v1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;-><init>(Lcom/android/server/pm/OnePlusAppDexOptManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;

    goto :goto_0
.end method

.method private beforeConstruct()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    const-string v1, "persist.sys.appdex.using"

    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->IN_USING:Z

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->IN_USING:Z

    .line 162
    const-string v1, "persist.sys.appdex.debug"

    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    .line 163
    const-string v1, "persist.sys.appdex.ota"

    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->OPT_OTA:Z

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->OPT_OTA:Z

    .line 165
    const-string v1, "ro.build.version.ota"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "curVersion":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 168
    const-string v1, "persist.sys.appdex.lastrom"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->ROM_LAST_VERSION:Ljava/lang/String;

    .line 169
    sget-object v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->ROM_LAST_VERSION:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->ROM_LAST_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->mIsUpgrade:Z

    .line 173
    :cond_1
    return-void
.end method

.method private deletePkgCacheFiles(Landroid/content/pm/PackageParser$Package;)I
    .locals 16
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 396
    sget-boolean v13, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 397
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# deletePkgCacheFiles # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 398
    :cond_0
    const/4 v12, 0x0

    .line 400
    .local v12, "ret":I
    if-nez p1, :cond_1

    .line 401
    const/4 v13, -0x1

    .line 438
    :goto_0
    return v13

    .line 404
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v11

    .line 405
    .local v11, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->getPkgInstructionSets(Landroid/content/pm/PackageParser$Package;)[Ljava/lang/String;

    move-result-object v8

    .line 406
    .local v8, "instSets":[Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    .line 407
    :cond_2
    const/4 v13, -0x2

    goto :goto_0

    .line 410
    :cond_3
    if-eqz v8, :cond_4

    array-length v13, v8

    const/4 v14, 0x1

    if-ge v13, v14, :cond_5

    .line 411
    :cond_4
    const/4 v13, -0x3

    goto :goto_0

    .line 414
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 415
    .local v10, "path":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 418
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v9, :cond_6

    aget-object v7, v1, v6

    .line 420
    .local v7, "inst":Ljava/lang/String;
    if-nez v7, :cond_8

    .line 418
    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 423
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lcom/android/server/pm/OnePlusAppDexOptManager;->getCachePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "cachePath":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 427
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 429
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 431
    .end local v2    # "cachePath":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 432
    .local v3, "e":Ljava/lang/Exception;
    add-int/lit8 v12, v12, 0x1

    .line 433
    const-string v13, "OnePlusAppDexOptManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# Exception # deletePkgCacheFiles # path="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " # inst="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " e="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 438
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "i$":I
    .end local v7    # "inst":Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "path":Ljava/lang/String;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private doAppOdex(Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;)I
    .locals 10
    .param p1, "adi"    # Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;

    .prologue
    const/4 v7, 0x0

    .line 356
    const/4 v3, 0x1

    .line 357
    .local v3, "ret":I
    if-eqz p1, :cond_4

    .line 358
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 359
    .local v0, "dataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    .line 361
    .local v4, "usableSpace":J
    const-wide/32 v8, 0x6400000

    cmp-long v8, v4, v8

    if-gez v8, :cond_0

    .line 392
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v4    # "usableSpace":J
    :goto_0
    return v7

    .line 365
    .restart local v0    # "dataDir":Ljava/io/File;
    .restart local v4    # "usableSpace":J
    :cond_0
    const/4 v6, 0x0

    .line 367
    .local v6, "wakeLock":Landroid/os/PowerManager$WakeLock;
    iget-object v8, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 368
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v8, 0x1

    const-string v9, "ThirdAppDex"

    invoke-virtual {v2, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 369
    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 370
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 372
    iget-object v1, p1, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    .line 373
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v1, :cond_1

    .line 374
    const/4 v7, -0x2

    goto :goto_0

    .line 376
    :cond_1
    const/4 v7, 0x2

    iput v7, p1, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mDexOptStep:I

    .line 377
    const-string v7, "OnePlusAppDexOptManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# doAppOdex # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    if-eqz v7, :cond_3

    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 379
    iget-object v7, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7, v1}, Lcom/android/server/pm/PackageManagerService;->performOnePlusAppDexOpt(Landroid/content/pm/PackageParser$Package;)V

    .line 380
    const/4 v7, 0x3

    iput v7, p1, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mDexOptStep:I

    .line 385
    :goto_1
    if-eqz v6, :cond_2

    .line 386
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .end local v0    # "dataDir":Ljava/io/File;
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v4    # "usableSpace":J
    .end local v6    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_2
    move v7, v3

    .line 392
    goto :goto_0

    .line 382
    .restart local v0    # "dataDir":Ljava/io/File;
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "pm":Landroid/os/PowerManager;
    .restart local v4    # "usableSpace":J
    .restart local v6    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_3
    const-string v7, "OnePlusAppDexOptManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# doAppOdex # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " # removed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v7, 0x4

    iput v7, p1, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mDexOptStep:I

    goto :goto_1

    .line 390
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v4    # "usableSpace":J
    .end local v6    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_4
    const/4 v3, -0x3

    goto :goto_2
.end method

.method private dumpInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 468
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "OnePlusAppDexOptManager"

    const-string v1, "# dump # VERSION # 16012901"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v0, "OnePlusAppDexOptManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # IN_USING # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->IN_USING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v0, "OnePlusAppDexOptManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # DEBUG # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v0, "OnePlusAppDexOptManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # OPT_OTA # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->OPT_OTA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v0, "OnePlusAppDexOptManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mIsUpgrade # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->mIsUpgrade:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCachePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 442
    sget-boolean v4, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# getCachePath # apkPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # instructionSet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 445
    :cond_0
    const-string v1, "/data/dalvik-cache/"

    .line 446
    .local v1, "DALVIK_CACHE_PREFIX":Ljava/lang/String;
    const-string v0, "/classes.dex"

    .line 447
    .local v0, "DALVIK_CACHE_POSTFIX":Ljava/lang/String;
    const/4 v2, 0x0

    .line 452
    .local v2, "cachePath":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    :cond_1
    move-object v3, v2

    .line 464
    .end local v2    # "cachePath":Ljava/lang/String;
    .local v3, "cachePath":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 456
    .end local v3    # "cachePath":Ljava/lang/String;
    .restart local v2    # "cachePath":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_4

    :cond_3
    move-object v3, v2

    .line 457
    .end local v2    # "cachePath":Ljava/lang/String;
    .restart local v3    # "cachePath":Ljava/lang/String;
    goto :goto_0

    .line 460
    .end local v3    # "cachePath":Ljava/lang/String;
    .restart local v2    # "cachePath":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    const/16 v4, 0x2f

    const/16 v5, 0x40

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# getCachePath # cachePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    move-object v3, v2

    .line 464
    .end local v2    # "cachePath":Ljava/lang/String;
    .restart local v3    # "cachePath":Ljava/lang/String;
    goto :goto_0
.end method

.method public static final getInstance(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OnePlusAppDexOptManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->INSTANCE:Lcom/android/server/pm/OnePlusAppDexOptManager;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/server/pm/OnePlusAppDexOptManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/OnePlusAppDexOptManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    sput-object v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->INSTANCE:Lcom/android/server/pm/OnePlusAppDexOptManager;

    .line 118
    :cond_0
    sget-object v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->INSTANCE:Lcom/android/server/pm/OnePlusAppDexOptManager;

    return-object v0
.end method

.method private getOneAppToOdex()Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;
    .locals 5

    .prologue
    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, "ret":Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;
    iget-object v3, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPkgMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 343
    iget-object v3, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 344
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;

    .line 346
    .local v0, "adi":Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mDexOptStep:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 347
    move-object v2, v0

    .line 352
    .end local v0    # "adi":Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;>;"
    :cond_1
    return-object v2
.end method

.method public static isUsing()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 122
    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->OPT_OTA:Z

    if-eqz v2, :cond_1

    .line 123
    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->mIsUpgrade:Z

    if-nez v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->IS_H2_OS:Z

    if-eqz v2, :cond_0

    .line 132
    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->IN_USING:Z

    if-eqz v2, :cond_0

    .line 136
    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->mDexOptDone:Z

    if-eq v2, v1, :cond_0

    .line 140
    sget-boolean v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 141
    const-string v0, "# isUsing # true"

    invoke-static {v0}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 142
    goto :goto_0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "OnePlusAppDexOptManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method

.method private openPMSLog(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 190
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    .line 191
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    .line 192
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    .line 193
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    .line 194
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    .line 195
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    .line 196
    return-void
.end method

.method private performThirdAppDexOptByMap()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 324
    sget-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 325
    const-string v2, "# performThirdAppDexOptByMap # "

    invoke-static {v2}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/OnePlusAppDexOptManager;->getOneAppToOdex()Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;

    move-result-object v0

    .line 328
    .local v0, "adi":Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;
    if-eqz v0, :cond_2

    .line 329
    invoke-direct {p0, v0}, Lcom/android/server/pm/OnePlusAppDexOptManager;->doAppOdex(Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;)I

    move-result v1

    .line 330
    .local v1, "ret":I
    if-nez v1, :cond_1

    .line 331
    invoke-direct {p0, v3}, Lcom/android/server/pm/OnePlusAppDexOptManager;->sendDexOptMessage(I)V

    .line 338
    .end local v1    # "ret":I
    :goto_0
    return-void

    .line 333
    .restart local v1    # "ret":I
    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/pm/OnePlusAppDexOptManager;->sendDexOptMessage(I)V

    goto :goto_0

    .line 336
    .end local v1    # "ret":I
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/pm/OnePlusAppDexOptManager;->sendDexOptMessage(I)V

    goto :goto_0
.end method

.method private sendDexOptMessage(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 320
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mAppDexHandler:Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 321
    return-void
.end method

.method private static setDebugLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "k"    # Ljava/lang/String;
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugLevel # k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 505
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const-string v0, "ota"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    sput-boolean v2, Lcom/android/server/pm/OnePlusAppDexOptManager;->OPT_OTA:Z

    .line 512
    const-string v0, "persist.sys.appdex.ota"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_2
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->OPT_OTA:Z

    .line 515
    const-string v0, "persist.sys.appdex.ota"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_3
    const-string v0, "debugpersist"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 518
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 519
    const-string v0, "persist.sys.appdex.debug"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_4
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "persist.sys.appdex.debug"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_5
    const-string v0, "usepersist"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 524
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 525
    const-string v0, "persist.sys.appdex.using"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_6
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const-string v0, "persist.sys.appdex.using"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_7
    const-string v0, "dump"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    sget-object v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->INSTANCE:Lcom/android/server/pm/OnePlusAppDexOptManager;

    if-eqz v0, :cond_0

    .line 531
    sget-object v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->INSTANCE:Lcom/android/server/pm/OnePlusAppDexOptManager;

    invoke-direct {v0, p1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->dumpInfo(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private skipAbnormalPackages(Landroid/content/pm/PackageParser$Package;)Z
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v2, 0x1

    .line 581
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 594
    :cond_0
    :goto_0
    return v2

    .line 585
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mAbnormalNameList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 586
    iget-object v3, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mAbnormalNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 587
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 588
    const-string v3, "OnePlusAppDexOptManager"

    const-string v4, "# collectAppDexList # abnormal pkg , return"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static updateDebugLevel(Ljava/lang/String;)V
    .locals 6
    .param p0, "strLevel"    # Ljava/lang/String;

    .prologue
    .line 485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDebugLevel # = strLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 486
    if-eqz p0, :cond_3

    .line 487
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "maps":[Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maps="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 490
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 491
    aget-object v3, v2, v0

    .line 492
    .local v3, "prop":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "kv":[Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kv="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 495
    :cond_1
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 496
    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v4, v5}, Lcom/android/server/pm/OnePlusAppDexOptManager;->setDebugLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v0    # "i":I
    .end local v1    # "kv":[Ljava/lang/String;
    .end local v2    # "maps":[Ljava/lang/String;
    .end local v3    # "prop":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public collectAppDexList(Landroid/content/pm/PackageParser$Package;Z)I
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "isBooting"    # Z

    .prologue
    .line 215
    sget-boolean v6, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# collectAppDexList # pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " # isBooting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 217
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OnePlusAppDexOptManager;->isUsing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 218
    const/4 v6, -0x1

    .line 256
    :goto_0
    return v6

    .line 221
    :cond_1
    if-eqz p1, :cond_8

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->skipAbnormalPackages(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# collectAppDexList # skip abnormal pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 224
    const/4 v6, -0x4

    goto :goto_0

    .line 227
    :cond_2
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 228
    .local v0, "ac":Landroid/content/pm/PackageParser$Activity;
    if-eqz v0, :cond_3

    .line 229
    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 230
    .local v3, "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 231
    .local v2, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-eqz v2, :cond_4

    .line 232
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 233
    sget-boolean v6, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# collectAppDexList # pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " # laucher app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 235
    :cond_5
    const/4 v6, -0x2

    goto :goto_0

    .line 242
    .end local v0    # "ac":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v3    # "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->deletePkgCacheFiles(Landroid/content/pm/PackageParser$Package;)I

    .line 243
    if-eqz p2, :cond_7

    .line 244
    iget-object v6, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPkgMap:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    new-instance v8, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;

    invoke-direct {v8, p0, p1}, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;-><init>(Lcom/android/server/pm/OnePlusAppDexOptManager;Landroid/content/pm/PackageParser$Package;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/4 v6, 0x3

    goto/16 :goto_0

    .line 247
    :cond_7
    iget-object v6, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPkgMap:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;

    .line 248
    .local v1, "adi":Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;
    if-eqz v1, :cond_8

    .line 249
    iget-object v6, v1, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    invoke-direct {p0, v6}, Lcom/android/server/pm/OnePlusAppDexOptManager;->deletePkgCacheFiles(Landroid/content/pm/PackageParser$Package;)I

    .line 250
    invoke-virtual {v1, p1}, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->setPackageParser(Landroid/content/pm/PackageParser$Package;)V

    .line 251
    const/4 v6, 0x2

    iput v6, v1, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mFlag:I

    .line 252
    const/4 v6, 0x1

    iput v6, v1, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mDexOptStep:I

    .line 256
    .end local v1    # "adi":Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;
    :cond_8
    const/4 v6, -0x3

    goto/16 :goto_0
.end method

.method public collectAppDexListDone()V
    .locals 2

    .prologue
    .line 260
    sget-boolean v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# collectAppDexListDone # size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OnePlusAppDexOptManager;->isUsing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/pm/OnePlusAppDexOptManager;->sendDexOptMessage(I)V

    goto :goto_0
.end method

.method public getAppDexOptStage()I
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/android/server/pm/OnePlusAppDexOptManager;->isUsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 150
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mDexOptDone:Z

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 155
    const/4 v0, 0x3

    goto :goto_0

    .line 157
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method
