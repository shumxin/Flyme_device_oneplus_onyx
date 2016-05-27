.class public Landroid/widget/OppoOverScroller;
.super Landroid/widget/OverScroller;
.source "OppoOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoOverScroller$OppoSplineOverScroller;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final DEFAULT_TIME_GAP:F = 16.0f

.field private static final FLING_MODE:I = 0x1

.field private static final MAXIMUM_FLING_VELOCITY_LIST:I = 0x9c4

.field private static final PI:D = 3.1415926

.field private static final SCROLL_MODE:I

.field private static SPRING_BACK_DURATION:I

.field private static TAG:Ljava/lang/String;

.field private static mMaximumVelocity:I

.field private static mOverscrollDistance:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

.field private final mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "OppoOverScroller"

    sput-object v0, Landroid/widget/OppoOverScroller;->TAG:Ljava/lang/String;

    .line 58
    const/16 v0, 0xfa

    sput v0, Landroid/widget/OppoOverScroller;->SPRING_BACK_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    const/16 v3, 0x2328

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 97
    if-nez p2, :cond_1

    .line 98
    new-instance v1, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v1}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/OppoOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 103
    :goto_0
    iput-boolean p3, p0, Landroid/widget/OppoOverScroller;->mFlywheel:Z

    .line 104
    new-instance v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .line 105
    new-instance v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 107
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Landroid/widget/OppoOverScroller;->mOverscrollDistance:I

    .line 108
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x451c4000    # 2500.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Landroid/widget/OppoOverScroller;->mMaximumVelocity:I

    .line 109
    sget v1, Landroid/widget/OppoOverScroller;->mMaximumVelocity:I

    if-le v1, v3, :cond_0

    sput v3, Landroid/widget/OppoOverScroller;->mMaximumVelocity:I

    .line 110
    :cond_0
    return-void

    .line 100
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    iput-object p2, p0, Landroid/widget/OppoOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 38
    sget v0, Landroid/widget/OppoOverScroller;->mOverscrollDistance:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 38
    sget v0, Landroid/widget/OppoOverScroller;->SPRING_BACK_DURATION:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 38
    sget v0, Landroid/widget/OppoOverScroller;->mMaximumVelocity:I

    return v0
.end method

.method static newInstance(Landroid/content/Context;)Landroid/widget/OverScroller;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    new-instance v0, Landroid/widget/OppoOverScroller;

    invoke-direct {v0, p0}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "mScroller":Landroid/widget/OverScroller;
    :goto_0
    return-object v0

    .line 152
    .end local v0    # "mScroller":Landroid/widget/OverScroller;
    :cond_0
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .restart local v0    # "mScroller":Landroid/widget/OverScroller;
    goto :goto_0
.end method

.method static newInstance(Landroid/content/Context;Z)Landroid/widget/OverScroller;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isScrollList"    # Z

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    new-instance v1, Landroid/widget/OppoOverScroller;

    invoke-direct {v1, p0}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;)V

    .local v1, "mScroller":Landroid/widget/OverScroller;
    move-object v0, v1

    .line 161
    check-cast v0, Landroid/widget/OppoOverScroller;

    .line 162
    .local v0, "mOppoScroller":Landroid/widget/OppoOverScroller;
    iget-object v2, v0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    iget-object v3, v0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # setter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z
    invoke-static {v3, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$002(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;Z)Z

    move-result v3

    # setter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z
    invoke-static {v2, v3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$002(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;Z)Z

    .line 166
    .end local v0    # "mOppoScroller":Landroid/widget/OppoOverScroller;
    :goto_0
    return-object v1

    .line 164
    .end local v1    # "mScroller":Landroid/widget/OverScroller;
    :cond_0
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .restart local v1    # "mScroller":Landroid/widget/OverScroller;
    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    .line 588
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    .line 589
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 9

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/widget/OppoOverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 360
    const/4 v6, 0x0

    .line 414
    :goto_0
    return v6

    .line 363
    :cond_0
    iget v6, p0, Landroid/widget/OppoOverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 414
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 365
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 368
    .local v4, "time":J
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$700(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 370
    .local v2, "elapsedTime":J
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I
    invoke-static {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$600(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    .line 371
    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 383
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v7, v2

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 387
    .local v1, "q":F
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->updateScroll(F)V

    .line 388
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 390
    .end local v1    # "q":F
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OppoOverScroller;->abortAnimation()V

    goto :goto_1

    .line 395
    .end local v0    # "duration":I
    .end local v2    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_1
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$100(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 396
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_3

    .line 397
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 398
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    .line 403
    :cond_3
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$100(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 404
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 405
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 406
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    goto :goto_1

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->extendDuration(I)V

    .line 315
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->extendDuration(I)V

    .line 316
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 477
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OppoOverScroller;->fling(IIIIIIIIII)V

    .line 478
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 510
    iget-boolean v0, p0, Landroid/widget/OppoOverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OppoOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v6

    .line 512
    .local v6, "oldVelocityX":F
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v7

    .line 513
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 515
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 516
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 520
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OppoOverScroller;->mMode:I

    .line 521
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->fling(IIIII)V

    .line 522
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->fling(IIIII)V

    .line 523
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 244
    .local v0, "squaredNorm":F
    iget-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 245
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public getOppoCurrX()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$200(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getOppoCurrY()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$200(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getOppoDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$600(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I
    invoke-static {v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$600(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOppoFinalX()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$500(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getOppoFinalY()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$500(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getOppoStartX()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$400(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getOppoStartY()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$400(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public isOppoFinished()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$100(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$100(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$100(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$800(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$100(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$800(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 608
    iget-object v2, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$500(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$400(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 609
    .local v0, "dx":I
    iget-object v2, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$500(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$400(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 610
    .local v1, "dy":I
    invoke-virtual {p0}, Landroid/widget/OppoOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    .line 539
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->notifyEdgeReached(III)V

    .line 540
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 556
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->notifyEdgeReached(III)V

    .line 557
    return-void
.end method

.method public final oppoForceFinished(Z)V
    .locals 2
    .param p1, "finished"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    iget-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # setter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$102(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;Z)Z

    move-result v1

    # setter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$102(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;Z)Z

    .line 217
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->setFinalPosition(I)V

    .line 334
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->setFinalPosition(I)V

    .line 352
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/OppoOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    iput-object p1, p0, Landroid/widget/OppoOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public setOppoFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 193
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->setFriction(F)V

    .line 194
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->setFriction(F)V

    .line 195
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v2, 0x1

    .line 467
    iput v2, p0, Landroid/widget/OppoOverScroller;->mMode:I

    .line 470
    iget-object v3, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->springback(III)Z

    move-result v0

    .line 471
    .local v0, "spingbackX":Z
    iget-object v3, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->springback(III)Z

    move-result v1

    .line 472
    .local v1, "spingbackY":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 432
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoOverScroller;->startScroll(IIIII)V

    .line 433
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 449
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoOverScroller;->mMode:I

    .line 450
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startScroll(III)V

    .line 451
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startScroll(III)V

    .line 452
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 599
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 600
    .local v2, "time":J
    iget-object v4, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J
    invoke-static {v4}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$700(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    # getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$700(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 601
    .local v0, "startTime":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
