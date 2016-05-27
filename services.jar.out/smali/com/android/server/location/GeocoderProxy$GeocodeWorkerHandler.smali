.class Lcom/android/server/location/GeocoderProxy$GeocodeWorkerHandler;
.super Landroid/os/Handler;
.source "GeocoderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeocoderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeocodeWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeocoderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GeocoderProxy;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$GeocodeWorkerHandler;->this$0:Lcom/android/server/location/GeocoderProxy;

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$GeocodeWorkerHandler;->this$0:Lcom/android/server/location/GeocoderProxy;

    # getter for: Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;
    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->rebindService()Z

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
