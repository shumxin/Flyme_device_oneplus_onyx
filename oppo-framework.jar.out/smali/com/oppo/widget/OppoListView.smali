.class public Lcom/oppo/widget/OppoListView;
.super Landroid/widget/ListView;
.source "OppoListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_MOTION:Z = false

.field private static final OPPO_WIDGET_ANIM_DISABLE:Ljava/lang/String; = "oppo.widget.animation.disabled"

.field public static final SCROLL_HORIZONTAL_LTR:I = 0x1

.field public static final SCROLL_HORIZONTAL_NULL:I = 0x0

.field public static final SCROLL_HORIZONTAL_RTL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoListView"


# instance fields
.field private delayedScroll:Ljava/lang/Runnable;

.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAnimationDisabled:Z

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDividerItemHeight:I

.field private mFillDivider:Z

.field private mFirstPos:I

.field private mFlag:Z

.field private mIsNotDrawFirstLine:Z

.field private mItemBottom:I

.field private mItemCount:I

.field private mItemToAppear:Z

.field private mItemTop:I

.field private mLastPos:I

.field private mLastPosition:I

.field private mLastSite:I

.field private mLasterPosition:I

.field private mLeftOffset:I

.field private mMultiChoice:Z

.field private mPointY:F

.field private mPositionOffset:F

.field private mReferPosition:I

.field private mRightOffset:I

.field private mScrollDirection:I

.field private mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

.field private mSpringEnabled:Z

.field private mUpScroll:Z

.field private mViewPager:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const v0, 0xc010400

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    .line 59
    iput-boolean v6, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    .line 60
    iput v4, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 61
    iput v4, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 62
    iput-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 63
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 66
    iput-boolean v6, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 67
    const/4 v4, -0x1

    iput v4, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    .line 70
    iput-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mAnimationDisabled:Z

    .line 264
    new-instance v4, Lcom/oppo/widget/OppoListView$1;

    invoke-direct {v4, p0}, Lcom/oppo/widget/OppoListView$1;-><init>(Lcom/oppo/widget/OppoListView;)V

    iput-object v4, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    .line 386
    iput-boolean v6, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    .line 388
    iput v5, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    .line 85
    sget-object v4, Loppo/R$styleable;->OppoListView:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 89
    .local v3, "springEnabled":Z
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoListView;->setSpringEnabled(Z)V

    .line 91
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 94
    .local v2, "fillDivider":Z
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoListView;->setFillDivider(Z)V

    .line 96
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 97
    .local v1, "dividerItemHeight":I
    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050440

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 101
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoListView;->setDividerItemHeight(I)V

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050437

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoListView;->mLeftOffset:I

    .line 107
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050438

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoListView;->mRightOffset:I

    .line 110
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 111
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oppo.widget.animation.disabled"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mAnimationDisabled:Z

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoListView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    return v0
.end method

.method private isInScrollRange(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v3, v8

    .line 278
    .local v3, "m":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 279
    .local v6, "n":I
    invoke-virtual {p0, v3, v6}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v0

    .line 280
    .local v0, "curPosition":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v7, v8

    .line 281
    .local v7, "xRaw":I
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 283
    .local v2, "location":[I
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v0, v8

    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v10, 0xc020001

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 285
    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    aget v8, v2, v9

    iget v10, p0, Lcom/oppo/widget/OppoListView;->mLeftOffset:I

    sub-int v4, v8, v10

    .line 293
    .local v4, "mLeftBorder":I
    aget v8, v2, v9

    iget v10, p0, Lcom/oppo/widget/OppoListView;->mRightOffset:I

    add-int v5, v8, v10

    .line 294
    .local v5, "mRightBorder":I
    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    if-le v7, v4, :cond_1

    if-ge v7, v5, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeaderViewsCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-le v0, v8, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCount()I

    move-result v8

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFooterViewsCount()I

    move-result v10

    sub-int/2addr v8, v10

    if-ge v0, v8, :cond_1

    .line 297
    const/4 v8, 0x1

    .line 302
    .end local v4    # "mLeftBorder":I
    .end local v5    # "mRightBorder":I
    :goto_0
    return v8

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_0

    .line 288
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    :cond_0
    move v8, v9

    .line 290
    goto :goto_0

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "mLeftBorder":I
    .restart local v5    # "mRightBorder":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_2

    .line 300
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    :cond_2
    move v8, v9

    .line 302
    goto :goto_0
.end method

.method private recomputePositionInParent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 422
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    .line 423
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemBottom:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/widget/OppoListView;->mItemBottom:I

    .line 424
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mViewPager:Landroid/view/View;

    if-nez v2, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 431
    .local v1, "viewParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 432
    check-cast v0, Landroid/view/View;

    .line 433
    .local v0, "parent":Landroid/view/View;
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mViewPager:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoListView;->recomputePositionInParent(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected calChildrenLeftPosition(II)I
    .locals 9
    .param p1, "position"    # I
    .param p2, "childrenLeft"    # I

    .prologue
    const/high16 v8, 0x40400000    # 3.0f

    const v7, 0x3f19999a    # 0.6f

    const v6, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 480
    move v0, p2

    .line 481
    .local v0, "childLeft":I
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 486
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 488
    .local v1, "count":I
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 489
    iget-boolean v2, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    if-eqz v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 526
    .end local v1    # "count":I
    :cond_0
    :goto_0
    return v0

    .line 493
    .restart local v1    # "count":I
    :cond_1
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_2

    .line 494
    iput v7, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    .line 496
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 499
    :cond_3
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 500
    iget-boolean v2, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    if-eqz v2, :cond_4

    .line 501
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 504
    :cond_4
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_5

    .line 505
    iput v6, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    .line 507
    :cond_5
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 511
    .end local v1    # "count":I
    :cond_6
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 516
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    iget v4, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 518
    .restart local v1    # "count":I
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 519
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto/16 :goto_0

    .line 521
    :cond_7
    iget v2, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 522
    iget-object v2, p0, Lcom/oppo/widget/OppoListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    goto/16 :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 189
    const/4 v6, 0x0

    .line 190
    .local v6, "isFullScreen":Z
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v1

    .line 191
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getScrollY()I

    move-result v9

    .line 192
    .local v9, "scrollY":I
    const/4 v7, 0x0

    .line 193
    .local v7, "lastchild":Landroid/view/View;
    if-lez v1, :cond_0

    .line 194
    add-int/lit8 v11, v1, -0x1

    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 197
    :cond_0
    if-eqz v7, :cond_2

    .line 198
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v12

    if-ge v11, v12, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v12

    if-lt v11, v12, :cond_2

    .line 200
    :cond_1
    const/4 v6, 0x1

    .line 204
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFillDivider()Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v6, :cond_6

    .line 205
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDividerHeight()I

    move-result v2

    .line 206
    .local v2, "dividerHeight":I
    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v4, 0x1

    .line 207
    .local v4, "drawDividers":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getBottom()I

    move-result v11

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getListPaddingBottom()I

    move-result v12

    sub-int v8, v11, v12

    .line 208
    .local v8, "listBottom":I
    const/4 v5, 0x0

    .line 209
    .local v5, "fillBottom":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDividerItemHeight()I

    move-result v3

    .line 211
    .local v3, "dividerItemHeight":I
    if-lez v1, :cond_3

    .line 212
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 215
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 216
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getPaddingLeft()I

    move-result v11

    iput v11, v0, Landroid/graphics/Rect;->left:I

    .line 217
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getRight()I

    move-result v11

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v0, Landroid/graphics/Rect;->right:I

    .line 219
    iget-boolean v11, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    if-eqz v11, :cond_4

    .line 220
    add-int v11, v5, v3

    add-int v5, v11, v2

    .line 224
    :cond_4
    :goto_1
    if-lez v3, :cond_6

    add-int v11, v8, v9

    if-ge v5, v11, :cond_6

    if-eqz v4, :cond_6

    .line 225
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 226
    add-int v11, v5, v2

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 227
    invoke-virtual {p0, p1, v0, v10}, Lcom/oppo/widget/OppoListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 228
    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    add-int v5, v11, v3

    goto :goto_1

    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "dividerItemHeight":I
    .end local v4    # "drawDividers":Z
    .end local v5    # "fillBottom":I
    .end local v8    # "listBottom":I
    :cond_5
    move v4, v10

    .line 206
    goto :goto_0

    .line 232
    .end local v2    # "dividerHeight":I
    :cond_6
    return-void
.end method

.method public drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 246
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 247
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    return-void
.end method

.method public getDividerItemHeight()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mDividerItemHeight:I

    return v0
.end method

.method public getFillDivider()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mFillDivider:Z

    return v0
.end method

.method public getIsNotDrawFirstLine()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    return v0
.end method

.method public isSpringEnabled()Z
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 253
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 255
    :pswitch_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x1

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v12, 0x32

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v9, -0x2

    .line 308
    iget-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 310
    .local v2, "m":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 311
    .local v3, "n":I
    invoke-virtual {p0, v2, v3}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v1

    .line 312
    .local v1, "curPosition":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 355
    .end local v1    # "curPosition":I
    .end local v2    # "m":I
    .end local v3    # "n":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 356
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_1

    .line 366
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .end local v0    # "action":I
    :cond_1
    :goto_2
    return v4

    .line 314
    .restart local v1    # "curPosition":I
    .restart local v2    # "m":I
    .restart local v3    # "n":I
    :pswitch_0
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 315
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    goto :goto_0

    .line 318
    :pswitch_1
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 321
    :pswitch_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v1, v5}, Lcom/oppo/widget/OppoListView;->setSelectionFromTop(II)V

    .line 325
    :cond_2
    iget-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v1, :cond_1

    if-eq v1, v7, :cond_1

    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    if-eqz v5, :cond_1

    .line 327
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    if-eq v5, v7, :cond_3

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v6, v1, -0x1

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    if-ge v5, v1, :cond_3

    .line 328
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    iget v6, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 331
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 333
    iput v1, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    .line 334
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v5

    if-ne v1, v5, :cond_4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v5

    if-lez v5, :cond_4

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v9, :cond_4

    .line 336
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 337
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v5, v12, v13}, Lcom/oppo/widget/OppoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getCount()I

    move-result v5

    if-eq v1, v5, :cond_5

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v9, :cond_5

    .line 341
    iput-boolean v10, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 342
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v5, v12, v13}, Lcom/oppo/widget/OppoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    :cond_5
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    if-ne v5, v1, :cond_6

    .line 345
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    iget v6, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    iget v7, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 348
    :cond_6
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    iput v5, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 349
    iput v1, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    goto/16 :goto_2

    .line 358
    .end local v1    # "curPosition":I
    .end local v2    # "m":I
    .end local v3    # "n":I
    .restart local v0    # "action":I
    :pswitch_3
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 359
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 360
    iput-boolean v10, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 361
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    .line 362
    iput v7, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    goto/16 :goto_1

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 356
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public setDividerItemHeight(I)V
    .locals 0
    .param p1, "itemHeight"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mDividerItemHeight:I

    .line 162
    return-void
.end method

.method public setFillDivider(Z)V
    .locals 0
    .param p1, "fillDivider"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mFillDivider:Z

    .line 146
    return-void
.end method

.method public setIsNotDrawFirstLine(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    .line 178
    return-void
.end method

.method public setScrollDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 399
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    if-eq v0, p1, :cond_0

    .line 400
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mScrollDirection:I

    .line 401
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->layoutChildren()V

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    .line 404
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    .line 405
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    .line 406
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    if-eqz v0, :cond_1

    .line 407
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    .line 408
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mItemBottom:I

    .line 410
    :cond_1
    return-void
.end method

.method public setScrollDirection(ILandroid/view/View;)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "pager"    # Landroid/view/View;

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoListView;->setScrollDirection(I)V

    .line 417
    iput-object p2, p0, Lcom/oppo/widget/OppoListView;->mViewPager:Landroid/view/View;

    .line 418
    invoke-direct {p0, p0}, Lcom/oppo/widget/OppoListView;->recomputePositionInParent(Landroid/view/View;)V

    .line 419
    return-void
.end method

.method public setScrollMultiChoiceListener(Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    .line 371
    return-void
.end method

.method public setSpringEnabled(Z)V
    .locals 1
    .param p1, "springEnable"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mSpringEnabled:Z

    .line 125
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mSpringEnabled:Z

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->setOverScrollMode(I)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoListView;->setOverScrollMode(I)V

    goto :goto_0
.end method

.method public updateHorizontalPosition(FF)V
    .locals 3
    .param p1, "y"    # F
    .param p2, "offset"    # F

    .prologue
    .line 459
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mItemCount:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mAnimationDisabled:Z

    if-eqz v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 464
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    .line 465
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    iget v2, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    .line 467
    :cond_2
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 468
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 469
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mFirstPos:I

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    .line 471
    :cond_3
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mPointY:F

    iget v1, p0, Lcom/oppo/widget/OppoListView;->mItemTop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 472
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mLastPos:I

    iput v0, p0, Lcom/oppo/widget/OppoListView;->mReferPosition:I

    .line 475
    :cond_4
    iput p2, p0, Lcom/oppo/widget/OppoListView;->mPositionOffset:F

    .line 476
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->layoutChildren()V

    goto :goto_0
.end method

.method public updateHorizontalPosition(FFZ)V
    .locals 0
    .param p1, "y"    # F
    .param p2, "offset"    # F
    .param p3, "toAppear"    # Z

    .prologue
    .line 445
    iput-boolean p3, p0, Lcom/oppo/widget/OppoListView;->mItemToAppear:Z

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoListView;->updateHorizontalPosition(FF)V

    .line 447
    return-void
.end method
