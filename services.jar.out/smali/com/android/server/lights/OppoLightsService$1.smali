.class Lcom/android/server/lights/OppoLightsService$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/OppoLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/OppoLightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/OppoLightsService;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/server/lights/OppoLightsService$1;->this$0:Lcom/android/server/lights/OppoLightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "LightID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 220
    .local v2, "nID":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "LightBreightness"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 221
    .local v1, "nBrightness":I
    iget-object v3, p0, Lcom/android/server/lights/OppoLightsService$1;->this$0:Lcom/android/server/lights/OppoLightsService;

    iget-object v3, v3, Lcom/android/server/lights/OppoLightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {v3, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    .line 222
    .local v0, "light":Lcom/android/server/lights/Light;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 226
    :cond_0
    return-void
.end method
