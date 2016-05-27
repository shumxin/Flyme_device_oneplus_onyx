.class Lcom/android/server/lights/OppoLightsService$ButtonLight$1;
.super Landroid/os/Handler;
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
    .line 85
    iput-object p1, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$1;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "paramMessage"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$1;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    # invokes: Lcom/android/server/lights/OppoLightsService$ButtonLight;->turnButtonLightOff()V
    invoke-static {v0}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->access$100(Lcom/android/server/lights/OppoLightsService$ButtonLight;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
