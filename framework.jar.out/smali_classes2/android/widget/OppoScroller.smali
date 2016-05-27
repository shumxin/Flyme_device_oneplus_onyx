.class public Landroid/widget/OppoScroller;
.super Ljava/lang/Object;
.source "OppoScroller.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final DEFAULT_TIME_GAP:I = 0xf

.field private static final FLING_MODE:I = 0x1

.field private static final FLING_SCROLL_BACK_DURATION:I = 0x2ee

.field private static final FLING_SCROLL_BACK_MODE:I = 0x3

.field private static final FLING_SPRING_MODE:I = 0x2

.field private static final GALLERY_LIST_MODE:I = 0x5

.field private static final GALLERY_TIME_GAP:I = 0x19

.field private static final SCROLL_LIST_MODE:I = 0x4

.field private static final SCROLL_MODE:I


# instance fields
.field final DEBUG_SPRING:Z

.field private DeltaCurrV:I

.field final TAG:Ljava/lang/String;

.field private fmCurrY:I

.field private fmLastCurrY:I

.field private mCoeffX:F

.field private mCoeffY:F

.field private mCount:I

.field private mCurrV:I

.field private mCurrVX:I

.field private mCurrVY:I

.field private mCurrX:I

.field private mCurrY:I

.field public mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastCurrV:I

.field private mLastCurrY:I

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OppoScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "OppoScroller"

    iput-object v0, p0, Landroid/widget/OppoScroller;->TAG:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Landroid/widget/OppoScroller;->DEBUG_SPRING:Z

    .line 62
    iput v1, p0, Landroid/widget/OppoScroller;->mLastCurrV:I

    .line 63
    iput v1, p0, Landroid/widget/OppoScroller;->mCurrV:I

    .line 64
    iput v1, p0, Landroid/widget/OppoScroller;->DeltaCurrV:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoScroller;->mCoeffX:F

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/OppoScroller;->mCoeffY:F

    .line 89
    iput v2, p0, Landroid/widget/OppoScroller;->mCount:I

    .line 99
    iput v1, p0, Landroid/widget/OppoScroller;->fmLastCurrY:I

    .line 101
    iput v1, p0, Landroid/widget/OppoScroller;->mLastCurrY:I

    .line 117
    iput-boolean v2, p0, Landroid/widget/OppoScroller;->mFinished:Z

    .line 118
    iput-object p2, p0, Landroid/widget/OppoScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mPpi:F

    .line 120
    const v0, 0x43c10b3d

    iget v1, p0, Landroid/widget/OppoScroller;->mPpi:F

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mDeceleration:F

    .line 122
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 648
    const v0, 0x43c10b3d

    iget v1, p0, Landroid/widget/OppoScroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getInterpolation(F)F
    .locals 5
    .param p1, "x"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 573
    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr p1, v1

    .line 574
    const v0, 0x3ebc5ab2

    .line 575
    .local v0, "start":F
    neg-float v1, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p1, v4, v1

    .line 576
    sub-float v1, v4, v0

    mul-float/2addr p1, v1

    .line 577
    iget v1, p0, Landroid/widget/OppoScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 578
    return p1
.end method

.method private viscousFluid(F)F
    .locals 5
    .param p1, "x"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 560
    iget v1, p0, Landroid/widget/OppoScroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 561
    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    .line 562
    neg-float v1, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p1, v1

    .line 568
    :goto_0
    iget v1, p0, Landroid/widget/OppoScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 569
    return p1

    .line 564
    :cond_0
    const v0, 0x3ebc5ab2

    .line 565
    .local v0, "start":F
    sub-float v1, v4, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p1, v4, v1

    .line 566
    sub-float v1, v4, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Landroid/widget/OppoScroller;->mFinalX:I

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    .line 589
    iget v0, p0, Landroid/widget/OppoScroller;->mFinalY:I

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoScroller;->mFinished:Z

    .line 591
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 12

    .prologue
    .line 230
    iget-boolean v0, p0, Landroid/widget/OppoScroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    .line 234
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/OppoScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v7, v0

    .line 238
    .local v7, "timePassed":I
    const/4 v0, 0x4

    iget v1, p0, Landroid/widget/OppoScroller;->mMode:I

    if-ne v0, v1, :cond_3

    .line 239
    iget v0, p0, Landroid/widget/OppoScroller;->mCount:I

    mul-int/lit8 v7, v0, 0xf

    .line 243
    :cond_1
    :goto_1
    iget v0, p0, Landroid/widget/OppoScroller;->mDuration:I

    if-ge v7, v0, :cond_a

    .line 244
    iget v0, p0, Landroid/widget/OppoScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 392
    :cond_2
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    :cond_3
    const/4 v0, 0x5

    iget v1, p0, Landroid/widget/OppoScroller;->mMode:I

    if-ne v0, v1, :cond_1

    .line 241
    iget v0, p0, Landroid/widget/OppoScroller;->mCount:I

    mul-int/lit8 v7, v0, 0x19

    goto :goto_1

    .line 247
    :pswitch_0
    int-to-float v0, v7

    iget v1, p0, Landroid/widget/OppoScroller;->mDurationReciprocal:F

    mul-float v11, v0, v1

    .line 248
    .local v11, "x":F
    iget-object v0, p0, Landroid/widget/OppoScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_4

    .line 249
    invoke-direct {p0, v11}, Landroid/widget/OppoScroller;->viscousFluid(F)F

    move-result v11

    .line 253
    :goto_3
    iget v0, p0, Landroid/widget/OppoScroller;->mStartX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mDeltaX:F

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    .line 254
    iget v0, p0, Landroid/widget/OppoScroller;->mStartY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mDeltaY:F

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    .line 255
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalX:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalY:I

    if-ne v0, v1, :cond_2

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoScroller;->mFinished:Z

    goto :goto_2

    .line 251
    :cond_4
    iget-object v0, p0, Landroid/widget/OppoScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    goto :goto_3

    .line 269
    .end local v11    # "x":F
    :pswitch_1
    add-int/lit16 v0, v7, 0xc8

    int-to-float v0, v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float v11, v0, v1

    .line 270
    .restart local v11    # "x":F
    const/16 v0, 0xf

    if-ne v7, v0, :cond_5

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoScroller;->DeltaCurrV:I

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoScroller;->mLastCurrV:I

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoScroller;->fmLastCurrY:I

    .line 284
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x3f800000    # -4.0f

    mul-float/2addr v1, v11

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const-wide v2, -0x4026666660000000L    # -0.4000000059604645

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    add-float v11, v0, v1

    .line 297
    iget v0, p0, Landroid/widget/OppoScroller;->mStartX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mDeltaX:F

    mul-float/2addr v1, v11

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    .line 298
    iget v0, p0, Landroid/widget/OppoScroller;->mStartY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mDeltaY:F

    mul-float/2addr v1, v11

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/OppoScroller;->DeltaCurrV:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->fmCurrY:I

    .line 299
    iget v0, p0, Landroid/widget/OppoScroller;->fmCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->fmLastCurrY:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrV:I

    .line 300
    iget v0, p0, Landroid/widget/OppoScroller;->mLastCurrV:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/widget/OppoScroller;->mLastCurrV:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/OppoScroller;->mCurrV:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 301
    iget v0, p0, Landroid/widget/OppoScroller;->DeltaCurrV:I

    iget v1, p0, Landroid/widget/OppoScroller;->mCurrV:I

    iget v2, p0, Landroid/widget/OppoScroller;->mLastCurrV:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->DeltaCurrV:I

    .line 302
    iget v0, p0, Landroid/widget/OppoScroller;->fmCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mCurrV:I

    iget v2, p0, Landroid/widget/OppoScroller;->mLastCurrV:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->fmCurrY:I

    .line 303
    iget v0, p0, Landroid/widget/OppoScroller;->mLastCurrV:I

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrV:I

    .line 305
    :cond_6
    iget v0, p0, Landroid/widget/OppoScroller;->fmCurrY:I

    iput v0, p0, Landroid/widget/OppoScroller;->fmLastCurrY:I

    .line 306
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrV:I

    iput v0, p0, Landroid/widget/OppoScroller;->mLastCurrV:I

    .line 307
    iget v0, p0, Landroid/widget/OppoScroller;->fmCurrY:I

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    .line 308
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mLastCurrY:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xfa

    div-int/lit8 v9, v0, 0xf

    .line 309
    .local v9, "v":I
    int-to-float v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrVY:I

    .line 315
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iput v0, p0, Landroid/widget/OppoScroller;->mLastCurrY:I

    .line 317
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalX:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalY:I

    if-eq v0, v1, :cond_8

    :cond_7
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrVY:I

    if-nez v0, :cond_2

    .line 318
    :cond_8
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iput v0, p0, Landroid/widget/OppoScroller;->mFinalY:I

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoScroller;->mFinished:Z

    goto/16 :goto_2

    .line 325
    .end local v9    # "v":I
    .end local v11    # "x":F
    :pswitch_2
    int-to-float v0, v7

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v8, v0, v1

    .line 326
    .local v8, "timePassedSeconds":F
    iget v0, p0, Landroid/widget/OppoScroller;->mVelocity:F

    mul-float/2addr v0, v8

    iget v1, p0, Landroid/widget/OppoScroller;->mDeceleration:F

    mul-float/2addr v1, v8

    mul-float/2addr v1, v8

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    .line 329
    .local v6, "distance":F
    iget v0, p0, Landroid/widget/OppoScroller;->mStartX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mCoeffX:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    .line 331
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    .line 332
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    .line 334
    iget v0, p0, Landroid/widget/OppoScroller;->mStartY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mCoeffY:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    .line 336
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    .line 337
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    .line 338
    iget v0, p0, Landroid/widget/OppoScroller;->mVelocity:F

    iget v1, p0, Landroid/widget/OppoScroller;->mDeceleration:F

    mul-float/2addr v1, v8

    sub-float v10, v0, v1

    .line 339
    .local v10, "velocity":F
    iget v0, p0, Landroid/widget/OppoScroller;->mCoeffX:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrVX:I

    .line 340
    iget v0, p0, Landroid/widget/OppoScroller;->mCoeffY:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrVY:I

    .line 343
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalX:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalY:I

    if-ne v0, v1, :cond_2

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoScroller;->mFinished:Z

    goto/16 :goto_2

    .line 348
    .end local v6    # "distance":F
    .end local v8    # "timePassedSeconds":F
    .end local v10    # "velocity":F
    :pswitch_3
    int-to-float v0, v7

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v8, v0, v1

    .line 349
    .restart local v8    # "timePassedSeconds":F
    iget v0, p0, Landroid/widget/OppoScroller;->mVelocity:F

    mul-float/2addr v0, v8

    iget v1, p0, Landroid/widget/OppoScroller;->mDeceleration:F

    mul-float/2addr v1, v8

    mul-float/2addr v1, v8

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    .line 352
    .restart local v6    # "distance":F
    iget v0, p0, Landroid/widget/OppoScroller;->mStartX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mCoeffX:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    .line 354
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    .line 355
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    .line 357
    iget v0, p0, Landroid/widget/OppoScroller;->mStartY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mCoeffY:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    .line 359
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    .line 360
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    .line 362
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalX:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalY:I

    if-ne v0, v1, :cond_2

    .line 364
    :cond_9
    iget v1, p0, Landroid/widget/OppoScroller;->mCurrX:I

    iget v2, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v0, p0, Landroid/widget/OppoScroller;->mDeltaX:F

    iget v3, p0, Landroid/widget/OppoScroller;->mFinalX:I

    iget v4, p0, Landroid/widget/OppoScroller;->mCurrX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v3, v0

    iget v0, p0, Landroid/widget/OppoScroller;->mDeltaY:F

    iget v4, p0, Landroid/widget/OppoScroller;->mFinalY:I

    iget v5, p0, Landroid/widget/OppoScroller;->mCurrY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v4, v0

    const/16 v5, 0x2ee

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoScroller;->startScroll(IIIII)V

    .line 367
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/OppoScroller;->mMode:I

    goto/16 :goto_2

    .line 371
    .end local v6    # "distance":F
    .end local v8    # "timePassedSeconds":F
    :pswitch_4
    int-to-float v0, v7

    iget v1, p0, Landroid/widget/OppoScroller;->mDurationReciprocal:F

    mul-float v11, v0, v1

    .line 372
    .restart local v11    # "x":F
    invoke-direct {p0, v11}, Landroid/widget/OppoScroller;->viscousFluid(F)F

    move-result v11

    .line 374
    iget v0, p0, Landroid/widget/OppoScroller;->mStartX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mDeltaX:F

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    .line 375
    iget v0, p0, Landroid/widget/OppoScroller;->mStartY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mDeltaY:F

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    .line 376
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalX:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalY:I

    if-ne v0, v1, :cond_2

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoScroller;->mFinished:Z

    goto/16 :goto_2

    .line 381
    .end local v11    # "x":F
    :cond_a
    iget v0, p0, Landroid/widget/OppoScroller;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 382
    iget v1, p0, Landroid/widget/OppoScroller;->mCurrX:I

    iget v2, p0, Landroid/widget/OppoScroller;->mCurrY:I

    iget v0, p0, Landroid/widget/OppoScroller;->mDeltaX:F

    iget v3, p0, Landroid/widget/OppoScroller;->mFinalX:I

    iget v4, p0, Landroid/widget/OppoScroller;->mCurrX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v3, v0

    iget v0, p0, Landroid/widget/OppoScroller;->mDeltaY:F

    iget v4, p0, Landroid/widget/OppoScroller;->mFinalY:I

    iget v5, p0, Landroid/widget/OppoScroller;->mCurrY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v4, v0

    const/16 v5, 0x2ee

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoScroller;->startScroll(IIIII)V

    .line 384
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/OppoScroller;->mMode:I

    .line 385
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 388
    :cond_b
    iget v0, p0, Landroid/widget/OppoScroller;->mFinalX:I

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    .line 389
    iget v0, p0, Landroid/widget/OppoScroller;->mFinalY:I

    iput v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoScroller;->mFinished:Z

    goto/16 :goto_2

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    .line 602
    invoke-virtual {p0}, Landroid/widget/OppoScroller;->timePassed()I

    move-result v0

    .line 603
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/OppoScroller;->mDuration:I

    .line 604
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/widget/OppoScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OppoScroller;->mDurationReciprocal:F

    .line 605
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OppoScroller;->mFinished:Z

    .line 606
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 485
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/OppoScroller;->mMode:I

    .line 486
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/OppoScroller;->mFinished:Z

    .line 488
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 490
    .local v1, "velocity":F
    iput v1, p0, Landroid/widget/OppoScroller;->mVelocity:F

    .line 491
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/widget/OppoScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/OppoScroller;->mDuration:I

    .line 493
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OppoScroller;->mStartTime:J

    .line 494
    iput p1, p0, Landroid/widget/OppoScroller;->mStartX:I

    .line 495
    iput p2, p0, Landroid/widget/OppoScroller;->mStartY:I

    .line 497
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iput v2, p0, Landroid/widget/OppoScroller;->mCoeffX:F

    .line 498
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iput v2, p0, Landroid/widget/OppoScroller;->mCoeffY:F

    .line 500
    mul-float v2, v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Landroid/widget/OppoScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 502
    .local v0, "totalDistance":I
    iput p5, p0, Landroid/widget/OppoScroller;->mMinX:I

    .line 503
    iput p6, p0, Landroid/widget/OppoScroller;->mMaxX:I

    .line 504
    iput p7, p0, Landroid/widget/OppoScroller;->mMinY:I

    .line 505
    iput p8, p0, Landroid/widget/OppoScroller;->mMaxY:I

    .line 507
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/OppoScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OppoScroller;->mFinalX:I

    .line 509
    iget v2, p0, Landroid/widget/OppoScroller;->mFinalX:I

    iget v3, p0, Landroid/widget/OppoScroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/OppoScroller;->mFinalX:I

    .line 510
    iget v2, p0, Landroid/widget/OppoScroller;->mFinalX:I

    iget v3, p0, Landroid/widget/OppoScroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/OppoScroller;->mFinalX:I

    .line 512
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/OppoScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Landroid/widget/OppoScroller;->mFinalY:I

    .line 514
    iget v2, p0, Landroid/widget/OppoScroller;->mFinalY:I

    iget v3, p0, Landroid/widget/OppoScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/OppoScroller;->mFinalY:I

    .line 515
    iget v2, p0, Landroid/widget/OppoScroller;->mFinalY:I

    iget v3, p0, Landroid/widget/OppoScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/OppoScroller;->mFinalY:I

    .line 516
    return-void

    .line 497
    .end local v0    # "totalDistance":I
    :cond_0
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    .line 498
    :cond_1
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_1
.end method

.method public fling(IIIIIIIIII)V
    .locals 10
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "springOffsetX"    # I
    .param p10, "springOffsetY"    # I

    .prologue
    .line 537
    sub-int v6, p5, p9

    add-int v7, p6, p9

    sub-int v8, p7, p10

    add-int v9, p8, p10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OppoScroller;->fling(IIIIIIII)V

    .line 539
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OppoScroller;->mDeltaY:F

    iput v1, p0, Landroid/widget/OppoScroller;->mDeltaX:F

    .line 540
    iget v1, p0, Landroid/widget/OppoScroller;->mFinalX:I

    move/from16 v0, p6

    if-gt v1, v0, :cond_0

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalX:I

    if-ge v1, p5, :cond_1

    .line 541
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/OppoScroller;->mMode:I

    .line 542
    iget v1, p0, Landroid/widget/OppoScroller;->mFinalX:I

    move/from16 v0, p6

    if-le v1, v0, :cond_4

    .line 543
    iget v1, p0, Landroid/widget/OppoScroller;->mFinalX:I

    sub-int v1, p6, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/OppoScroller;->mDeltaX:F

    .line 549
    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/OppoScroller;->mFinalY:I

    move/from16 v0, p8

    if-gt v1, v0, :cond_2

    iget v1, p0, Landroid/widget/OppoScroller;->mFinalY:I

    move/from16 v0, p7

    if-ge v1, v0, :cond_3

    .line 550
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/OppoScroller;->mMode:I

    .line 551
    iget v1, p0, Landroid/widget/OppoScroller;->mFinalY:I

    move/from16 v0, p8

    if-le v1, v0, :cond_5

    .line 552
    iget v1, p0, Landroid/widget/OppoScroller;->mFinalY:I

    sub-int v1, p8, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/OppoScroller;->mDeltaY:F

    .line 557
    :cond_3
    :goto_1
    return-void

    .line 545
    :cond_4
    iget v1, p0, Landroid/widget/OppoScroller;->mFinalX:I

    sub-int v1, p5, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/OppoScroller;->mDeltaX:F

    goto :goto_0

    .line 554
    :cond_5
    iget v1, p0, Landroid/widget/OppoScroller;->mFinalY:I

    sub-int v1, p7, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/OppoScroller;->mDeltaY:F

    goto :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Landroid/widget/OppoScroller;->mFinished:Z

    .line 141
    return-void
.end method

.method public final getCurrVX()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrVX:I

    return v0
.end method

.method public final getCurrVY()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrVY:I

    return v0
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 176
    iget v0, p0, Landroid/widget/OppoScroller;->mVelocity:F

    iget v1, p0, Landroid/widget/OppoScroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/OppoScroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Landroid/widget/OppoScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/widget/OppoScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/widget/OppoScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/widget/OppoScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/widget/OppoScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Landroid/widget/OppoScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/widget/OppoScroller;->mFinished:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 436
    iput p1, p0, Landroid/widget/OppoScroller;->mCount:I

    .line 437
    return-void
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 625
    iput p1, p0, Landroid/widget/OppoScroller;->mFinalX:I

    .line 626
    iget v0, p0, Landroid/widget/OppoScroller;->mFinalX:I

    iget v1, p0, Landroid/widget/OppoScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/OppoScroller;->mDeltaX:F

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoScroller;->mFinished:Z

    .line 628
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    .line 638
    iput p1, p0, Landroid/widget/OppoScroller;->mFinalY:I

    .line 639
    iget v0, p0, Landroid/widget/OppoScroller;->mFinalY:I

    iget v1, p0, Landroid/widget/OppoScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/OppoScroller;->mDeltaY:F

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoScroller;->mFinished:Z

    .line 641
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 644
    invoke-direct {p0, p1}, Landroid/widget/OppoScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/OppoScroller;->mDeceleration:F

    .line 645
    return-void
.end method

.method public startGalleryList(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 427
    invoke-virtual/range {p0 .. p5}, Landroid/widget/OppoScroller;->startScroll(IIIII)V

    .line 428
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/OppoScroller;->mMode:I

    .line 429
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OppoScroller;->mCount:I

    .line 430
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 408
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoScroller;->startScroll(IIIII)V

    .line 409
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 452
    iput v0, p0, Landroid/widget/OppoScroller;->mMode:I

    .line 453
    iput-boolean v0, p0, Landroid/widget/OppoScroller;->mFinished:Z

    .line 454
    iput p5, p0, Landroid/widget/OppoScroller;->mDuration:I

    .line 455
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OppoScroller;->mStartTime:J

    .line 456
    iput p1, p0, Landroid/widget/OppoScroller;->mStartX:I

    .line 457
    iput p2, p0, Landroid/widget/OppoScroller;->mStartY:I

    .line 458
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/OppoScroller;->mFinalX:I

    .line 459
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/OppoScroller;->mFinalY:I

    .line 460
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/OppoScroller;->mDeltaX:F

    .line 461
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/OppoScroller;->mDeltaY:F

    .line 462
    iget v0, p0, Landroid/widget/OppoScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/OppoScroller;->mDurationReciprocal:F

    .line 464
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Landroid/widget/OppoScroller;->mViscousFluidScale:F

    .line 466
    iput v2, p0, Landroid/widget/OppoScroller;->mViscousFluidNormalize:F

    .line 467
    invoke-direct {p0, v2}, Landroid/widget/OppoScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/OppoScroller;->mViscousFluidNormalize:F

    .line 468
    return-void
.end method

.method public startScrollList(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 415
    invoke-virtual/range {p0 .. p5}, Landroid/widget/OppoScroller;->startScroll(IIIII)V

    .line 416
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/OppoScroller;->mMode:I

    .line 417
    iput v1, p0, Landroid/widget/OppoScroller;->mViscousFluidNormalize:F

    .line 418
    invoke-direct {p0, v1}, Landroid/widget/OppoScroller;->getInterpolation(F)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Landroid/widget/OppoScroller;->mViscousFluidNormalize:F

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoScroller;->mLastCurrY:I

    .line 420
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OppoScroller;->mCount:I

    .line 421
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 614
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/OppoScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
