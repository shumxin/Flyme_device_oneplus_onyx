.class Lcom/android/server/display/AutomaticBrightnessController$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 752
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const v9, 0x44802000    # 1025.0f

    const/high16 v8, 0x43be0000    # 380.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 695
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$200(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 696
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 701
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v0, v4, v5

    .line 702
    .local v0, "lux":F
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mLuxCurrent:F
    invoke-static {v4, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$302(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 703
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 704
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed in: lux = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed: lux_min = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lux_max = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed: mLuxCurrent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLuxCurrent:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed: mGetDataFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v4, v4, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessCameraSupport:Z

    if-eqz v4, :cond_a

    .line 712
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 747
    .end local v0    # "lux":F
    .end local v2    # "time":J
    :cond_1
    :goto_0
    return-void

    .line 713
    .restart local v0    # "lux":F
    .restart local v2    # "time":J
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_1

    .line 714
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    .line 716
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 717
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mGetDataFlag:Z
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$602(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 718
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$700(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;

    move-result-object v5

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->sendBeginCheckCameraBroadcast(Landroid/content/Context;)V
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$800(Lcom/android/server/display/AutomaticBrightnessController;Landroid/content/Context;)V

    .line 719
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 720
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0xa

    iput v4, v1, Landroid/os/Message;->what:I

    .line 721
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mCameraHandler:Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$900(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;

    move-result-object v4

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$GetDataFromCameraHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 724
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    cmpg-float v4, v0, v11

    if-gtz v4, :cond_6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v10}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x40800000    # 4.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 731
    :goto_1
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed out1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_5
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v4, v2, v3, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1000(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    goto :goto_0

    .line 725
    :cond_6
    cmpg-float v4, v0, v8

    if-gtz v4, :cond_7

    const/high16 v0, 0x43be0000    # 380.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v7}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x43d20000    # 420.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_1

    .line 726
    :cond_7
    cmpg-float v4, v0, v9

    if-gtz v4, :cond_8

    const v0, 0x44802000    # 1025.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v7}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v5, 0x448fc000    # 1150.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_1

    .line 727
    :cond_8
    const v4, 0x4601b000    # 8300.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_9

    const v0, 0x4601b000    # 8300.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v5, 0x460ca000    # 9000.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_1

    .line 728
    :cond_9
    const v0, 0x461c4000    # 10000.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v9}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v5, 0x479c4000    # 80000.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_1

    .line 735
    :cond_a
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_1

    .line 736
    :cond_b
    cmpg-float v4, v0, v11

    if-gtz v4, :cond_d

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v10}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x40800000    # 4.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 743
    :goto_2
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed out2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_c
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v4, v2, v3, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1000(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    goto/16 :goto_0

    .line 737
    :cond_d
    cmpg-float v4, v0, v8

    if-gtz v4, :cond_e

    const/high16 v0, 0x43be0000    # 380.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v7}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v5, 0x43d20000    # 420.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_2

    .line 738
    :cond_e
    cmpg-float v4, v0, v9

    if-gtz v4, :cond_f

    const v0, 0x44802000    # 1025.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v7}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v5, 0x448fc000    # 1150.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_2

    .line 739
    :cond_f
    const v4, 0x4601b000    # 8300.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_10

    const v0, 0x4601b000    # 8300.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v5, 0x460ca000    # 9000.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_2

    .line 740
    :cond_10
    const v0, 0x461c4000    # 10000.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_min:F
    invoke-static {v4, v9}, Lcom/android/server/display/AutomaticBrightnessController;->access$402(Lcom/android/server/display/AutomaticBrightnessController;F)F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v5, 0x479c4000    # 80000.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_2
.end method
