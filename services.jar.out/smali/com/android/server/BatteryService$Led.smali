.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# static fields
.field private static final DELAY_UPDATE_LIGHT:I = 0x1f4

.field private static final MSG_UPDATE_LIGHT:I = 0x1


# instance fields
.field private final mBatteryChargingARGB:I

.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field public mBatteryLowHint:Z

.field private final mBatteryMediumARGB:I

.field public mChargingHint:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLight:Lcom/android/server/lights/LightsManager;

.field private mLightHandler:Landroid/os/Handler;

.field private final mNotificationLightStateDetector:Lcom/android/server/lights/Light;

.field private mScreenOn:Z

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    const/4 v4, 0x1

    .line 973
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    const/high16 v2, -0x10000

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryChargingARGB:I

    .line 942
    new-instance v2, Lcom/android/server/BatteryService$Led$1;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Led$1;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    .line 949
    new-instance v2, Lcom/android/server/BatteryService$Led$2;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Led$2;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 974
    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 976
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 978
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 980
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 984
    iput-object p3, p0, Lcom/android/server/BatteryService$Led;->mLight:Lcom/android/server/lights/LightsManager;

    .line 985
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "A30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    const/16 v2, 0x9c4

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 987
    const/16 v2, 0x1388

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 988
    const/4 v2, 0x0

    # setter for: Lcom/android/server/BatteryService;->mBatteryLightFlashing:Z
    invoke-static {p1, v2}, Lcom/android/server/BatteryService;->access$1602(Lcom/android/server/BatteryService;Z)Z

    .line 999
    :goto_0
    const/4 v2, 0x4

    invoke-virtual {p3, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationLightStateDetector:Lcom/android/server/lights/Light;

    .line 1001
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1002
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1003
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1004
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1005
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1006
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/BatteryService$SettingsObserver;

    invoke-direct {v2, p1, v1}, Lcom/android/server/BatteryService$SettingsObserver;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/BatteryService;->mLowPowerSettingsObservers:Lcom/android/server/BatteryService$SettingsObserver;
    invoke-static {p1, v2}, Lcom/android/server/BatteryService;->access$1302(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$SettingsObserver;)Lcom/android/server/BatteryService$SettingsObserver;

    .line 1007
    new-instance v2, Lcom/android/server/BatteryService$SettingsObserver;

    invoke-direct {v2, p1, v1}, Lcom/android/server/BatteryService$SettingsObserver;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/BatteryService;->mChargeSettingsObservers:Lcom/android/server/BatteryService$SettingsObserver;
    invoke-static {p1, v2}, Lcom/android/server/BatteryService;->access$1402(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$SettingsObserver;)Lcom/android/server/BatteryService$SettingsObserver;

    .line 1008
    iput-boolean v4, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    .line 1010
    return-void

    .line 990
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 992
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 994
    # setter for: Lcom/android/server/BatteryService;->mBatteryLightFlashing:Z
    invoke-static {p1, v4}, Lcom/android/server/BatteryService;->access$1602(Lcom/android/server/BatteryService;Z)Z

    goto :goto_0
.end method

.method static synthetic access$1102(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;
    .param p1, "x1"    # Z

    .prologue
    .line 921
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService$Led;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    return-object v0
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 7

    .prologue
    const/16 v4, 0x64

    const/4 v6, 0x1

    .line 1019
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    if-eqz v2, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mLight:Lcom/android/server/lights/LightsManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsManager;->getLightState(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1028
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1033
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 1034
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 1062
    .local v1, "status":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1063
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    if-eqz v2, :cond_4

    .line 1069
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLightFlashing:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1070
    if-lt v0, v4, :cond_2

    .line 1072
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 1074
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 1077
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    const/high16 v3, -0x10000

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1084
    :cond_4
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 1086
    :cond_5
    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    if-lt v0, v4, :cond_7

    .line 1088
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    if-eqz v2, :cond_6

    .line 1090
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 1093
    :cond_6
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 1096
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 1098
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 1102
    :cond_8
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto/16 :goto_0
.end method
