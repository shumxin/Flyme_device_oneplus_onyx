.class final Lcom/meizu/media/camera/ui/RecordingTimerUI;
.super Lcom/meizu/media/camera/UIComponent;
.source "RecordingTimerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/ui/RecordingTimerUI$4;
    }
.end annotation


# static fields
.field private static final DURATION_RECORDING_TIMER_INVISIBLE:J = 0x3e8L

.field private static final MSG_SHOW_RECORDING_TIMER:I = 0x2710


# instance fields
.field private m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

.field private m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

.field private m_VideoCaptureState:Lcom/meizu/media/camera/VideoCaptureState;

.field private m_ZoomController:Lcom/meizu/media/camera/ZoomController;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 34
    const-string v0, "Recording Timer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Z)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/ui/RecordingTimerUI;J)V
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/RecordingTimerUI;
    .param p1, "x1"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->updateRecordingTimer(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/ui/RecordingTimerUI;)Lcom/meizu/media/camera/VideoCaptureState;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/RecordingTimerUI;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_VideoCaptureState:Lcom/meizu/media/camera/VideoCaptureState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/media/camera/ui/RecordingTimerUI;Lcom/meizu/media/camera/VideoCaptureState;)Lcom/meizu/media/camera/VideoCaptureState;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/RecordingTimerUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/VideoCaptureState;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_VideoCaptureState:Lcom/meizu/media/camera/VideoCaptureState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/ui/RecordingTimerUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/RecordingTimerUI;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->showRecordingTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/ui/RecordingTimerUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/RecordingTimerUI;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->hideRecordingTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/media/camera/ui/RecordingTimerUI;)Lcom/meizu/media/camera/ZoomController;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/RecordingTimerUI;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/media/camera/ui/RecordingTimerUI;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/RecordingTimerUI;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method private getRecordingTimerString(J)Ljava/lang/String;
    .locals 9
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0xe10

    const-wide/16 v6, 0x3c

    .line 139
    div-long v0, p1, v4

    .line 140
    .local v0, "hours":J
    mul-long/2addr v4, v0

    sub-long/2addr p1, v4

    .line 141
    div-long v2, p1, v6

    .line 142
    .local v2, "minutes":J
    mul-long v4, v2, v6

    sub-long/2addr p1, v4

    .line 144
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private hideRecordingTimer()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    .line 57
    return-void
.end method

.method private showRecordingTimer()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->getRecordingTimerString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    .line 127
    :cond_0
    return-void
.end method

.method private updateRecordingTimer(J)V
    .locals 5
    .param p1, "seconds"    # J

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->getRecordingTimerString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/media/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    invoke-super {p0, p1}, Lcom/meizu/media/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 51
    :goto_0
    return-void

    .line 44
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->showRecordingTimer()V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Lcom/meizu/media/camera/UIComponent;->onInitialize()V

    .line 68
    const-class v1, Lcom/meizu/media/camera/ui/OnScreenHint;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/OnScreenHint;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    .line 69
    const-class v1, Lcom/meizu/media/camera/ZoomController;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ZoomController;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    .line 72
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 73
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/ui/RecordingTimerUI$1;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/RecordingTimerUI$1;-><init>(Lcom/meizu/media/camera/ui/RecordingTimerUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 81
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/ui/RecordingTimerUI$2;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/RecordingTimerUI$2;-><init>(Lcom/meizu/media/camera/ui/RecordingTimerUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 103
    iget-object v1, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v2, Lcom/meizu/media/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/meizu/media/camera/ui/RecordingTimerUI$3;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/ui/RecordingTimerUI$3;-><init>(Lcom/meizu/media/camera/ui/RecordingTimerUI;)V

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 119
    :cond_0
    return-void
.end method
