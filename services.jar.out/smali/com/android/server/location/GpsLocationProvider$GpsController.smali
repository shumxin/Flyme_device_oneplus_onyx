.class Lcom/android/server/location/GpsLocationProvider$GpsController;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsController"
.end annotation


# static fields
.field private static final ACTION_BIND_POWER_SERVICE:Ljava/lang/String; = "com.gnss.power.service"

.field private static final ACTION_POWER_SAVER_NOTIFICATION:Ljava/lang/String; = "com.user.power.saver.notification"

.field private static final ACTION_START_NOTIFICATION:Ljava/lang/String; = "com.user.start.notification"

.field private static final ACTION_STOP_NAVIGATING_NOTIFICATION:Ljava/lang/String; = "com.user.stop.navigating.notification"

.field private static final ACTION_USER_AGREE:Ljava/lang/String; = "android.user.agree"

.field private static final ACTION_USER_DISCARD:Ljava/lang/String; = "android.user.discard"

.field private static final ACTION_USER_WAKE_GPS:Ljava/lang/String; = "android.user.wake.gps"

.field private static final GPS_POWER_INTERVAL:I = 0x3e8

.field private static final GPS_POWER_ON:I = 0x0

.field private static final GPS_POWER_ON_WITH_DISCARD:I = 0x2

.field private static final GPS_POWER_ON_WITH_WAKE:I = 0x1

.field private static final GPS_POWER_SAVER_WITH_AGREE:I = 0x4

.field private static final GPS_POWER_SAVER_WITH_DELAY:I = 0x3

.field private static final IsDebug:Z = true

.field private static final MSG_CONTROL_RUNNING:I = 0x68

.field private static final MSG_CONTROL_START:I = 0x67

.field private static final MSG_CONTROL_STOP:I = 0x69

.field private static final MSG_STOP_AFTER_DELAY:I = 0x66

.field private static final MSG_WILL_STOP_GPS:I = 0x65

.field private static final PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.gnss.power"

.field private static final TAG:Ljava/lang/String; = "GpsController"

.field private static final TIME_DELAY_STOP_GPS:J = 0xea60L


# instance fields
.field private mGpsMode:I

.field private final mGpsMonitor:Lcom/android/server/location/GpsMonitor;

.field private mIsDoingStop:Z

.field private final mLocMgr:Landroid/location/LocationManager;

.field private mNeedRebind:Z

.field private mNeedStopGps:Z

.field private myConnection:Landroid/content/ServiceConnection;

.field private myHander:Landroid/os/Handler;

.field private myLocationListener:Landroid/location/LocationListener;

.field private myReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2611
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2574
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    .line 2575
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedRebind:Z

    .line 2955
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$1;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    .line 2987
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$2;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myConnection:Landroid/content/ServiceConnection;

    .line 3007
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$3;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 3022
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController$4;-><init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myLocationListener:Landroid/location/LocationListener;

    .line 2612
    new-instance v0, Lcom/android/server/location/GpsMonitor;

    invoke-direct {v0}, Lcom/android/server/location/GpsMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    .line 2613
    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mLocMgr:Landroid/location/LocationManager;

    .line 2615
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    if-eqz v0, :cond_0

    .line 2616
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/GpsMonitor;->enableGpsMonitorLogging(Z)V

    .line 2618
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->registBroadcast()V

    .line 2619
    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2571
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->willStopGps()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/location/GpsLocationProvider$GpsController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2571
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/location/GpsLocationProvider$GpsController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;
    .param p1, "x1"    # I

    .prologue
    .line 2571
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2571
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->enterPowerSavingMode()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/location/GpsLocationProvider$GpsController;F[F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;
    .param p1, "x1"    # F
    .param p2, "x2"    # [F

    .prologue
    .line 2571
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider$GpsController;->changeGpsMode(F[F)V

    return-void
.end method

.method static synthetic access$5602(Lcom/android/server/location/GpsLocationProvider$GpsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;
    .param p1, "x1"    # Z

    .prologue
    .line 2571
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    return p1
.end method

.method static synthetic access$5702(Lcom/android/server/location/GpsLocationProvider$GpsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;
    .param p1, "x1"    # Z

    .prologue
    .line 2571
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedRebind:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2571
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->wakeGps()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2571
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->userAgreed()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$GpsController;

    .prologue
    .line 2571
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->userDiscard()V

    return-void
.end method

.method private bindNotificationService()V
    .locals 4

    .prologue
    .line 2664
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gnss.power.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2665
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.gnss.power"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2667
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2668
    return-void
.end method

.method private changeGpsMode(F[F)V
    .locals 2
    .param p1, "speed"    # F
    .param p2, "snrs"    # [F

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/GpsMonitor;->needStopGps(F[F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    .line 2693
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->shouldStopGps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2694
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2695
    const-string v0, "GpsController"

    const-string v1, "will stop gps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2707
    :cond_1
    :goto_0
    return-void

    .line 2699
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedStopGps:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    if-eqz v0, :cond_1

    .line 2700
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2701
    const-string v0, "GpsController"

    const-string v1, "--remove message MSG_STOP_AFTER_DELAY--"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2704
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2705
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->stopNavigatingNotify()V

    goto :goto_0
.end method

.method private enterPowerSavingMode()V
    .locals 6

    .prologue
    .line 2829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2831
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->powerSaverNotify()V

    .line 2832
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)V

    .line 2833
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->stopController()V

    .line 2834
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mLocMgr:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2835
    return-void
.end method

.method private exitPowerSavingMode()V
    .locals 2

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mLocMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2844
    return-void
.end method

.method private powerSaverNotify()V
    .locals 2

    .prologue
    .line 2862
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.user.power.saver.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2863
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2864
    return-void
.end method

.method private registBroadcast()V
    .locals 3

    .prologue
    .line 2938
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2939
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.user.wake.gps"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2940
    const-string v1, "android.user.discard"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2941
    const-string v1, "android.user.agree"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2943
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2944
    return-void
.end method

.method private shouldStopGps()Z
    .locals 3

    .prologue
    .line 2798
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2799
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running shouldStopGps mIsDoingStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startNotify()V
    .locals 2

    .prologue
    .line 2852
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.user.start.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2853
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2854
    return-void
.end method

.method private unBindNotificationService()V
    .locals 2

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2679
    return-void
.end method

.method private unRegistBroadcast()V
    .locals 2

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2953
    return-void
.end method

.method private userAgreed()V
    .locals 3

    .prologue
    .line 2899
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2900
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user agree mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-nez v0, :cond_1

    .line 2904
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2907
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2908
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2909
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->enterPowerSavingMode()V

    .line 2910
    return-void
.end method

.method private userDiscard()V
    .locals 3

    .prologue
    .line 2918
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2919
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user discard mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-nez v0, :cond_1

    .line 2923
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2926
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2927
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GpsMonitor;->resetStatus()V

    .line 2928
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2929
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->stopController()V

    .line 2930
    return-void
.end method

.method private wakeGps()V
    .locals 3

    .prologue
    .line 2882
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2883
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user wake mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2887
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2889
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GpsMonitor;->resetStatus()V

    .line 2890
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;Z)V

    .line 2891
    return-void
.end method

.method private willStopGps()V
    .locals 4

    .prologue
    .line 2811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2812
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->startNotify()V

    .line 2814
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2815
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running willstopGps Message  mGpsMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-nez v0, :cond_1

    .line 2819
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2821
    :cond_1
    return-void
.end method


# virtual methods
.method getGpsMonitor()Lcom/android/server/location/GpsMonitor;
    .locals 1

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    return-object v0
.end method

.method public getGpsPowerMode()I
    .locals 1

    .prologue
    .line 2776
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    return v0
.end method

.method public resistStartGps()Z
    .locals 3

    .prologue
    .line 2785
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2786
    const-string v0, "GpsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running resistStartGps mGpsMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :cond_0
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2715
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2716
    const-string v0, "GpsController"

    const-string v1, "Set up the running environment!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mIsDoingStop:Z

    .line 2720
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2722
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedRebind:Z

    if-eqz v0, :cond_1

    .line 2723
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->bindNotificationService()V

    .line 2726
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMonitor:Lcom/android/server/location/GpsMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GpsMonitor;->resetStatus()V

    .line 2727
    return-void
.end method

.method public startController()V
    .locals 2

    .prologue
    .line 2639
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2640
    const-string v0, "GpsController"

    const-string v1, "----startController----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2643
    return-void
.end method

.method public stopController()V
    .locals 2

    .prologue
    .line 2651
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2652
    const-string v0, "GpsController"

    const-string v1, "----stopController----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->myHander:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2655
    return-void
.end method

.method public stopNavigatingNotify()V
    .locals 2

    .prologue
    .line 2872
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.user.stop.navigating.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2873
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2874
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 2735
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2736
    const-string v0, "GpsController"

    const-string v1, "Tear down the running environment!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mGpsMode:I

    .line 2741
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedRebind:Z

    if-nez v0, :cond_1

    .line 2742
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->unBindNotificationService()V

    .line 2745
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->exitPowerSavingMode()V

    .line 2746
    return-void
.end method
