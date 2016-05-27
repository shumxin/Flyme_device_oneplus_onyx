.class public Lcom/android/internal/widget/OppoActionBarContextView;
.super Lcom/android/internal/widget/ActionBarContextView;
.source "OppoActionBarContextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_ANIMATOR:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoActionBarContextView"


# instance fields
.field private mActionBarHeight:I

.field private mAfterAnimatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBeforeAnimatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private final mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mHideListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private final mScreenLocation:[I

.field private mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingFlags:Z

.field private mStatusBarHeight:I

.field private mWithAnimatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/OppoActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowingFlags:Z

    .line 57
    iput v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    .line 58
    iput v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mStatusBarHeight:I

    .line 59
    iput v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionBarHeight:I

    .line 60
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mScreenLocation:[I

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 62
    new-instance v1, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;-><init>(Lcom/android/internal/widget/OppoActionBarContextView;Z)V

    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 63
    new-instance v1, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;-><init>(Lcom/android/internal/widget/OppoActionBarContextView;Z)V

    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mWithAnimatorList:Ljava/util/List;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAfterAnimatorList:Ljava/util/List;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mBeforeAnimatorList:Ljava/util/List;

    .line 69
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0d0414

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mStatusBarHeight:I

    .line 116
    sget-object v1, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x8b

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionBarHeight:I

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void
.end method

.method private AnimatorLog(Landroid/animation/Animator;Ljava/lang/String;)V
    .locals 8
    .param p1, "anim"    # Landroid/animation/Animator;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string v2, ""

    .line 354
    .local v2, "prop":Ljava/lang/String;
    const-string v0, ""

    .line 355
    .local v0, "info":Ljava/lang/String;
    instance-of v3, p1, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 356
    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 357
    .local v1, "objAnim":Landroid/animation/ObjectAnimator;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .end local v1    # "objAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v3, "OppoActionBarContextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method private getEndingAlpha(I)I
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 321
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEndingY(I)I
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getViewHeight()I

    move-result v0

    neg-int v1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private getStartingAlpha(I)I
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 317
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getStartingY(I)I
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getViewHeight()I

    move-result v0

    neg-int v1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private getUserAnimListener(I)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 297
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_0
.end method

.method private getViewHeight()I
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getHeight()I

    move-result v0

    .line 260
    .local v0, "height":I
    if-nez v0, :cond_0

    .line 261
    iget v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionBarHeight:I

    .line 263
    :cond_0
    return v0
.end method

.method private isApproximate(III)Z
    .locals 1
    .param p1, "v1"    # I
    .param p2, "v2"    # I
    .param p3, "offset"    # I

    .prologue
    .line 325
    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needTranslationY()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 329
    iget-boolean v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowingFlags:Z

    if-eqz v3, :cond_2

    .line 330
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 331
    .local v0, "getRect":Z
    if-nez v0, :cond_1

    .line 348
    .end local v0    # "getRect":Z
    :cond_0
    :goto_0
    return v1

    .line 334
    .restart local v0    # "getRect":Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mScreenLocation:[I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView;->getLocationOnScreen([I)V

    .line 336
    const-string v3, "OppoActionBarContextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mScreenLocation=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mScreenLocation:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mScreenLocation:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), mGlobalVisibleRect=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mScreenLocation:[I

    aget v3, v3, v1

    iget v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mStatusBarHeight:I

    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->isApproximate(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 344
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mScreenLocation:[I

    aget v3, v3, v1

    iget v4, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mStatusBarHeight:I

    iget v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mActionBarHeight:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->isApproximate(III)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "getRect":Z
    :cond_2
    move v1, v2

    .line 348
    goto/16 :goto_0
.end method

.method private playAlphaAnimator(Landroid/animation/AnimatorSet;IZ)Landroid/animation/AnimatorSet$Builder;
    .locals 7
    .param p1, "set"    # Landroid/animation/AnimatorSet;
    .param p2, "visibility"    # I
    .param p3, "translationY"    # Z

    .prologue
    const/4 v6, 0x1

    .line 268
    invoke-direct {p0, p2}, Lcom/android/internal/widget/OppoActionBarContextView;->getStartingAlpha(I)I

    move-result v2

    .line 269
    .local v2, "starting":I
    invoke-direct {p0, p2}, Lcom/android/internal/widget/OppoActionBarContextView;->getEndingAlpha(I)I

    move-result v1

    .line 270
    .local v1, "ending":I
    const-string v3, "OppoActionBarContextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do alpha "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 272
    int-to-float v3, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView;->setAlpha(F)V

    .line 273
    const-string v3, "alpha"

    new-array v4, v6, [F

    const/4 v5, 0x0

    int-to-float v6, v1

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 274
    .local v0, "anim":Landroid/animation/Animator;
    iget v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 275
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 276
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    return-object v3
.end method

.method private withTransAnimator(Landroid/animation/AnimatorSet$Builder;IZ)V
    .locals 7
    .param p1, "b"    # Landroid/animation/AnimatorSet$Builder;
    .param p2, "visibility"    # I
    .param p3, "translationY"    # Z

    .prologue
    const/4 v6, 0x1

    .line 280
    if-eqz p3, :cond_0

    .line 281
    invoke-direct {p0, p2}, Lcom/android/internal/widget/OppoActionBarContextView;->getStartingY(I)I

    move-result v2

    .line 282
    .local v2, "starting":I
    invoke-direct {p0, p2}, Lcom/android/internal/widget/OppoActionBarContextView;->getEndingY(I)I

    move-result v1

    .line 283
    .local v1, "ending":I
    const-string v3, "OppoActionBarContextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do TranslationY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 285
    int-to-float v3, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView;->setTranslationY(F)V

    .line 286
    const-string v3, "translationY"

    new-array v4, v6, [F

    const/4 v5, 0x0

    int-to-float v6, v1

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 287
    .local v0, "anim":Landroid/animation/Animator;
    iget v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 288
    iget-object v3, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 294
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "ending":I
    .end local v2    # "starting":I
    :goto_0
    return-void

    .line 291
    :cond_0
    const-string v3, "OppoActionBarContextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no TranslationY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/OppoActionBarContextView;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public addAfterAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAfterAnimatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public addAfterAnimators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAfterAnimatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    return-void
.end method

.method public addBeforeAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mBeforeAnimatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public addBeforeAnimators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mBeforeAnimatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    return-void
.end method

.method public addHideListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public addShowListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public addWithAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mWithAnimatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public addWithAnimators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mWithAnimatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 10
    .param p1, "visibility"    # I

    .prologue
    .line 133
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 134
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, "alpha":I
    if-nez p1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v5, :cond_1

    .line 140
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ActionMenuView;->setAlpha(F)V

    .line 143
    :cond_1
    const/4 v0, 0x1

    .line 145
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/OppoActionBarContextView;->needTranslationY()Z

    move-result v4

    .line 146
    .local v4, "translationY":Z
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 147
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-direct {p0, v2, p1, v4}, Lcom/android/internal/widget/OppoActionBarContextView;->playAlphaAnimator(Landroid/animation/AnimatorSet;IZ)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 148
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    invoke-direct {p0, v1, p1, v4}, Lcom/android/internal/widget/OppoActionBarContextView;->withTransAnimator(Landroid/animation/AnimatorSet$Builder;IZ)V

    .line 149
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v5, :cond_3

    .line 150
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    int-to-float v9, v0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 151
    .local v3, "splitAnim":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mDuration:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 152
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 154
    .end local v3    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->playUserAnimators(Landroid/animation/AnimatorSet$Builder;)V

    .line 155
    iget-object v5, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->getUserAnimListener(I)Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 157
    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 159
    return-void
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0xc090438

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mClose:Landroid/view/View;

    .line 128
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 129
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;Z)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "show"    # Z

    .prologue
    .line 183
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    .line 184
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 185
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 186
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_1

    .line 183
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    goto :goto_0

    .line 189
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "show"    # Z

    .prologue
    .line 174
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    .line 175
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 176
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 177
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .line 174
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    goto :goto_0

    .line 180
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;Z)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "show"    # Z

    .prologue
    .line 192
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    .line 193
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 195
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_1

    .line 192
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    goto :goto_0

    .line 198
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "show"    # Z

    .prologue
    .line 165
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowListenerList:Ljava/util/List;

    .line 166
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 167
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 168
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_1

    .line 165
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mHideListenerList:Ljava/util/List;

    goto :goto_0

    .line 171
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1
    return-void
.end method

.method public playUserAnimators(Landroid/animation/AnimatorSet$Builder;)V
    .locals 3
    .param p1, "b"    # Landroid/animation/AnimatorSet$Builder;

    .prologue
    .line 233
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mWithAnimatorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mWithAnimatorList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mWithAnimatorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 235
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 236
    const-string v1, "with"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->AnimatorLog(Landroid/animation/Animator;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAfterAnimatorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAfterAnimatorList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mAfterAnimatorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 240
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 241
    const-string v1, "after"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->AnimatorLog(Landroid/animation/Animator;Ljava/lang/String;)V

    goto :goto_1

    .line 243
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mBeforeAnimatorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mBeforeAnimatorList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mBeforeAnimatorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 245
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 246
    const-string v1, "before"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->AnimatorLog(Landroid/animation/Animator;Ljava/lang/String;)V

    goto :goto_2

    .line 248
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    return-void
.end method

.method public setShowingFlags(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    .line 251
    const/4 v0, 0x1

    const-string v1, "OppoActionBarContextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShowingFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 252
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoActionBarContextView;->mShowingFlags:Z

    .line 253
    return-void
.end method
