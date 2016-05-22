.class final Lcom/oneplus/camera/SmileCaptureControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "SmileCaptureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/SmileCaptureController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/SmileCaptureControllerImpl$4;
    }
.end annotation


# static fields
.field private static final COOL_DOWN_TIME_AFTER_TAKING_SMILE_CAPTURE:I = 0x1f4

.field private static final DELAY_FOR_TAKING_SMILE_CAPTURE:I = 0xc8

.field private static final MSG_END_COOL_DOWN:I = 0x2711


# instance fields
.field private m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

.field private m_FirstSmileCallbackTimeStamp:J

.field private m_FocusController:Lcom/oneplus/camera/FocusController;

.field private m_IsCoolingDown:Z

.field private m_IsSmileCaptureSettingEnabled:Z

.field private m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_Settings:Lcom/oneplus/base/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "SmileCapture"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 43
    const-string v0, "Smile capture controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FirstSmileCallbackTimeStamp:J

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/SmileCaptureControllerImpl;Lcom/oneplus/base/BaseActivity$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/SmileCaptureControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/SmileCaptureControllerImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/SmileCaptureControllerImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->onFacesChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/SmileCaptureControllerImpl;Lcom/oneplus/camera/FocusState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/SmileCaptureControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/FocusState;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V

    return-void
.end method

.method private onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V
    .locals 2
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 141
    sget-object v0, Lcom/oneplus/camera/SmileCaptureControllerImpl$4;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v1, "SmileCapture"

    invoke-virtual {v0, v1}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsSmileCaptureSettingEnabled:Z

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onFacesChanged(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "faces":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    iget-boolean v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsSmileCaptureSettingEnabled:Z

    if-nez v3, :cond_0

    .line 216
    :goto_0
    return-void

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string v6, "onFacesChanged() - faces is empty"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string v6, "onFacesChanged() - selftimer is runnning"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    goto :goto_0

    .line 173
    :cond_3
    iget-boolean v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsCoolingDown:Z

    if-eqz v3, :cond_4

    .line 175
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string v6, "onFacesChanged() - is cooling down"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    goto :goto_0

    .line 181
    :cond_4
    const/4 v2, 0x0

    .line 182
    .local v2, "smilingCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$Face;

    .line 184
    .local v0, "face":Lcom/oneplus/camera/Camera$Face;
    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$Face;->isSmiling()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "face":Lcom/oneplus/camera/Camera$Face;
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFacesChanged() - smilingCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", faces.size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-lez v2, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_9

    .line 192
    iget-wide v6, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FirstSmileCallbackTimeStamp:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_8

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FirstSmileCallbackTimeStamp:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 195
    .local v4, "timeDiff":J
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFacesChanged() - timeDiff : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-wide/16 v6, 0xc8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_7

    .line 198
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->triggerSmileCapture()V

    goto/16 :goto_0

    .line 202
    :cond_7
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string v6, "onFacesChanged() - waiting for smile capture"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    .end local v4    # "timeDiff":J
    :cond_8
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string v6, "onFacesChanged() - get first smile callback"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FirstSmileCallbackTimeStamp:J

    goto/16 :goto_0

    .line 213
    :cond_9
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string v6, "onFacesChanged() - not enough smile"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    goto/16 :goto_0
.end method

.method private onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V
    .locals 1
    .param p1, "state"    # Lcom/oneplus/camera/FocusState;

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsSmileCaptureSettingEnabled:Z

    if-nez v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    sget-object v0, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne p1, v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    goto :goto_0
.end method

.method private resetFirstCallbackTime()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "resetFirstCallbackTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FirstSmileCallbackTimeStamp:J

    .line 233
    return-void
.end method

.method private triggerSmileCapture()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 238
    iget-object v2, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "triggerSmileCapture() - start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    .line 244
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "triggerSmileCapture() - Capture UI is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 252
    .local v0, "oldSelftimerSetting":J
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/camera/CameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->capturePhoto()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 256
    iget-object v2, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "triggerSmileCapture() - Fail to capture photo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/camera/CameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 265
    iput-boolean v6, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsCoolingDown:Z

    .line 266
    const/16 v2, 0x2711

    const-wide/16 v4, 0x1f4

    invoke-static {p0, v2, v6, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 268
    iget-object v2, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "triggerSmileCapture() - end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 52
    iget-boolean v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsSmileCaptureSettingEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 69
    :goto_0
    return-void

    .line 63
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsCoolingDown:Z

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onDeinitialize()V

    .line 129
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    .line 132
    iget-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->release()V

    .line 134
    :cond_0
    return-void
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    .line 76
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 79
    const-class v1, Lcom/oneplus/camera/FaceTracker;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/FaceTracker;

    iput-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    .line 80
    const-class v1, Lcom/oneplus/camera/FocusController;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/FocusController;

    iput-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    .line 83
    new-instance v1, Lcom/oneplus/base/Settings;

    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 87
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SmileCaptureControllerImpl$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl$1;-><init>(Lcom/oneplus/camera/SmileCaptureControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 95
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    sget-object v2, Lcom/oneplus/camera/FaceTracker;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/SmileCaptureControllerImpl$2;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl$2;-><init>(Lcom/oneplus/camera/SmileCaptureControllerImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/FaceTracker;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v2, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/SmileCaptureControllerImpl$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl$3;-><init>(Lcom/oneplus/camera/SmileCaptureControllerImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v2, "SmileCapture"

    invoke-virtual {v1, v2}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsSmileCaptureSettingEnabled:Z

    .line 121
    :cond_2
    return-void
.end method
