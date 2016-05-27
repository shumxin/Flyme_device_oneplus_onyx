.class public Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/Oppo3DScenePreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mCurOffset:F

.field public mFinished:Z

.field public mVelocity:I

.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;


# direct methods
.method protected constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;)V
    .locals 0

    .prologue
    .line 2560
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeOffset()Z
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2608
    const/4 v0, 0x0

    .line 2609
    .local v0, "more":Z
    iget-boolean v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    if-eqz v3, :cond_0

    .line 2610
    const-string v1, "Oppo3DScenePreView"

    const-string v3, "FlingInfo computeOffset() finished."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :goto_0
    return v2

    .line 2617
    :cond_0
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    if-le v3, v1, :cond_1

    .line 2618
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 2660
    goto :goto_0

    .line 2619
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-boolean v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mTapScrollFastMode:Z

    if-eqz v3, :cond_7

    .line 2620
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v3, :cond_4

    .line 2621
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    .line 2622
    const/4 v0, 0x0

    .line 2623
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    goto :goto_1

    .line 2625
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v5, :cond_3

    :goto_2
    # invokes: Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F
    invoke-static {v3, v4, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->access$300(Lcom/oppo/widget/Oppo3DScenePreView;FZ)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    .line 2626
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 2625
    goto :goto_2

    .line 2629
    :cond_4
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 2630
    const/4 v0, 0x0

    .line 2631
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    goto :goto_1

    .line 2633
    :cond_5
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v5, :cond_6

    :goto_3
    # invokes: Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F
    invoke-static {v3, v4, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->access$300(Lcom/oppo/widget/Oppo3DScenePreView;FZ)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    .line 2634
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    move v1, v2

    .line 2633
    goto :goto_3

    .line 2638
    :cond_7
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v3, :cond_a

    .line 2639
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_8

    .line 2640
    const/4 v0, 0x0

    .line 2641
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    goto :goto_1

    .line 2643
    :cond_8
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v5, :cond_9

    :goto_4
    # invokes: Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F
    invoke-static {v3, v4, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->access$300(Lcom/oppo/widget/Oppo3DScenePreView;FZ)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    .line 2644
    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    move v1, v2

    .line 2643
    goto :goto_4

    .line 2647
    :cond_a
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_b

    .line 2648
    const/4 v0, 0x0

    .line 2649
    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    goto :goto_1

    .line 2651
    :cond_b
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v5, :cond_c

    :goto_5
    # invokes: Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F
    invoke-static {v3, v4, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->access$300(Lcom/oppo/widget/Oppo3DScenePreView;FZ)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    .line 2652
    const/4 v0, 0x1

    goto :goto_1

    :cond_c
    move v1, v2

    .line 2651
    goto :goto_5
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 2676
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    .line 2677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    .line 2678
    return-void
.end method

.method public getCurOffset()F
    .locals 1

    .prologue
    .line 2669
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 2686
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    return v0
.end method

.method public positiveVelocity()Z
    .locals 1

    .prologue
    .line 2595
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    if-lez v0, :cond_0

    .line 2596
    const/4 v0, 0x1

    .line 2598
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(I)V
    .locals 3
    .param p1, "velocity"    # I

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 2571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mFinished:Z

    .line 2572
    iput p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mVelocity:I

    .line 2573
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x258

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    .line 2579
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2580
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    .line 2587
    :goto_0
    return-void

    .line 2582
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCurOffset:F

    goto :goto_0
.end method
