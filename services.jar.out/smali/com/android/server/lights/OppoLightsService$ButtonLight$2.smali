.class Lcom/android/server/lights/OppoLightsService$ButtonLight$2;
.super Landroid/content/BroadcastReceiver;
.source "OppoLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/OppoLightsService$ButtonLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;


# direct methods
.method constructor <init>(Lcom/android/server/lights/OppoLightsService$ButtonLight;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$2;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$2;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    # getter for: Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->access$200(Lcom/android/server/lights/OppoLightsService$ButtonLight;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$2;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    # getter for: Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->access$200(Lcom/android/server/lights/OppoLightsService$ButtonLight;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method
