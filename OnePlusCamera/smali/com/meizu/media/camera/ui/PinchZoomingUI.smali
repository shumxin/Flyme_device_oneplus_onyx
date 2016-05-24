.class final Lcom/meizu/media/camera/ui/PinchZoomingUI;
.super Lcom/meizu/media/camera/CameraComponent;
.source "PinchZoomingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/ui/PinchZoomingUI$3;
    }
.end annotation


# static fields
.field private static final DURATION_START_SCALING:J = 0x64L

.field private static final RATIO_SCALING:F = 1.2f


# instance fields
.field private m_CameraGallery:Lcom/meizu/media/camera/ui/CameraGallery;

.field private m_GestureDetector:Landroid/view/ScaleGestureDetector;

.field private m_InitialDigitalZoom:F

.field private m_InitialSpan:F

.field private m_IsScaling:Z

.field private m_ScaleBeginTime:J

.field private final m_ScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private m_ZoomBar:Lcom/meizu/media/camera/ZoomBar;

.field private m_ZoomController:Lcom/meizu/media/camera/ZoomController;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 66
    const-string v0, "Pinch Zooming UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Z)V

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_InitialDigitalZoom:F

    .line 36
    new-instance v0, Lcom/meizu/media/camera/ui/PinchZoomingUI$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/ui/PinchZoomingUI$1;-><init>(Lcom/meizu/media/camera/ui/PinchZoomingUI;)V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/media/camera/ui/PinchZoomingUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/PinchZoomingUI;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_IsScaling:Z

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/media/camera/ui/PinchZoomingUI;J)J
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/PinchZoomingUI;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ScaleBeginTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/meizu/media/camera/ui/PinchZoomingUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/PinchZoomingUI;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_InitialSpan:F

    return p1
.end method

.method static synthetic access$302(Lcom/meizu/media/camera/ui/PinchZoomingUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/PinchZoomingUI;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_InitialDigitalZoom:F

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/media/camera/ui/PinchZoomingUI;)Lcom/meizu/media/camera/ZoomController;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/PinchZoomingUI;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/media/camera/ui/PinchZoomingUI;F)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/PinchZoomingUI;
    .param p1, "x1"    # F

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/PinchZoomingUI;->onScaleByGesture(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/media/camera/ui/PinchZoomingUI;Lcom/meizu/media/camera/ui/MotionEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/PinchZoomingUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/MotionEventArgs;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/PinchZoomingUI;->onTouch(Lcom/meizu/media/camera/ui/MotionEventArgs;)V

    return-void
.end method

.method private onScaleByGesture(F)V
    .locals 9
    .param p1, "span"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ScaleBeginTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget v3, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_InitialSpan:F

    div-float v3, p1, v3

    const v4, 0x3f99999a    # 1.2f

    mul-float v2, v3, v4

    .line 108
    .local v2, "spanRatio":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    .line 112
    iget v3, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_InitialDigitalZoom:F

    mul-float v0, v3, v2

    .line 113
    .local v0, "digitalZoom":F
    iget-object v3, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v4, Lcom/meizu/media/camera/ZoomController;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/meizu/media/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 114
    .local v1, "maxDigitalZoom":F
    cmpg-float v3, v0, v8

    if-gez v3, :cond_3

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    .line 120
    :goto_1
    iget-object v3, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v4, Lcom/meizu/media/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/ZoomController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 123
    cmpl-float v3, v0, v8

    if-eqz v3, :cond_2

    cmpl-float v3, v0, v1

    if-nez v3, :cond_0

    .line 125
    :cond_2
    iget-object v3, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ZoomBar:Lcom/meizu/media/camera/ZoomBar;

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ZoomBar:Lcom/meizu/media/camera/ZoomBar;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/ZoomBar;->setZoomBarVisibility(ZI)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 117
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method private onTouch(Lcom/meizu/media/camera/ui/MotionEventArgs;)V
    .locals 8
    .param p1, "e"    # Lcom/meizu/media/camera/ui/MotionEventArgs;

    .prologue
    const/4 v7, 0x1

    .line 135
    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/MotionEventArgs;->isHandled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/PinchZoomingUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 140
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/PhotoCaptureState;

    .line 141
    .local v2, "photoCaptureState":Lcom/meizu/media/camera/PhotoCaptureState;
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/VideoCaptureState;

    .line 142
    .local v3, "videoCaptureState":Lcom/meizu/media/camera/VideoCaptureState;
    sget-object v4, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-eq v2, v4, :cond_2

    sget-object v4, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v3, v4, :cond_0

    .line 148
    :cond_2
    iget-object v4, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_CameraGallery:Lcom/meizu/media/camera/ui/CameraGallery;

    if-eqz v4, :cond_3

    .line 150
    sget-object v5, Lcom/meizu/media/camera/ui/PinchZoomingUI$3;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$UIState:[I

    iget-object v4, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_CameraGallery:Lcom/meizu/media/camera/ui/CameraGallery;

    sget-object v6, Lcom/meizu/media/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v6}, Lcom/meizu/media/camera/ui/CameraGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {v4}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 161
    :cond_3
    :pswitch_0
    iget-object v4, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v5, Lcom/meizu/media/camera/ZoomController;->PROP_IS_DIGITAL_ZOOM_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/meizu/media/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v5, Lcom/meizu/media/camera/ZoomController;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/meizu/media/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/MotionEventArgs;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 170
    .local v1, "event":Landroid/view/MotionEvent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v7, :cond_4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 174
    :cond_4
    iget-object v4, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_GestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 175
    iget-boolean v4, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_IsScaling:Z

    if-eqz v4, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/MotionEventArgs;->setHandled()V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onInitialize()V
    .locals 4

    .prologue
    .line 75
    invoke-super {p0}, Lcom/meizu/media/camera/CameraComponent;->onInitialize()V

    .line 78
    const-class v1, Lcom/meizu/media/camera/ZoomBar;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/PinchZoomingUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ZoomBar;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ZoomBar:Lcom/meizu/media/camera/ZoomBar;

    .line 79
    const-class v1, Lcom/meizu/media/camera/ZoomController;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/PinchZoomingUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ZoomController;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    .line 80
    const-class v1, Lcom/meizu/media/camera/ui/CameraGallery;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/PinchZoomingUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/CameraGallery;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_CameraGallery:Lcom/meizu/media/camera/ui/CameraGallery;

    .line 83
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/PinchZoomingUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 84
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_ScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/PinchZoomingUI;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_GestureDetector:Landroid/view/ScaleGestureDetector;

    .line 85
    iget-object v1, p0, Lcom/meizu/media/camera/ui/PinchZoomingUI;->m_GestureDetector:Landroid/view/ScaleGestureDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 88
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->EVENT_TOUCH:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/ui/PinchZoomingUI$2;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/PinchZoomingUI$2;-><init>(Lcom/meizu/media/camera/ui/PinchZoomingUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 96
    return-void
.end method
