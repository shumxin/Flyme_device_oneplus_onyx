.class final Lcom/meizu/media/camera/manual/ManualModeController;
.super Lcom/meizu/media/camera/ModeController;
.source "ManualModeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/ModeController",
        "<",
        "Lcom/meizu/media/camera/manual/ManualModeUI;",
        ">;"
    }
.end annotation


# static fields
.field private static final FLAG_NOT_BACKUP_VALUE:I = 0x1

.field static final MSG_SET_AWB:I = 0x7559

.field static final MSG_SET_EXPOSURE:I = 0x755a

.field static final MSG_SET_FOCUS:I = 0x755b

.field static final MSG_SET_ISO:I = 0x755c


# instance fields
.field private m_AwbMode:I

.field private m_Exposure:J

.field private m_Focus:F

.field private m_ISO:I


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;)V
    .locals 2
    .param p1, "cameraThread"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    .line 37
    const-string v0, "Manual Mode Controller"

    invoke-direct {p0, v0, p1}, Lcom/meizu/media/camera/ModeController;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraThread;)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_AwbMode:I

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_Exposure:J

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_Focus:F

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_ISO:I

    .line 38
    return-void
.end method

.method private applyAutoValues()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-direct {p0, v2, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setAwb(II)V

    .line 45
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setExposure(JI)V

    .line 46
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setFocus(FI)V

    .line 47
    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setISO(II)V

    .line 48
    return-void
.end method

.method private applyLastValues()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    iget v0, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_AwbMode:I

    invoke-direct {p0, v0, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setAwb(II)V

    .line 55
    iget-wide v0, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_Exposure:J

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setExposure(JI)V

    .line 56
    iget v0, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_Focus:F

    invoke-direct {p0, v0, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setFocus(FI)V

    .line 57
    iget v0, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_ISO:I

    invoke-direct {p0, v0, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setISO(II)V

    .line 58
    return-void
.end method

.method private disableManualCapture()V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeController;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 65
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string v2, "disableManualCapture() - No camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private enableManualCapture()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeController;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 80
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string v2, "enableManualCapture() - No camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setAwb(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeController;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 156
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string v2, "setAwb() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 164
    iput p1, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_AwbMode:I

    .line 165
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setExposure(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "flags"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeController;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 174
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string v2, "setExposure() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_1

    .line 182
    iput-wide p1, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_Exposure:J

    .line 183
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setFocus(FI)V
    .locals 3
    .param p1, "value"    # F
    .param p2, "flags"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeController;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 192
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string v2, "setFocus() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 199
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    .line 200
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/FocusMode;->MANUAL:Lcom/meizu/media/camera/FocusMode;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 205
    :goto_1
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 206
    iput p1, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_Focus:F

    .line 207
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_2
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/FocusMode;->CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setISO(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeController;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 216
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string v2, "setISO() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 224
    iput p1, p0, Lcom/meizu/media/camera/manual/ManualModeController;->m_ISO:I

    .line 225
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ModeController;->handleMessage(Landroid/os/Message;)V

    .line 148
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setAwb(II)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setExposure(JI)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setFocus(FI)V

    goto :goto_0

    .line 141
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/meizu/media/camera/manual/ManualModeController;->setISO(II)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x7559
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onEnter(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ModeController;->onEnter(I)Z

    .line 99
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeController;->enableManualCapture()V

    .line 102
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeController;->applyLastValues()V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeController;->applyAutoValues()V

    .line 116
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeController;->disableManualCapture()V

    .line 118
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ModeController;->onExit(I)V

    .line 119
    return-void
.end method
