.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;,
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 324
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 325
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 185
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 306
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 309
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 312
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 313
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 320
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 315
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 301
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    return-void
.end method

.method private run()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v7, 0x1

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 211
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 216
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 226
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 231
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 232
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 241
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 245
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 253
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 256
    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 259
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 261
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 262
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 265
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 270
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 273
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 276
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 277
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 281
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 282
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 283
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 297
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :catch_0
    move-exception v6

    .line 285
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 338
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 341
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 343
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 344
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 350
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 354
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 358
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 361
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 364
    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "cryptState":Ljava/lang/String;
    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    const-string v2, "SystemServer"

    const-string v4, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 374
    :cond_0
    :goto_0
    const-string v2, "SystemServer"

    const-string v4, "Package Manager"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 377
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 378
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 380
    const-string v2, "SystemServer"

    const-string v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 384
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 387
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 388
    return-void

    .line 368
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const-string v2, "SystemServer"

    const-string v4, "Device encrypted - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 375
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 398
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 401
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 402
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 405
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 408
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 409
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1348
    const/4 v4, 0x0

    .line 1349
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1350
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 1353
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1356
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1357
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1359
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1361
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 1362
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1363
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1372
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 1365
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 1366
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1369
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1370
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startOtherServices()V
    .locals 117

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 417
    .local v4, "context":Landroid/content/Context;
    const/16 v34, 0x0

    .line 418
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v50, 0x0

    .line 419
    .local v50, "contentService":Lcom/android/server/content/ContentService;
    const/16 v107, 0x0

    .line 420
    .local v107, "vibrator":Lcom/android/server/VibratorService;
    const/16 v36, 0x0

    .line 421
    .local v36, "alarm":Landroid/app/IAlarmManager;
    const/16 v87, 0x0

    .line 422
    .local v87, "mountService":Lcom/android/server/MountService;
    const/4 v8, 0x0

    .line 423
    .local v8, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v7, 0x0

    .line 424
    .local v7, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v89, 0x0

    .line 425
    .local v89, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v46, 0x0

    .line 426
    .local v46, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v90, 0x0

    .line 427
    .local v90, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v99, 0x0

    .line 428
    .local v99, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v116, 0x0

    .line 429
    .local v116, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v41, 0x0

    .line 430
    .local v41, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v106, 0x0

    .line 431
    .local v106, "usb":Lcom/android/server/usb/UsbService;
    const/16 v97, 0x0

    .line 432
    .local v97, "serial":Lcom/android/server/SerialService;
    const/16 v93, 0x0

    .line 433
    .local v93, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v43, 0x0

    .line 434
    .local v43, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v72, 0x0

    .line 435
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v102, 0x0

    .line 436
    .local v102, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v48, 0x0

    .line 437
    .local v48, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v39, 0x0

    .line 438
    .local v39, "audioService":Landroid/media/AudioService;
    const/16 v86, 0x0

    .line 439
    .local v86, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v81, 0x0

    .line 440
    .local v81, "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    const/16 v80, 0x0

    .line 442
    .local v80, "mOemExService":Lcom/android/server/OemExService;
    const-string v5, "config.disable_storage"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v66

    .line 443
    .local v66, "disableStorage":Z
    const-string v5, "config.disable_media"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 444
    .local v62, "disableMedia":Z
    const-string v5, "config.disable_bluetooth"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 445
    .local v60, "disableBluetooth":Z
    const-string v5, "config.disable_telephony"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v68

    .line 446
    .local v68, "disableTelephony":Z
    const-string v5, "config.disable_location"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 447
    .local v61, "disableLocation":Z
    const-string v5, "config.disable_systemui"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v67

    .line 448
    .local v67, "disableSystemUI":Z
    const-string v5, "config.disable_noncore"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v65

    .line 449
    .local v65, "disableNonCoreServices":Z
    const-string v5, "config.disable_network"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 450
    .local v63, "disableNetwork":Z
    const-string v5, "config.disable_networktime"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 451
    .local v64, "disableNetworkTime":Z
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    .line 452
    .local v74, "isEmulator":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #android:bool@config_digitalPenCapable#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v55

    .line 454
    .local v55, "digitalPenCapable":Z
    const-string v5, "config.disable_atlas"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 457
    .local v59, "disableAtlas":Z
    :try_start_0
    const-string v5, "SystemServer"

    const-string v6, "Reading configuration..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 460
    const-string v5, "SystemServer"

    const-string v6, "Scheduling Policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v5, "scheduling_policy"

    new-instance v6, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v6}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 465
    const-string v5, "SystemServer"

    const-string v6, "Telephony Registry"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v103, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v103

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_41

    .line 467
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v103, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v5, "telephony.registry"

    move-object/from16 v0, v103

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 469
    const-string v5, "SystemServer"

    const-string v6, "Entropy Mixer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v5, "entropy"

    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 472
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 477
    :try_start_2
    const-string v5, "SystemServer"

    const-string v6, "Account Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v35, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 479
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v35, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v5, "account"

    move-object/from16 v0, v35

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_42

    move-object/from16 v34, v35

    .line 484
    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_4
    const-string v5, "SystemServer"

    const-string v6, "Content Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2b

    const/4 v5, 0x1

    :goto_1
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v50

    .line 488
    const-string v5, "SystemServer"

    const-string v6, "System Content Providers"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 491
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 492
    const-string v5, "SystemServer"

    const-string v6, "MaterialTheme Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v82, Lcom/android/server/theme/MaterialThemeService;

    invoke-direct/range {v82 .. v82}, Lcom/android/server/theme/MaterialThemeService;-><init>()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 494
    .end local v81    # "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    .local v82, "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    :try_start_5
    const-string v5, "material_theme"

    move-object/from16 v0, v82

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 496
    invoke-virtual/range {v82 .. v82}, Lcom/android/server/theme/MaterialThemeService;->getForceMaterialTheme()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    const/16 v54, 0x1

    .line 497
    .local v54, "dark":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    if-eqz v54, :cond_2d

    const v5, #android:style@Theme.DeviceDefault#t

    :goto_3
    invoke-virtual {v6, v5}, Landroid/content/Context;->setTheme(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/theme/MaterialThemeService;->setSystemContext(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_43

    move-object/from16 v81, v82

    .line 503
    .end local v54    # "dark":Z
    .end local v82    # "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    .restart local v81    # "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    :cond_0
    :goto_4
    :try_start_6
    const-string v5, "SystemServer"

    const-string v6, "Vibrator Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v108, Lcom/android/server/VibratorService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 505
    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .local v108, "vibrator":Lcom/android/server/VibratorService;
    :try_start_7
    const-string v5, "vibrator"

    move-object/from16 v0, v108

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 507
    const-string v5, "SystemServer"

    const-string v6, "Consumer IR Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v49, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_44

    .line 509
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v49, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_8
    const-string v5, "consumer_ir"

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 512
    const-string v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v36

    .line 515
    const-string v5, "SystemServer"

    const-string v6, "Init Watchdog"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v112

    .line 517
    .local v112, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v112

    invoke-virtual {v0, v4, v5}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 519
    const-string v5, "SystemServer"

    const-string v6, "Input Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v73, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_45

    .line 522
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_9
    const-string v5, "SystemServer"

    const-string v6, "Window Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2f

    const/4 v5, 0x1

    :goto_5
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v73

    invoke-static {v4, v0, v5, v6, v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v116

    .line 526
    const-string v5, "window"

    move-object/from16 v0, v116

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 527
    const-string v5, "input"

    move-object/from16 v0, v73

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v116

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 531
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    move-object/from16 v0, v73

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 532
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/input/InputManagerService;->start()V

    .line 535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 540
    if-eqz v74, :cond_30

    .line 541
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooh Service (emulator)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_6
    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v102, v103

    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v107, v108

    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .end local v112    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    :goto_7
    const/16 v100, 0x0

    .local v100, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v95, 0x0

    .local v95, "notification":Landroid/app/INotificationManager;
    const/16 v70, 0x0

    .local v70, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v110, 0x0

    .local v110, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v76, 0x0

    .local v76, "location":Lcom/android/server/LocationManagerService;
    const/16 v51, 0x0

    .local v51, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v104, 0x0

    .local v104, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v78, 0x0

    .local v78, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v37, 0x0

    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v83, 0x0

    .local v83, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 575
    :try_start_a
    const-string v5, "SystemServer"

    const-string v6, "Input Method Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v71, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v71

    move-object/from16 v1, v116

    invoke-direct {v0, v4, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 577
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v71, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_b
    const-string v5, "input_method"

    move-object/from16 v0, v71

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_40

    move-object/from16 v70, v71

    .line 583
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_8
    :try_start_c
    const-string v5, "SystemServer"

    const-string v6, "Accessibility Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v5, "accessibility"

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 593
    :cond_1
    :goto_9
    :try_start_d
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 598
    :goto_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 599
    if-nez v66, :cond_2

    const-string v5, "0"

    const-string v6, "system_init.startmountservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 606
    :try_start_e
    const-string v5, "SystemServer"

    const-string v6, "Mount Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v88, Lcom/android/server/MountService;

    move-object/from16 v0, v88

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .line 608
    .end local v87    # "mountService":Lcom/android/server/MountService;
    .local v88, "mountService":Lcom/android/server/MountService;
    :try_start_f
    const-string v5, "mount"

    move-object/from16 v0, v88

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3f

    move-object/from16 v87, v88

    .line 616
    .end local v88    # "mountService":Lcom/android/server/MountService;
    .restart local v87    # "mountService":Lcom/android/server/MountService;
    :cond_2
    :goto_b
    :try_start_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 622
    :goto_c
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v9, 0x0

    invoke-interface {v5, v6, v9}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_3e

    .line 629
    :goto_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_37

    .line 630
    if-nez v65, :cond_4

    .line 632
    :try_start_12
    const-string v5, "SystemServer"

    const-string v6, "LockSettingsService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v79, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 634
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v79, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_13
    const-string v5, "lock_settings"

    move-object/from16 v0, v79

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3d

    move-object/from16 v78, v79

    .line 639
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_e
    const-string v5, "ro.frp.pst"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 640
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 645
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 648
    :cond_4
    if-nez v67, :cond_5

    .line 650
    :try_start_14
    const-string v5, "SystemServer"

    const-string v6, "Status Bar"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v101, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v101

    move-object/from16 v1, v116

    invoke-direct {v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    .line 652
    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v101, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_15
    const-string v5, "statusbar"

    move-object/from16 v0, v101

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V

    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3c

    move-object/from16 v100, v101

    .end local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_5
    :goto_f
    if-nez v65, :cond_6

    :try_start_16
    const-string v5, "SystemServer"

    const-string v6, "Clipboard Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v5, "clipboard"

    new-instance v6, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v6, v4}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 668
    :cond_6
    :goto_10
    if-nez v63, :cond_7

    .line 670
    :try_start_17
    const-string v5, "SystemServer"

    const-string v6, "NetworkManagement Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v8

    .line 672
    const-string v5, "network_management"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V

    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b

    .line 678
    :cond_7
    :goto_11
    if-nez v65, :cond_8

    .line 680
    :try_start_18
    const-string v5, "SystemServer"

    const-string v6, "Text Service Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v105, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c

    .line 682
    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v105, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_19
    const-string v5, "textservices"

    move-object/from16 v0, v105

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3b

    move-object/from16 v104, v105

    .line 688
    .end local v105    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_8
    :goto_12
    if-nez v63, :cond_36

    .line 690
    :try_start_1a
    const-string v5, "SystemServer"

    const-string v6, "Network Score Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v91, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    .line 692
    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v91, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1b
    const-string v5, "network_score"

    move-object/from16 v0, v91

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3a

    move-object/from16 v90, v91

    .line 698
    .end local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_13
    :try_start_1c
    const-string v5, "SystemServer"

    const-string v6, "NetworkStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v92, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v92

    move-object/from16 v1, v36

    invoke-direct {v0, v4, v8, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    .line 700
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v92, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1d
    const-string v5, "netstats"

    move-object/from16 v0, v92

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_39

    move-object/from16 v7, v92

    .line 706
    .end local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_14
    :try_start_1e
    const-string v5, "SystemServer"

    const-string v6, "NetworkPolicy Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Landroid/os/IPowerManager;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    .line 711
    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1f
    const-string v5, "netpolicy"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_38

    .line 716
    :goto_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 717
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 718
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 721
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.RttService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 723
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.ethernet"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 724
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 728
    :cond_9
    :try_start_20
    const-string v5, "SystemServer"

    const-string v6, "Connectivity Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v47, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v47

    invoke-direct {v0, v4, v8, v7, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .line 731
    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v47, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_21
    const-string v5, "connectivity"

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 732
    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 733
    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_37

    move-object/from16 v46, v47

    .line 739
    .end local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_16
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addSambaService(Lcom/android/server/SystemServer;)V

    :try_start_22
    const-string v5, "SystemServer"

    const-string v6, "Network Service Discovery Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v99

    .line 741
    const-string v5, "servicediscovery"

    move-object/from16 v0, v99

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    :goto_17
    :try_start_23
    const-string v5, "SystemServer"

    const-string v6, "DPM Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {v4}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 754
    :goto_18
    if-nez v65, :cond_a

    .line 756
    :try_start_24
    const-string v5, "SystemServer"

    const-string v6, "UpdateLock Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v5, "updatelock"

    new-instance v6, Lcom/android/server/UpdateLockService;

    invoke-direct {v6, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    .line 764
    :cond_a
    :goto_19
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 765
    if-nez v65, :cond_b

    .line 767
    :try_start_25
    const-string v5, "SystemServer"

    const-string v6, "MaterialTheme Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v5, "material_theme"

    new-instance v6, Lcom/android/server/theme/MaterialThemeService;

    invoke-direct {v6}, Lcom/android/server/theme/MaterialThemeService;-><init>()V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_14

    .line 781
    :cond_b
    :goto_1a
    if-eqz v87, :cond_c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_c

    .line 782
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 786
    :cond_c
    if-eqz v34, :cond_d

    .line 787
    :try_start_26
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_15

    .line 793
    :cond_d
    :goto_1b
    if-eqz v50, :cond_e

    .line 794
    :try_start_27
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_16

    .line 799
    :cond_e
    :goto_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 800
    const-string v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v95

    .line 802
    move-object/from16 v0, v95

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 806
    if-nez v61, :cond_f

    .line 808
    :try_start_28
    const-string v5, "SystemServer"

    const-string v6, "Location Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v77, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_17

    .line 810
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .local v77, "location":Lcom/android/server/LocationManagerService;
    :try_start_29
    const-string v5, "location"

    move-object/from16 v0, v77

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_36

    move-object/from16 v76, v77

    .line 816
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    :goto_1d
    :try_start_2a
    const-string v5, "SystemServer"

    const-string v6, "Country Detector"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    new-instance v52, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_18

    .line 818
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v52, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2b
    const-string v5, "country_detector"

    move-object/from16 v0, v52

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_35

    move-object/from16 v51, v52

    .line 824
    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_f
    :goto_1e
    if-nez v65, :cond_10

    .line 826
    :try_start_2c
    const-string v5, "SystemServer"

    const-string v6, "Search Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const-string v5, "search"

    new-instance v6, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_19

    .line 835
    :cond_10
    :goto_1f
    :try_start_2d
    const-string v5, "SystemServer"

    const-string v6, "DropBox Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v5, "dropbox"

    new-instance v6, Lcom/android/server/DropBoxManagerService;

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/dropbox"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v4, v9}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1a

    .line 842
    :goto_20
    if-nez v65, :cond_11

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 845
    :try_start_2e
    const-string v5, "SystemServer"

    const-string v6, "Wallpaper Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v111, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1b

    .line 847
    .end local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v111, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2f
    const-string v5, "wallpaper"

    move-object/from16 v0, v111

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_34

    move-object/from16 v110, v111

    .line 853
    .end local v111    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_11
    :goto_21
    if-nez v62, :cond_12

    const-string v5, "0"

    const-string v6, "system_init.startaudioservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 855
    :try_start_30
    const-string v5, "SystemServer"

    const-string v6, "Audio Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v40, Landroid/media/AudioService;

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1c

    .line 857
    .end local v39    # "audioService":Landroid/media/AudioService;
    .local v40, "audioService":Landroid/media/AudioService;
    :try_start_31
    const-string v5, "audio"

    move-object/from16 v0, v40

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_33

    move-object/from16 v39, v40

    .line 863
    .end local v40    # "audioService":Landroid/media/AudioService;
    .restart local v39    # "audioService":Landroid/media/AudioService;
    :cond_12
    :goto_22
    if-nez v65, :cond_13

    .line 864
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DockObserver;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 867
    :cond_13
    if-nez v65, :cond_14

    .line 868
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 869
    const-string v5, "SystemServer"

    const-string v6, "TriStatekeyService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/TriStateKeyService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 874
    :cond_14
    if-nez v62, :cond_15

    .line 876
    :try_start_32
    const-string v5, "SystemServer"

    const-string v6, "Wired Accessory Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v5, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v72

    invoke-direct {v5, v4, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1d

    .line 885
    :cond_15
    :goto_23
    if-nez v65, :cond_18

    .line 886
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.host"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.accessory"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 890
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 894
    :cond_17
    :try_start_33
    const-string v5, "SystemServer"

    const-string v6, "Serial Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance v98, Lcom/android/server/SerialService;

    move-object/from16 v0, v98

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1e

    .line 897
    .end local v97    # "serial":Lcom/android/server/SerialService;
    .local v98, "serial":Lcom/android/server/SerialService;
    :try_start_34
    const-string v5, "serial"

    move-object/from16 v0, v98

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_32

    move-object/from16 v97, v98

    .line 903
    .end local v98    # "serial":Lcom/android/server/SerialService;
    .restart local v97    # "serial":Lcom/android/server/SerialService;
    :cond_18
    :goto_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 905
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 907
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 909
    if-nez v65, :cond_1b

    .line 910
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.backup"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 911
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 914
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.app_widgets"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 915
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 918
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.voice_recognizers"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 919
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 924
    :cond_1b
    :try_start_35
    const-string v5, "SystemServer"

    const-string v6, "DiskStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const-string v5, "diskstats"

    new-instance v6, Lcom/android/server/DiskStatsService;

    invoke-direct {v6, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1f

    .line 935
    :goto_25
    :try_start_36
    const-string v5, "SystemServer"

    const-string v6, "SamplingProfiler Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const-string v5, "samplingprofiler"

    new-instance v6, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v6, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    .line 942
    :goto_26
    if-nez v63, :cond_1c

    if-nez v64, :cond_1c

    .line 944
    :try_start_37
    const-string v5, "SystemServer"

    const-string v6, "NetworkTimeUpdateService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    new-instance v94, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_21

    .end local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v94, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v93, v94

    .line 951
    .end local v94    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1c
    :goto_27
    if-nez v62, :cond_1d

    .line 953
    :try_start_38
    const-string v5, "SystemServer"

    const-string v6, "CommonTimeManagementService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    new-instance v44, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_22

    .line 955
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v44, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_39
    const-string v5, "commontime_management"

    move-object/from16 v0, v44

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_31

    move-object/from16 v43, v44

    .line 961
    .end local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1d
    :goto_28
    if-nez v63, :cond_1e

    .line 963
    :try_start_3a
    const-string v5, "SystemServer"

    const-string v6, "CertBlacklister"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v5, Lcom/android/server/CertBlacklister;

    invoke-direct {v5, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_23

    .line 970
    :cond_1e
    :goto_29
    if-nez v65, :cond_1f

    .line 972
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 975
    :cond_1f
    goto/16 :goto_flyme_0

    if-nez v65, :cond_20

    if-nez v59, :cond_20

    .line 977
    :try_start_3b
    const-string v5, "SystemServer"

    const-string v6, "Assets Atlas Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    new-instance v38, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_24

    .line 979
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v38, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3c
    const-string v5, "assetatlas"

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_30

    move-object/from16 v37, v38

    .line 985
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_20
    :goto_flyme_0
    :goto_2a
    new-instance v80, Lcom/android/server/OemExService;

    .end local v80    # "mOemExService":Lcom/android/server/OemExService;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, v80

    move-object/from16 v1, v116

    move-object/from16 v2, v72

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/android/server/OemExService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/power/PowerManagerService;)V

    .line 986
    .restart local v80    # "mOemExService":Lcom/android/server/OemExService;
    const-string v5, "OEMExService"

    move-object/from16 v0, v80

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.print"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 989
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.print.PrintManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 992
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 994
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 996
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.hdmi.cec"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 997
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1000
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.live_tv"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1001
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1004
    :cond_23
    if-nez v65, :cond_24

    .line 1006
    :try_start_3d
    const-string v5, "SystemServer"

    const-string v6, "Media Router Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v84, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v84

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_25

    .line 1008
    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v84, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3e
    const-string v5, "media_router"

    move-object/from16 v0, v84

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_2f

    move-object/from16 v83, v84

    .line 1013
    .end local v84    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1018
    :try_start_3f
    const-string v5, "SystemServer"

    const-string v6, "BackgroundDexOptService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_26

    .line 1026
    :cond_24
    :goto_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1028
    const-string v5, "ro.bluetooth.wipower"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v75

    .line 1030
    .local v75, "isWipowerEnabled":Z
    if-eqz v75, :cond_34

    .line 1032
    :try_start_40
    const-string v33, "wbc_service"

    .line 1033
    .local v33, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v5, "SystemServer"

    const-string v6, "WipowerBatteryControl Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v114, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v114

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1038
    .local v114, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v114

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v113

    .line 1039
    .local v113, "wbcClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v113

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v53

    .line 1040
    .local v53, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v115

    .line 1041
    .local v115, "wbcObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded WbcService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string v5, "wbc_service"

    check-cast v115, Landroid/os/IBinder;

    .end local v115    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v115

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_27

    .line 1050
    .end local v33    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v53    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v113    # "wbcClass":Ljava/lang/Class;
    .end local v114    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_2d
    if-eqz v55, :cond_25

    .line 1052
    :try_start_41
    const-string v5, "SystemServer"

    const-string v6, "Digital Pen Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v57, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v57

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1056
    .local v57, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v56

    .line 1058
    .local v56, "digitalPenClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v53

    .line 1059
    .restart local v53    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    .line 1060
    .local v58, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded DigitalPenService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const-string v5, "DigitalPen"

    check-cast v58, Landroid/os/IBinder;

    .end local v58    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v58

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_28

    .line 1068
    .end local v53    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v56    # "digitalPenClass":Ljava/lang/Class;
    .end local v57    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    .end local v75    # "isWipowerEnabled":Z
    :cond_25
    :goto_2e
    if-nez v65, :cond_26

    .line 1069
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1072
    :cond_26
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1074
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "adb_port"

    const-string v9, "service.adb.tcp.port"

    const-string v10, "-1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1078
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "adb_port"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1085
    :cond_27
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v96

    .line 1086
    .local v96, "safeMode":Z
    if-eqz v96, :cond_35

    .line 1087
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1089
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1096
    :goto_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v86

    .end local v86    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v86, Lcom/android/server/MmsServiceBroker;

    .restart local v86    # "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    move-object/from16 v5, v116

    move-object/from16 v6, v110

    invoke-static {v0, v5, v6}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    :try_start_42
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_29

    :goto_30
    if-eqz v78, :cond_28

    :try_start_43
    invoke-virtual/range {v78 .. v78}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2a

    :cond_28
    :goto_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1e0

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1120
    :try_start_44
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2b

    .line 1125
    :goto_32
    if-eqz v96, :cond_29

    .line 1126
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1132
    :cond_29
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v45

    .line 1133
    .local v45, "config":Landroid/content/res/Configuration;
    new-instance v85, Landroid/util/DisplayMetrics;

    invoke-direct/range {v85 .. v85}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1134
    .local v85, "metrics":Landroid/util/DisplayMetrics;
    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Landroid/view/WindowManager;

    .line 1135
    .local v109, "w":Landroid/view/WindowManager;
    invoke-interface/range {v109 .. v109}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object/from16 v0, v85

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1136
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, v45

    move-object/from16 v1, v85

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1140
    :try_start_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2c

    .line 1146
    :goto_33
    :try_start_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2d

    .line 1153
    :goto_34
    :try_start_47
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v96

    invoke-virtual {v5, v0, v6}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2e

    .line 1159
    :goto_35
    move-object/from16 v12, v87

    .line 1160
    .local v12, "mountServiceF":Lcom/android/server/MountService;
    move-object v14, v8

    .line 1161
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v7

    .line 1162
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v3

    .line 1163
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v46

    .line 1164
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v90

    .line 1165
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v110

    .line 1166
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v70

    .line 1167
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v76

    .line 1168
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v51

    .line 1169
    .local v23, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v24, v93

    .line 1170
    .local v24, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v25, v43

    .line 1171
    .local v25, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v26, v104

    .line 1172
    .local v26, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v100

    .line 1173
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v27, v37

    .line 1174
    .local v27, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v28, v72

    .line 1175
    .local v28, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v29, v102

    .line 1176
    .local v29, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v83

    .line 1177
    .local v30, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v39

    .line 1178
    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v31, v86

    .line 1179
    .local v31, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v32, v80

    .line 1186
    .local v32, "moemExService":Lcom/android/server/OemExService;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v9, Lcom/android/server/SystemServer$2;

    move-object/from16 v10, p0

    move-object v11, v4

    invoke-direct/range {v9 .. v32}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/OemExService;)V

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1329
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getPCBNumber()V

    .line 1336
    :cond_2a
    return-void

    .line 480
    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v32    # "moemExService":Lcom/android/server/OemExService;
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v45    # "config":Landroid/content/res/Configuration;
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v85    # "metrics":Landroid/util/DisplayMetrics;
    .end local v95    # "notification":Landroid/app/INotificationManager;
    .end local v96    # "safeMode":Z
    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v109    # "w":Landroid/view/WindowManager;
    .end local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v69

    .line 481
    .local v69, "e":Ljava/lang/Throwable;
    :goto_36
    :try_start_48
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Account Manager"

    move-object/from16 v0, v69

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_48} :catch_1

    goto/16 :goto_0

    .line 554
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v69

    move-object/from16 v102, v103

    .line 555
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v69, "e":Ljava/lang/RuntimeException;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_37
    const-string v5, "System"

    const-string v6, "******************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v5, "System"

    const-string v6, "************ Failure starting core service"

    move-object/from16 v0, v69

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 485
    .end local v69    # "e":Ljava/lang/RuntimeException;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 496
    .end local v81    # "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    .restart local v82    # "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    :cond_2c
    const/16 v54, 0x0

    goto/16 :goto_2

    .restart local v54    # "dark":Z
    :cond_2d
    const v5, #android:style@Theme.DeviceDefault.Light.DarkActionBar#t

    goto/16 :goto_3

    .end local v54    # "dark":Z
    .end local v82    # "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    .restart local v81    # "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    :cond_2e
    :try_start_49
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v6, #android:style@OP.Theme.DeviceDefault.Light.DarkActionBar#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->setTheme(I)V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_1

    goto/16 :goto_4

    .line 523
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v112    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2f
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 542
    :cond_30
    :try_start_4a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_31

    .line 543
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (factory test)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 554
    :catch_2
    move-exception v69

    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v102, v103

    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v107, v108

    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_37

    .line 544
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    :cond_31
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 546
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 547
    :cond_32
    if-eqz v60, :cond_33

    .line 548
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Service disabled by config"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 550
    :cond_33
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v42, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_2

    .line 552
    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v42, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_4b
    const-string v5, "bluetooth_manager"

    move-object/from16 v0, v42

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_46

    move-object/from16 v41, v42

    .end local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_6

    .line 578
    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .end local v112    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v95    # "notification":Landroid/app/INotificationManager;
    .restart local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v69

    .line 579
    .local v69, "e":Ljava/lang/Throwable;
    :goto_38
    const-string v5, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 586
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v69

    .line 587
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 594
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v69

    .line 595
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 609
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v69

    .line 610
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v5, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 617
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v69

    .line 618
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 635
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v69

    .line 636
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v5, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 653
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v69

    .line 654
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v5, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 663
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v69

    .line 664
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 673
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v69

    .line 674
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 683
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v69

    .line 684
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v5, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 693
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v69

    .line 694
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v5, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 701
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v69

    .line 702
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v5, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 712
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v69

    move-object/from16 v3, v89

    .line 713
    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v5, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 734
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v69

    .line 735
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v5, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 743
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v69

    .line 744
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 749
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v69

    .line 750
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 759
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v69

    .line 760
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 770
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v69

    .line 771
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting MaterialTheme Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 788
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v69

    .line 789
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 795
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v69

    .line 796
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 811
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v69

    .line 812
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v5, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 819
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v69

    .line 820
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v5, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 829
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v69

    .line 830
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 838
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v69

    .line 839
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 848
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v69

    .line 849
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v5, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 858
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v69

    .line 859
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v5, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 880
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v69

    .line 881
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 898
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v69

    .line 899
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SerialService"

    move-object/from16 v0, v69

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 926
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v69

    .line 927
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 938
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v69

    .line 939
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 946
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v69

    .line 947
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 956
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v69

    .line 957
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v5, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 965
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v69

    .line 966
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 980
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v69

    .line 981
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string v5, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1009
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v69

    .line 1010
    .restart local v69    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string v5, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1020
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v69

    .line 1021
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1043
    .end local v69    # "e":Ljava/lang/Throwable;
    .restart local v75    # "isWipowerEnabled":Z
    :catch_27
    move-exception v69

    .line 1044
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1047
    .end local v69    # "e":Ljava/lang/Throwable;
    :cond_34
    const-string v5, "SystemServer"

    const-string v6, "Wipower not supported"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 1062
    :catch_28
    move-exception v69

    .line 1063
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1092
    .end local v69    # "e":Ljava/lang/Throwable;
    .end local v75    # "isWipowerEnabled":Z
    .restart local v96    # "safeMode":Z
    :cond_35
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2f

    .line 1102
    :catch_29
    move-exception v69

    .line 1103
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1109
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v69

    .line 1110
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1121
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v69

    .line 1122
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1141
    .end local v69    # "e":Ljava/lang/Throwable;
    .restart local v45    # "config":Landroid/content/res/Configuration;
    .restart local v85    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v109    # "w":Landroid/view/WindowManager;
    :catch_2c
    move-exception v69

    .line 1142
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1147
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v69

    .line 1148
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1154
    .end local v69    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v69

    .line 1155
    .restart local v69    # "e":Ljava/lang/Throwable;
    const-string v5, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1009
    .end local v45    # "config":Landroid/content/res/Configuration;
    .end local v69    # "e":Ljava/lang/Throwable;
    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v85    # "metrics":Landroid/util/DisplayMetrics;
    .end local v96    # "safeMode":Z
    .end local v109    # "w":Landroid/view/WindowManager;
    .restart local v84    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2f
    move-exception v69

    move-object/from16 v83, v84

    .end local v84    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_48

    .line 980
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_30
    move-exception v69

    move-object/from16 v37, v38

    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_47

    .line 956
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_31
    move-exception v69

    move-object/from16 v43, v44

    .end local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_46

    .line 898
    .end local v97    # "serial":Lcom/android/server/SerialService;
    .restart local v98    # "serial":Lcom/android/server/SerialService;
    :catch_32
    move-exception v69

    move-object/from16 v97, v98

    .end local v98    # "serial":Lcom/android/server/SerialService;
    .restart local v97    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_45

    .line 858
    .end local v39    # "audioService":Landroid/media/AudioService;
    .restart local v40    # "audioService":Landroid/media/AudioService;
    :catch_33
    move-exception v69

    move-object/from16 v39, v40

    .end local v40    # "audioService":Landroid/media/AudioService;
    .restart local v39    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_44

    .line 848
    .end local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v111    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_34
    move-exception v69

    move-object/from16 v110, v111

    .end local v111    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_43

    .line 819
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_35
    move-exception v69

    move-object/from16 v51, v52

    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_42

    .line 811
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    :catch_36
    move-exception v69

    move-object/from16 v76, v77

    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_41

    .line 734
    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_37
    move-exception v69

    move-object/from16 v46, v47

    .end local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_40

    .line 712
    :catch_38
    move-exception v69

    goto/16 :goto_3f

    .line 701
    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_39
    move-exception v69

    move-object/from16 v7, v92

    .end local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3e

    .line 693
    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_3a
    move-exception v69

    move-object/from16 v90, v91

    .end local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3d

    .line 683
    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v105    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3b
    move-exception v69

    move-object/from16 v104, v105

    .end local v105    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3c

    .line 653
    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3c
    move-exception v69

    move-object/from16 v100, v101

    .end local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_3b

    .line 635
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3d
    move-exception v69

    move-object/from16 v78, v79

    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_3a

    .line 626
    :catch_3e
    move-exception v5

    goto/16 :goto_d

    .line 609
    .end local v87    # "mountService":Lcom/android/server/MountService;
    .restart local v88    # "mountService":Lcom/android/server/MountService;
    :catch_3f
    move-exception v69

    move-object/from16 v87, v88

    .end local v88    # "mountService":Lcom/android/server/MountService;
    .restart local v87    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_39

    .line 578
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_40
    move-exception v69

    move-object/from16 v70, v71

    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_38

    .line 554
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v95    # "notification":Landroid/app/INotificationManager;
    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_41
    move-exception v69

    goto/16 :goto_37

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_42
    move-exception v69

    move-object/from16 v102, v103

    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v34, v35

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_37

    .end local v81    # "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v82    # "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_43
    move-exception v69

    move-object/from16 v81, v82

    .end local v82    # "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    .restart local v81    # "materialThemeService":Lcom/android/server/theme/MaterialThemeService;
    move-object/from16 v102, v103

    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_37

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    :catch_44
    move-exception v69

    move-object/from16 v102, v103

    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_37

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    :catch_45
    move-exception v69

    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v102, v103

    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_37

    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v112    # "watchdog":Lcom/android/server/Watchdog;
    :catch_46
    move-exception v69

    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v102, v103

    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v42

    .end local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v107, v108

    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_37

    .line 480
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v112    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_47
    move-exception v69

    move-object/from16 v34, v35

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_36

    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v95    # "notification":Landroid/app/INotificationManager;
    .restart local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_36
    move-object/from16 v3, v89

    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_18

    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_37
    move-object/from16 v3, v89

    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2e
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1340
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1343
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1344
    return-void
.end method

.method flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method flymeGetFieldSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
