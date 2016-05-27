.class Lcom/oppo/widget/OppoDragSortListView$DropAnimator;
.super Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;
.source "OppoDragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropAnimator"
.end annotation


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lcom/oppo/widget/OppoDragSortListView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;FI)V
    .locals 0
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    .line 1212
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;-><init>(Lcom/oppo/widget/OppoDragSortListView;FI)V

    .line 1213
    return-void
.end method

.method private getTargetY()I
    .locals 6

    .prologue
    .line 1225
    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1226
    .local v0, "first":I
    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I
    invoke-static {v4}, Lcom/oppo/widget/OppoDragSortListView;->access$1000(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoDragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 1227
    .local v1, "otherAdjust":I
    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->mDropPos:I

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1228
    .local v3, "v":Landroid/view/View;
    const/4 v2, -0x1

    .line 1229
    .local v2, "targetY":I
    if-eqz v3, :cond_2

    .line 1230
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->mDropPos:I

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->srcPos:I

    if-ne v4, v5, :cond_0

    .line 1231
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1244
    :goto_0
    return v2

    .line 1232
    :cond_0
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->mDropPos:I

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->srcPos:I

    if-ge v4, v5, :cond_1

    .line 1234
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v4, v1

    goto :goto_0

    .line 1237
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I
    invoke-static {v5}, Lcom/oppo/widget/OppoDragSortListView;->access$1100(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_0

    .line 1241
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$800(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->mDropPos:I

    .line 1218
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$900(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->srcPos:I

    .line 1219
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v1, 0x2

    # setter for: Lcom/oppo/widget/OppoDragSortListView;->mDragState:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->access$102(Lcom/oppo/widget/OppoDragSortListView;I)I

    .line 1220
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$500(Lcom/oppo/widget/OppoDragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->getTargetY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->mInitDeltaY:F

    .line 1221
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$500(Lcom/oppo/widget/OppoDragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->mInitDeltaX:F

    .line 1222
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # invokes: Lcom/oppo/widget/OppoDragSortListView;->dropFloatView()V
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$1200(Lcom/oppo/widget/OppoDragSortListView;)V

    .line 1264
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v1, 0x1

    # setter for: Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->access$1302(Lcom/oppo/widget/OppoDragSortListView;Z)Z

    .line 1265
    return-void
.end method

.method public onUpdate(FF)V
    .locals 8
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1249
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->getTargetY()I

    move-result v4

    .line 1250
    .local v4, "targetY":I
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingLeft()I

    move-result v3

    .line 1251
    .local v3, "targetX":I
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/oppo/widget/OppoDragSortListView;->access$500(Lcom/oppo/widget/OppoDragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    int-to-float v1, v5

    .line 1252
    .local v1, "deltaY":F
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/oppo/widget/OppoDragSortListView;->access$500(Lcom/oppo/widget/OppoDragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    int-to-float v0, v5

    .line 1253
    .local v0, "deltaX":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, p2

    .line 1254
    .local v2, "f":F
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->mInitDeltaY:F

    div-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->mInitDeltaX:F

    div-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    .line 1255
    :cond_0
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/oppo/widget/OppoDragSortListView;->access$500(Lcom/oppo/widget/OppoDragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v6, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->mInitDeltaY:F

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 1256
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/oppo/widget/OppoDragSortListView;->access$500(Lcom/oppo/widget/OppoDragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v6}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->mInitDeltaX:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 1257
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v6, 0x1

    # invokes: Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(Z)V
    invoke-static {v5, v6}, Lcom/oppo/widget/OppoDragSortListView;->access$700(Lcom/oppo/widget/OppoDragSortListView;Z)V

    .line 1259
    :cond_1
    return-void
.end method
