.class public Lcom/android/server/lights/OppoLightsService;
.super Lcom/android/server/lights/LightsService;
.source "OppoLightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/OppoLightsService$ButtonLight;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoLightsService"


# instance fields
.field mCameraLightReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;)V

    .line 217
    new-instance v0, Lcom/android/server/lights/OppoLightsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/lights/OppoLightsService$1;-><init>(Lcom/android/server/lights/OppoLightsService;)V

    iput-object v0, p0, Lcom/android/server/lights/OppoLightsService;->mCameraLightReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/android/server/lights/OppoLightsService;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/lights/OppoLightsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/OppoLightsService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method setLight(ILcom/android/server/lights/LightsService$LightImpl;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "light"    # Lcom/android/server/lights/LightsService$LightImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aput-object p2, v0, p1

    .line 66
    return-void
.end method

.method public systemReady()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 57
    new-instance v1, Lcom/android/server/lights/OppoLightsService$ButtonLight;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/lights/OppoLightsService$ButtonLight;-><init>(Lcom/android/server/lights/OppoLightsService;ILcom/android/server/lights/OppoLightsService$1;)V

    invoke-virtual {p0, v3, v1}, Lcom/android/server/lights/OppoLightsService;->setLight(ILcom/android/server/lights/LightsService$LightImpl;)V

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.oppo.camera.OpenLight"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/server/lights/OppoLightsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/lights/OppoLightsService;->mCameraLightReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method
