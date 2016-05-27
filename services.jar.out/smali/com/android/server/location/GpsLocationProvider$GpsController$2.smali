.class Lcom/android/server/location/GpsLocationProvider$GpsController$2;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 2987
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$2;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2990
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2991
    const-string v0, "GpsController"

    const-string v1, "GnssPowerSaver notification service is connected!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$2;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedRebind:Z
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$5702(Lcom/android/server/location/GpsLocationProvider$GpsController;Z)Z

    .line 2995
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2999
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3000
    const-string v0, "GpsController"

    const-string v1, "GnssPowerSaver notification service is disconnected!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsController$2;->this$1:Lcom/android/server/location/GpsLocationProvider$GpsController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/location/GpsLocationProvider$GpsController;->mNeedRebind:Z
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider$GpsController;->access$5702(Lcom/android/server/location/GpsLocationProvider$GpsController;Z)Z

    .line 3004
    return-void
.end method
