.class Lcom/android/server/location/GpsLocationProvider$GpsController$3;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$GpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$GpsController;)V
    .locals 0

    .prologue
    .line 3007
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$3;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3011
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3012
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.user.wake.gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3013
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$3;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    # invokes: Lcom/android/server/location/GpsLocationProvider$GpsController;->wakeGps()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$5800(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    .line 3019
    :cond_0
    :goto_0
    return-void

    .line 3014
    :cond_1
    const-string v1, "android.user.agree"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3015
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$3;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    # invokes: Lcom/android/server/location/GpsLocationProvider$GpsController;->userAgreed()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$5900(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    goto :goto_0

    .line 3016
    :cond_2
    const-string v1, "android.user.discard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3017
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$3;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    # invokes: Lcom/android/server/location/GpsLocationProvider$GpsController;->userDiscard()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$6000(Lcom/android/server/location/GpsLocationProvider$GpsController;)V

    goto :goto_0
.end method
