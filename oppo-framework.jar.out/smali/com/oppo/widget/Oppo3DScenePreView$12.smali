.class Lcom/oppo/widget/Oppo3DScenePreView$12;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->scrollFling(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;)V
    .locals 0

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v5, 0x3e8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 1262
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput v6, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackOffset:F

    .line 1263
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v3, v3, -0x9

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1265
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mFingVelocity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v3, 0x32

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    aget v3, v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    div-float/2addr v0, v3

    float-to-int v1, v0

    .line 1271
    .local v1, "deltaX":I
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScroller:Landroid/widget/Scroller;

    neg-int v3, v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1272
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    .line 1273
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mLastSpringX:I

    .line 1274
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput v7, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1275
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1299
    .end local v1    # "deltaX":I
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    .line 1300
    return-void

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput v6, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1278
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1279
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollComplete()V

    goto :goto_0

    .line 1282
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mFingVelocity:I

    invoke-virtual {v0, v3}, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->start(I)V

    .line 1283
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    if-ge v0, v4, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->finish()V

    .line 1286
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    aget v3, v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    div-float/2addr v0, v3

    float-to-int v1, v0

    .line 1289
    .restart local v1    # "deltaX":I
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScroller:Landroid/widget/Scroller;

    neg-int v3, v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1290
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    .line 1291
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mLastSpringX:I

    .line 1292
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput v7, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1293
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    goto :goto_0

    .line 1295
    .end local v1    # "deltaX":I
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$12;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v2, 0x3

    iput v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    goto :goto_0
.end method
