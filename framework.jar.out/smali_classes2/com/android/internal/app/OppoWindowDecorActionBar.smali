.class public Lcom/android/internal/app/OppoWindowDecorActionBar;
.super Lcom/android/internal/app/WindowDecorActionBar;
.source "OppoWindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final DBG:Z = false

.field private static final OPPO_WIDGET_ANIM_DISABLE:Ljava/lang/String; = "oppo.widget.animation.disabled"

.field private static final TAG:Ljava/lang/String; = "OppoWindowDecorActionBar"


# instance fields
.field private mActionBarHeight:I

.field private final mAllHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAllShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimationDisabled:Z

.field private final mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentForeground:Landroid/graphics/drawable/Drawable;

.field private mContentForegroundGravity:I

.field private mContentLayout:Landroid/widget/FrameLayout;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

.field private mCurWindowVisibility:I

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private mISSearchBarMode:Z

.field private mIsActionBarOverlay:Z

.field private mIsNoTitle:Z

.field private mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

.field private mScreenHeight:I

.field private mScreenLayout:Landroid/view/View;

.field private mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mShowHideAnimationEnabled:Z

.field private mSplitView:Lcom/android/internal/widget/ActionBarContainer;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    .line 104
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurWindowVisibility:I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    .line 108
    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForeground:Landroid/graphics/drawable/Drawable;

    .line 109
    const/16 v0, 0x77

    iput v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForegroundGravity:I

    .line 110
    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    .line 113
    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 120
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenHeight:I

    .line 121
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionBarHeight:I

    .line 124
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mISSearchBarMode:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAnimationDisabled:Z

    .line 129
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$1;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 155
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$2;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 180
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$3;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 189
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$4;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 247
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->init(Landroid/view/Window;)V

    .line 248
    return-void
.end method

.method private constructor <init>(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    .line 104
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurWindowVisibility:I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    .line 108
    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForeground:Landroid/graphics/drawable/Drawable;

    .line 109
    const/16 v0, 0x77

    iput v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForegroundGravity:I

    .line 110
    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    .line 113
    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 120
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenHeight:I

    .line 121
    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionBarHeight:I

    .line 124
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mISSearchBarMode:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAnimationDisabled:Z

    .line 129
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$1;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 155
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$2;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 180
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$3;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 189
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$4;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 252
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->init(Landroid/view/Window;)V

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/OppoWindowDecorActionBar;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->setCurrentShowAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/app/OppoWindowDecorActionBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/app/OppoWindowDecorActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/OppoWindowDecorActionBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->resizeScreenLayout(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/app/OppoWindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/OppoWindowDecorActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/OppoWindowDecorActionBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/OppoWindowDecorActionBar;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    return-object v0
.end method

.method private changeScreenHeight()V
    .locals 1

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->hookCheckShowingFlags()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->resizeScreenLayout(Z)V

    .line 626
    :cond_0
    return-void
.end method

.method private clearForeground()V
    .locals 3

    .prologue
    .line 590
    const/4 v0, 0x0

    const-string v1, "OppoWindowDecorActionBar"

    const-string v2, "clearForeground"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 592
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 593
    return-void
.end method

.method private endCurrentShowAnim()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 636
    :cond_0
    return-void
.end method

.method private getContainerHeight()I
    .locals 2

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 603
    .local v0, "containerHeight":I
    if-nez v0, :cond_0

    .line 604
    iget v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionBarHeight:I

    .line 606
    :cond_0
    return v0
.end method

.method private init(Landroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 540
    .local v0, "decor":Landroid/view/View;
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    .line 541
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsNoTitle:Z

    .line 542
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionBarOverlay:Z

    .line 543
    iget-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionBarOverlay:Z

    if-nez v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 546
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 547
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForeground:Landroid/graphics/drawable/Drawable;

    .line 548
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForegroundGravity:I

    .line 549
    iget-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsNoTitle:Z

    if-eqz v1, :cond_1

    .line 550
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->clearForeground()V

    .line 552
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->initScreenInfo()V

    .line 555
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.widget.animation.disabled"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAnimationDisabled:Z

    .line 557
    return-void
.end method

.method private initScreenInfo()V
    .locals 5

    .prologue
    .line 560
    iget-object v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 561
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionBarHeight:I

    .line 562
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 564
    iget-object v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 565
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 566
    iget-boolean v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mIsActionBarOverlay:Z

    if-nez v3, :cond_1

    .line 567
    check-cast v2, Landroid/view/View;

    .end local v2    # "parent":Landroid/view/ViewParent;
    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    .line 568
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 569
    iget-object v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 570
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/android/internal/app/OppoWindowDecorActionBar$5;

    invoke-direct {v3, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar$5;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 587
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    :goto_0
    return-void

    .line 584
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Activity;)Lcom/android/internal/app/WindowDecorActionBar;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    .line 262
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/android/internal/app/WindowDecorActionBar;
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    .line 269
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method private resizeScreenLayout(Z)V
    .locals 5
    .param p1, "change"    # Z

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 612
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 613
    iget v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenHeight:I

    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getContainerHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 617
    :cond_0
    :goto_0
    const/4 v1, 0x0

    const-string v2, "OppoWindowDecorActionBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeScreenLayout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 614
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private restoreForeground()V
    .locals 3

    .prologue
    .line 596
    const/4 v0, 0x0

    const-string v1, "OppoWindowDecorActionBar"

    const-string v2, "restoreForeground"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForegroundGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 598
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 599
    return-void
.end method

.method private setCurrentShowAnim(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 630
    return-void
.end method


# virtual methods
.method public addAfterAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addAfterAnimator(Landroid/animation/Animator;)V

    .line 521
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
    .line 524
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addAfterAnimators(Ljava/util/List;)V

    .line 525
    return-void
.end method

.method public addBeforeAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addBeforeAnimator(Landroid/animation/Animator;)V

    .line 529
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
    .line 532
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addBeforeAnimators(Ljava/util/List;)V

    .line 533
    return-void
.end method

.method public addHideListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 509
    return-void
.end method

.method public addShowListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addShowListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 505
    return-void
.end method

.method public addWithAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addWithAnimator(Landroid/animation/Animator;)V

    .line 513
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
    .line 516
    .local p1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addWithAnimators(Ljava/util/List;)V

    .line 517
    return-void
.end method

.method animateToMode(Z)V
    .locals 3
    .param p1, "toActionMode"    # Z

    .prologue
    const/16 v0, 0x8

    .line 295
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 298
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->hasEmbeddedTabs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 299
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToVisibility(I)V

    .line 303
    :cond_1
    return-void

    .line 300
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 410
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->endCurrentShowAnim()V

    .line 411
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->clearForeground()V

    .line 413
    iget v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_0

    if-eqz p1, :cond_5

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->changeScreenHeight()V

    .line 415
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 416
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 417
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 418
    .local v3, "endingY":F
    if-eqz p1, :cond_1

    .line 419
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 420
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 421
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 423
    .end local v4    # "topLeft":[I
    :cond_1
    const-string v5, "OppoWindowDecorActionBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doHide : endingY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 425
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 426
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 427
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 428
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 429
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 430
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 432
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 433
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 434
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    iget-object v8, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 437
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->playUserAnimators(Landroid/animation/AnimatorSet$Builder;)V

    .line 439
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0xc0f0401

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 443
    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mISSearchBarMode:Z

    if-eqz v5, :cond_4

    .line 444
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 449
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    invoke-direct {p0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->setCurrentShowAnim(Landroid/animation/Animator;)V

    .line 451
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 457
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :goto_1
    return-void

    .line 446
    .restart local v0    # "a":Landroid/animation/ObjectAnimator;
    .restart local v1    # "anim":Landroid/animation/AnimatorSet;
    .restart local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .restart local v3    # "endingY":F
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc0d0414

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 453
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :cond_5
    const-string v5, "OppoWindowDecorActionBar"

    const-string v6, "doHide : no translation"

    invoke-static {v9, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 455
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .line 419
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v11, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 336
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->endCurrentShowAnim()V

    .line 337
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->restoreForeground()V

    .line 338
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 340
    iget v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_0

    if-eqz p1, :cond_6

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->changeScreenHeight()V

    .line 342
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 343
    invoke-direct {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getContainerHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 344
    .local v3, "startingY":F
    if-eqz p1, :cond_1

    .line 345
    const/4 v5, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 346
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 347
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 349
    .end local v4    # "topLeft":[I
    :cond_1
    const-string v5, "OppoWindowDecorActionBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doShow : startingY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 351
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 352
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 353
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 354
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 355
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 356
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 357
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 358
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 360
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_3

    .line 361
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 362
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 363
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 366
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->playUserAnimators(Landroid/animation/AnimatorSet$Builder;)V

    .line 368
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0xc0f0400

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mISSearchBarMode:Z

    if-eqz v5, :cond_5

    .line 373
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 385
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    invoke-direct {p0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->setCurrentShowAnim(Landroid/animation/Animator;)V

    .line 387
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 403
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :goto_1
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_4

    .line 404
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 406
    :cond_4
    return-void

    .line 375
    .restart local v0    # "a":Landroid/animation/ObjectAnimator;
    .restart local v1    # "anim":Landroid/animation/AnimatorSet;
    .restart local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .restart local v3    # "startingY":F
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc0d0414

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 389
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :cond_6
    const-string v5, "OppoWindowDecorActionBar"

    const-string v6, "doShow : no translation"

    invoke-static {v8, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 391
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 392
    iget-boolean v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 393
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 395
    :cond_7
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_8

    .line 396
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 397
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 398
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 400
    :cond_8
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v11}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 401
    iget-object v5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v11}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .line 345
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z

    .line 290
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->enableContentAnimations(Z)V

    .line 291
    return-void
.end method

.method hookInitViews(Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/DecorToolbar;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "overlayLayout"    # Landroid/view/View;
    .param p2, "containerView"    # Landroid/view/View;
    .param p3, "decorToolbar"    # Lcom/android/internal/widget/DecorToolbar;
    .param p4, "contextView"    # Landroid/view/View;
    .param p5, "splitView"    # Landroid/view/View;

    .prologue
    .line 489
    check-cast p1, Lcom/android/internal/widget/ActionBarOverlayLayout;

    .end local p1    # "overlayLayout":Landroid/view/View;
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 491
    iput-object p3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 493
    check-cast p4, Lcom/android/internal/widget/OppoActionBarContextView;

    .end local p4    # "contextView":Landroid/view/View;
    iput-object p4, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    .line 494
    check-cast p2, Lcom/android/internal/widget/ActionBarContainer;

    .end local p2    # "containerView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    .line 495
    check-cast p5, Lcom/android/internal/widget/ActionBarContainer;

    .end local p5    # "splitView":Landroid/view/View;
    iput-object p5, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 496
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I

    .line 498
    return-void

    .line 496
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 277
    iput p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mCurWindowVisibility:I

    .line 278
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->onWindowVisibilityChanged(I)V

    .line 279
    return-void
.end method

.method public setSearchBarMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 640
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mAnimationDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mISSearchBarMode:Z

    .line 641
    return-void

    .line 640
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 284
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->setShowHideAnimationEnabled(Z)V

    .line 285
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v3, 0x1

    .line 307
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoActionBarContextView;->killMode()V

    .line 312
    new-instance v0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;

    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;-><init>(Lcom/android/internal/app/OppoWindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 313
    .local v0, "mode":Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->invalidate()V

    .line 315
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->hookCheckShowingFlags()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->setShowingFlags(Z)V

    .line 316
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/OppoActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 317
    invoke-virtual {p0, v3}, Lcom/android/internal/app/OppoWindowDecorActionBar;->animateToMode(Z)V

    .line 318
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I

    if-ne v1, v3, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->sendAccessibilityEvent(I)V

    .line 328
    iput-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    .line 331
    .end local v0    # "mode":Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAnimateTab(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 461
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/WindowDecorActionBar;->updateAnimateTab(IFI)V

    .line 462
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    instance-of v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    check-cast v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->updateAnimateTab(IFI)V

    goto :goto_0
.end method

.method public updateScrollState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 473
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->updateScrollState(I)V

    .line 474
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    instance-of v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    check-cast v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->updateScrollState(I)V

    goto :goto_0
.end method
