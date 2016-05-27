.class Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;
.super Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;
.source "OppoDragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAnimator"
.end annotation


# instance fields
.field private mFirstChildHeight:I

.field private mFirstPos:I

.field private mFirstStartBlank:F

.field private mFloatLocX:F

.field private mSecondChildHeight:I

.field private mSecondPos:I

.field private mSecondStartBlank:F

.field final synthetic this$0:Lcom/oppo/widget/OppoDragSortListView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;FI)V
    .locals 1
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v0, -0x1

    .line 1284
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    .line 1285
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;-><init>(Lcom/oppo/widget/OppoDragSortListView;FI)V

    .line 1278
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1279
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1286
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 1290
    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1291
    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1292
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I
    invoke-static {v3}, Lcom/oppo/widget/OppoDragSortListView;->access$1400(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstPos:I

    .line 1293
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I
    invoke-static {v3}, Lcom/oppo/widget/OppoDragSortListView;->access$1500(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondPos:I

    .line 1294
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # setter for: Lcom/oppo/widget/OppoDragSortListView;->mDragState:I
    invoke-static {v3, v2}, Lcom/oppo/widget/OppoDragSortListView;->access$102(Lcom/oppo/widget/OppoDragSortListView;I)I

    .line 1296
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/oppo/widget/OppoDragSortListView;->access$500(Lcom/oppo/widget/OppoDragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1297
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mUseRemoveVelocity:Z
    invoke-static {v3}, Lcom/oppo/widget/OppoDragSortListView;->access$1600(Lcom/oppo/widget/OppoDragSortListView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1298
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDragSortListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v4, v3

    .line 1299
    .local v0, "minVelocity":F
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F
    invoke-static {v3}, Lcom/oppo/widget/OppoDragSortListView;->access$1700(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    .line 1300
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFloatLocX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v0

    # setter for: Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F
    invoke-static {v3, v1}, Lcom/oppo/widget/OppoDragSortListView;->access$1702(Lcom/oppo/widget/OppoDragSortListView;F)F

    .line 1311
    .end local v0    # "minVelocity":F
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "minVelocity":F
    :cond_1
    move v1, v2

    .line 1300
    goto :goto_0

    .line 1302
    :cond_2
    mul-float/2addr v0, v4

    .line 1303
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F
    invoke-static {v1}, Lcom/oppo/widget/OppoDragSortListView;->access$1700(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F
    invoke-static {v1}, Lcom/oppo/widget/OppoDragSortListView;->access$1700(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v1

    neg-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1304
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    neg-float v2, v0

    # setter for: Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoDragSortListView;->access$1702(Lcom/oppo/widget/OppoDragSortListView;F)F

    goto :goto_1

    .line 1305
    :cond_3
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F
    invoke-static {v1}, Lcom/oppo/widget/OppoDragSortListView;->access$1700(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F
    invoke-static {v1}, Lcom/oppo/widget/OppoDragSortListView;->access$1700(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # setter for: Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoDragSortListView;->access$1702(Lcom/oppo/widget/OppoDragSortListView;F)F

    goto :goto_1

    .line 1309
    .end local v0    # "minVelocity":F
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # invokes: Lcom/oppo/widget/OppoDragSortListView;->destroyFloatView()V
    invoke-static {v1}, Lcom/oppo/widget/OppoDragSortListView;->access$1800(Lcom/oppo/widget/OppoDragSortListView;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # invokes: Lcom/oppo/widget/OppoDragSortListView;->doRemoveItem()V
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$2000(Lcom/oppo/widget/OppoDragSortListView;)V

    .line 1367
    return-void
.end method

.method public onUpdate(FF)V
    .locals 12
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1315
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v3, v8, p2

    .line 1317
    .local v3, "f":F
    iget-object v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v8}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1318
    .local v4, "firstVis":I
    iget-object v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstPos:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1322
    .local v5, "item":Landroid/view/View;
    iget-object v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mUseRemoveVelocity:Z
    invoke-static {v8}, Lcom/oppo/widget/OppoDragSortListView;->access$1600(Lcom/oppo/widget/OppoDragSortListView;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mStartTime:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v1, v8, v9

    .line 1324
    .local v1, "dt":F
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-nez v8, :cond_1

    .line 1362
    .end local v1    # "dt":F
    :cond_0
    :goto_0
    return-void

    .line 1327
    .restart local v1    # "dt":F
    :cond_1
    iget-object v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F
    invoke-static {v8}, Lcom/oppo/widget/OppoDragSortListView;->access$1700(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v8

    mul-float v2, v8, v1

    .line 1328
    .local v2, "dx":F
    iget-object v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v8}, Lcom/oppo/widget/OppoDragSortListView;->getWidth()I

    move-result v7

    .line 1329
    .local v7, "w":I
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget-object v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F
    invoke-static {v8}, Lcom/oppo/widget/OppoDragSortListView;->access$1700(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v8

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    int-to-float v8, v8

    mul-float/2addr v8, v1

    int-to-float v10, v7

    mul-float/2addr v8, v10

    # += operator for: Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F
    invoke-static {v9, v8}, Lcom/oppo/widget/OppoDragSortListView;->access$1716(Lcom/oppo/widget/OppoDragSortListView;F)F

    .line 1330
    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFloatLocX:F

    add-float/2addr v8, v2

    iput v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1331
    iget-object v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v8}, Lcom/oppo/widget/OppoDragSortListView;->access$500(Lcom/oppo/widget/OppoDragSortListView;)Landroid/graphics/Point;

    move-result-object v8

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFloatLocX:F

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 1332
    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFloatLocX:F

    int-to-float v9, v7

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFloatLocX:F

    neg-int v9, v7

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 1333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mStartTime:J

    .line 1334
    iget-object v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v9, 0x1

    # invokes: Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(Z)V
    invoke-static {v8, v9}, Lcom/oppo/widget/OppoDragSortListView;->access$700(Lcom/oppo/widget/OppoDragSortListView;Z)V

    goto :goto_0

    .line 1329
    :cond_2
    const/4 v8, -0x1

    goto :goto_1

    .line 1339
    .end local v1    # "dt":F
    .end local v2    # "dx":F
    .end local v7    # "w":I
    :cond_3
    if-eqz v5, :cond_5

    .line 1340
    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstChildHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 1341
    iget-object v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstPos:I

    const/4 v10, 0x0

    # invokes: Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(ILandroid/view/View;Z)I
    invoke-static {v8, v9, v5, v10}, Lcom/oppo/widget/OppoDragSortListView;->access$1900(Lcom/oppo/widget/OppoDragSortListView;ILandroid/view/View;Z)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1342
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstChildHeight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstStartBlank:F

    .line 1344
    :cond_4
    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstStartBlank:F

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1345
    .local v0, "blank":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1346
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstChildHeight:I

    add-int/2addr v8, v0

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1347
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1349
    .end local v0    # "blank":I
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondPos:I

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mFirstPos:I

    if-eq v8, v9, :cond_0

    .line 1350
    iget-object v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondPos:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1351
    if-eqz v5, :cond_0

    .line 1352
    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondChildHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 1353
    iget-object v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondPos:I

    const/4 v10, 0x0

    # invokes: Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(ILandroid/view/View;Z)I
    invoke-static {v8, v9, v5, v10}, Lcom/oppo/widget/OppoDragSortListView;->access$1900(Lcom/oppo/widget/OppoDragSortListView;ILandroid/view/View;Z)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1354
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondChildHeight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondStartBlank:F

    .line 1356
    :cond_6
    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondStartBlank:F

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1357
    .restart local v0    # "blank":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1358
    .restart local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->mSecondChildHeight:I

    add-int/2addr v8, v0

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1359
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method
