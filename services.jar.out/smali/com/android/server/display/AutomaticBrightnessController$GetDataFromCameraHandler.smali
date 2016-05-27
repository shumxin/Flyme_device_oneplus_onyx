.class final Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;
.super Landroid/os/Handler;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GetDataFromCameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 893
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 894
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 898
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 910
    :goto_0
    return-void

    .line 900
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLuxDarkingTime:J
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1900(Lcom/android/server/display/AutomaticBrightnessController;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLuxCurrent:F
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v1

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->judgeCameraData(JF)V
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$2000(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    goto :goto_0

    .line 904
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->delaySendAndGetData()V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2100(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_0

    .line 898
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
