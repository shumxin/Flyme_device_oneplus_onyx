.class final Lcom/meizu/media/camera/ui/ShutterEffect;
.super Lcom/meizu/media/camera/UIComponent;
.source "ShutterEffect.java"


# instance fields
.field private m_EffectFrame:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 21
    const-string v0, "Shutter Effect"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Z)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/ui/ShutterEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ShutterEffect;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/ShutterEffect;->onShutter()V

    return-void
.end method

.method private onShutter()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ShutterEffect;->m_EffectFrame:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 56
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ShutterEffect;->m_EffectFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 57
    return-void
.end method


# virtual methods
.method protected onInitialize()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Lcom/meizu/media/camera/UIComponent;->onInitialize()V

    .line 32
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/ShutterEffect;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 33
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/ui/ShutterEffect;->m_EffectFrame:Landroid/view/View;

    .line 34
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ShutterEffect;->m_EffectFrame:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 35
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ShutterEffect;->m_EffectFrame:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/ui/ShutterEffect$1;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/ShutterEffect$1;-><init>(Lcom/meizu/media/camera/ui/ShutterEffect;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 50
    return-void
.end method
