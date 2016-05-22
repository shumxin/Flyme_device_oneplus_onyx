.class final Lcom/oneplus/camera/ui/OnScreenHintImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "OnScreenHintImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/OnScreenHint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/OnScreenHintImpl$5;,
        Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    }
.end annotation


# static fields
.field private static final DURATION_SCREEN_HINT_INVISIBLE:J = 0x3e8L

.field private static final MSG_SHOW_SCREEN_HINT:I = 0x2710


# instance fields
.field private m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

.field private final m_ContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

.field private m_HintHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_HintTextView:Landroid/widget/TextView;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

.field private m_ZoomController:Lcom/oneplus/camera/ZoomController;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 84
    const-string v0, "On-screen hint"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 43
    new-instance v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/widget/RotateRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/OnScreenHintImpl;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/ui/OnScreenHintImpl;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->updateBaseViewLayout(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/ZoomController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/OnScreenHintImpl;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    .param p2, "x2"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->updateHintLayout(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->hideHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->showHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/camera/ui/OnScreenHintImpl;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private canShowHint()Z
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 92
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 95
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private hideHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->verifyAccess()V

    .line 120
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z

    move-result v0

    .line 121
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->showHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 126
    sget-object v1, Lcom/oneplus/camera/ui/OnScreenHintImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private showHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 252
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->canShowHint()Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v7

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 255
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-nez v1, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 265
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b0051

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    .line 266
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->addNavBarAlignedView(Landroid/view/View;)V

    .line 269
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v2, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->updateBaseViewLayout(Landroid/graphics/RectF;)V

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget v1, p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    move v7, v3

    .line 278
    .local v7, "animate":Z
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->updateHintLayout(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V

    .line 279
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p0, v1, v4, v5}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;J)V

    .line 280
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-eqz v7, :cond_5

    const-wide/16 v4, 0x258

    :cond_5
    sget-object v6, Lcom/oneplus/camera/ui/OnScreenHintImpl;->INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    move v7, v3

    .line 281
    goto :goto_0
.end method

.method private updateBaseViewLayout(Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x0

    .line 287
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 291
    .local v1, "captureBarHeight":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 292
    .local v2, "optionPanelItemHeight":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 293
    .local v3, "screenHeight":I
    add-int v0, v1, v2

    .line 295
    .local v0, "bottomMargin":I
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 296
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    sub-int v6, v3, v0

    invoke-static {v4, v5, v6}, Lcom/oneplus/widget/ViewUtils;->setSize(Landroid/view/View;II)V

    .line 299
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iget v5, p1, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, p1, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    invoke-static {v4, v5, v6, v7, v7}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/widget/ViewUtils;->setSize(Landroid/view/View;II)V

    goto :goto_1
.end method

.method private updateHintLayout(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V
    .locals 10
    .param p1, "handle"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const v9, 0x7f020071

    const/4 v8, 0x0

    const v7, 0x7f0a000d

    const/16 v6, 0xc

    const/16 v5, 0xa

    .line 321
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-nez v3, :cond_0

    .line 371
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 326
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 327
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 328
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v3, Lcom/oneplus/camera/ui/OnScreenHintImpl$5;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 370
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 332
    :pswitch_0
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 333
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 334
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 335
    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 336
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 337
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 340
    :pswitch_1
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 341
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 342
    const v3, 0x7f070039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 343
    if-eqz p1, :cond_1

    iget v3, p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 345
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 346
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 350
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 351
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    const v4, 0x7f0a000c

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 355
    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 356
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 357
    const v3, 0x7f070039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 358
    if-eqz p1, :cond_2

    iget v3, p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 360
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    const v4, 0x7f060005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 361
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 365
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 366
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    const v4, 0x7f0a000c

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->showHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public hideScreenHint()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 202
    return-void
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    .line 137
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 140
    const-class v2, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 141
    const-class v2, Lcom/oneplus/camera/ZoomController;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ZoomController;

    iput-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    .line 144
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 145
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v1, Lcom/oneplus/camera/ui/OnScreenHintImpl$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$2;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    .line 162
    .local v1, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 163
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 165
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v3, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/OnScreenHintImpl$3;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$3;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ui/Viewfinder;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 180
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v3, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 195
    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->TAG:Ljava/lang/String;

    const-string v3, "onInitialize() - No Viewfinder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 2
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 210
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;Lcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 211
    return-void
.end method

.method public showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    .line 219
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->verifyAccess()V

    .line 220
    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->isRunningOrInitializing(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    const/4 v0, 0x0

    .line 244
    :cond_0
    :goto_0
    return-object v0

    .line 224
    :cond_1
    new-instance v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    or-int/lit8 v4, p2, 0x4

    invoke-direct {v0, p0, p1, v4}, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;Ljava/lang/CharSequence;I)V

    .line 225
    .local v0, "handle":Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    and-int/lit8 v4, p2, 0x8

    if-nez v4, :cond_4

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "index":I
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 229
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .line 232
    .local v3, "nextHandle":Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    iget v4, v3, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 236
    .end local v3    # "nextHandle":Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 242
    .end local v1    # "index":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;>;"
    :goto_2
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->showHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    sget-object v4, Lcom/oneplus/camera/ui/OnScreenHintImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    .restart local v1    # "index":I
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;>;"
    .restart local v3    # "nextHandle":Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 235
    goto :goto_1

    .line 239
    .end local v1    # "index":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;>;"
    .end local v3    # "nextHandle":Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    :cond_4
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->verifyAccess()V

    .line 308
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 313
    .end local p1    # "handle":Lcom/oneplus/base/Handle;
    :goto_0
    return v0

    .restart local p1    # "handle":Lcom/oneplus/base/Handle;
    :cond_1
    move-object v0, p1

    .line 310
    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    iput-object p2, v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->text:Ljava/lang/CharSequence;

    .line 311
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    check-cast p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .end local p1    # "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
