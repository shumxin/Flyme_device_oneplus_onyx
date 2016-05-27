.class public Lcom/oppo/widget/OppoSearchViewAnim;
.super Landroid/widget/LinearLayout;
.source "OppoSearchViewAnim.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;,
        Lcom/oppo/widget/OppoSearchViewAnim$OnClickBtnSearchListener;,
        Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;
    }
.end annotation


# static fields
.field private static final ANIM_SEARCH:I = 0x3eb

.field private static final DEBUG:Z = true

.field private static final HIDE_SEARCH:I = 0x3e9

.field private static final OPPO_WIDGET_ANIM_DISABLE:Ljava/lang/String; = "oppo.widget.animation.disabled"

.field private static final SHOW_SEARCH:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "OppoSearchViewAnim"


# instance fields
.field private isDoActionBarAnim:Z

.field private isShowAnimationEnabled:Z

.field private mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

.field private final mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimationDisabled:Z

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mForeground:Landroid/view/View;

.field private mHomeBack:Landroid/widget/ImageView;

.field private mHomeBackMarginRight:I

.field private mHomeBackWidth:I

.field private mIsTriggerActionBarAnim:Z

.field private mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

.field private mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

.field private mOppoSearch:Landroid/view/ViewGroup;

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mSearchAnim:Landroid/widget/ImageView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowActionBarRunnable:Ljava/lang/Runnable;

.field private mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mStateSearch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoSearchViewAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/16 v2, 0x3e9

    iput v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 62
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 72
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    .line 73
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    .line 75
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    .line 76
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    .line 77
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    .line 79
    iput-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z

    .line 82
    iput-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mAnimationDisabled:Z

    .line 85
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$1;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$1;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 107
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$2;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$2;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 419
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$3;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$3;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    .line 443
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$4;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$4;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 476
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$5;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$5;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

    .line 148
    const-string v1, "com.android.contacts"

    .line 149
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const v2, 0xc030002

    invoke-virtual {p1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 153
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 155
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v2, 0xc090440

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc05042d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "oppo.widget.animation.disabled"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mAnimationDisabled:Z

    .line 163
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->setupSearchView()V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoSearchViewAnim;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    return v0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoSearchViewAnim;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoSearchViewAnim;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/android/internal/app/OppoWindowDecorActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoSearchViewAnim;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoSearchViewAnim;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoSearchViewAnim;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoSearchViewAnim;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoSearchViewAnim;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoSearchViewAnim;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoSearchViewAnim;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mAnimationDisabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchViewAnim;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private doHide()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 376
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    if-eq v1, v2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const/16 v1, 0x3eb

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    .line 381
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 384
    :cond_2
    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 386
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 392
    iget v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    sub-int v0, v1, v2

    .line 393
    .local v0, "startingX":I
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    if-eqz v1, :cond_0

    .line 396
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mAnimationDisabled:Z

    if-nez v1, :cond_3

    .line 397
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const-string v3, "translationX"

    new-array v4, v8, [F

    aput v9, v4, v6

    int-to-float v5, v0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addWithAnimator(Landroid/animation/Animator;)V

    .line 399
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    const-string v3, "translationX"

    new-array v4, v8, [F

    aput v9, v4, v6

    iget v5, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addWithAnimator(Landroid/animation/Animator;)V

    .line 402
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addWithAnimator(Landroid/animation/Animator;)V

    .line 410
    :cond_3
    const-string v1, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doHide() mActionBar.isShowing() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-virtual {v3}, Lcom/android/internal/app/OppoWindowDecorActionBar;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDoActionBarAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    .line 414
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lcom/oppo/widget/OppoSearchViewAnim;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 404
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private doShow()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 326
    const/16 v1, 0x3e9

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    if-eq v1, v2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const/16 v1, 0x3eb

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    .line 331
    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 332
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 333
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 337
    iget v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    if-nez v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 341
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    sub-int v0, v1, v2

    .line 342
    .local v0, "startingX":I
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    if-eqz v1, :cond_0

    .line 345
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mAnimationDisabled:Z

    if-eqz v1, :cond_4

    .line 346
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_3

    .line 347
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_3
    :goto_1
    const-string v1, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShow() mActionBar.isShowing() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-virtual {v3}, Lcom/android/internal/app/OppoWindowDecorActionBar;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDoActionBarAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-virtual {v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    if-eqz v1, :cond_0

    .line 369
    iput-boolean v7, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z

    .line 370
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-virtual {v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->hide()V

    goto/16 :goto_0

    .line 352
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const-string v3, "translationX"

    new-array v4, v8, [F

    int-to-float v5, v0

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addWithAnimator(Landroid/animation/Animator;)V

    .line 354
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    const-string v3, "translationX"

    new-array v4, v8, [F

    iget v5, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addWithAnimator(Landroid/animation/Animator;)V

    .line 356
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_3

    .line 357
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addWithAnimator(Landroid/animation/Animator;)V

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setButtonStyle(Z)V
    .locals 5
    .param p1, "isButton"    # Z

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setTranslationX(F)V

    .line 184
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 185
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    .line 190
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 191
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 192
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->onWindowFocusChanged(Z)V

    .line 193
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearFocus()V

    .line 199
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 200
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 201
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 430
    if-eqz p1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->post(Ljava/lang/Runnable;)Z

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 434
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 437
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setupSearchView()V
    .locals 1

    .prologue
    .line 168
    const v0, 0xc020492

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    .line 169
    const v0, 0xc020493

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    .line 170
    const v0, 0xc020494

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    .line 171
    const v0, 0xc020495

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    .line 173
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    .line 175
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 176
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 180
    return-void
.end method


# virtual methods
.method public changeButtonStyle()V
    .locals 4

    .prologue
    .line 275
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    monitor-enter v1

    .line 277
    :try_start_0
    const-string v0, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeButtonStyle isShowAnimationEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->doHide()V

    .line 285
    :goto_0
    monitor-exit v1

    .line 286
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 283
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeSearchStyle()V
    .locals 4

    .prologue
    .line 289
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    monitor-enter v1

    .line 291
    :try_start_0
    const-string v0, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeSearchStyle isShowAnimationEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->doShow()V

    .line 299
    :goto_0
    monitor-exit v1

    .line 300
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 297
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSearchView()Landroid/widget/SearchView;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;->onClickHomeback()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0xc020493
        :pswitch_0
    .end packed-switch
.end method

.method public setActionBar(Landroid/app/ActionBar;)V
    .locals 2
    .param p1, "bar"    # Landroid/app/ActionBar;

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    check-cast p1, Lcom/android/internal/app/OppoWindowDecorActionBar;

    .end local p1    # "bar":Landroid/app/ActionBar;
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    .line 265
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addShowListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 269
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoWindowDecorActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->setSearchBarMode(Z)V

    .line 272
    :cond_0
    return-void
.end method

.method public setDoActionBarAnim(Z)V
    .locals 0
    .param p1, "isAnim"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    .line 315
    return-void
.end method

.method public setForeground(Landroid/view/View;)V
    .locals 3
    .param p1, "foreground"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 307
    if-eqz p1, :cond_0

    .line 308
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const/16 v1, 0xa8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 311
    :cond_0
    return-void
.end method

.method public setOnAnimationListener(Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    .line 253
    return-void
.end method

.method public setOnClickBtnSearchListener(Lcom/oppo/widget/OppoSearchViewAnim$OnClickBtnSearchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoSearchViewAnim$OnClickBtnSearchListener;

    .prologue
    .line 242
    return-void
.end method

.method public setOnClickHomebackListener(Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

    .line 228
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0
    .param p1, "paddingfelt"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    .line 319
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .param p1, "paddingright"    # I

    .prologue
    .line 322
    iput p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    .line 323
    return-void
.end method

.method public setShowAnimationEnabled(Z)V
    .locals 0
    .param p1, "isAnime"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    .line 304
    return-void
.end method

.method public showForeground()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 456
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 458
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 463
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 464
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const-string v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 466
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 467
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mContext:Landroid/content/Context;

    const v3, 0x10c0003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 469
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 470
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 471
    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 472
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 474
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "b":Landroid/animation/AnimatorSet$Builder;
    :cond_1
    return-void

    .line 466
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
