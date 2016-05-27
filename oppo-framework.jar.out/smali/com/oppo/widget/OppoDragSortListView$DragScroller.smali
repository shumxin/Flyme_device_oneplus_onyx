.class Lcom/oppo/widget/OppoDragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "OppoDragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/oppo/widget/OppoDragSortListView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 1

    .prologue
    .line 2832
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    .line 2832
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 2829
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2825
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 2859
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mAbort:Z

    if-eqz v13, :cond_0

    .line 2860
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    .line 2943
    :goto_0
    return-void

    .line 2866
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v13}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2867
    .local v3, "first":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v13}, Lcom/oppo/widget/OppoDragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2868
    .local v4, "last":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v13}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v2

    .line 2869
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v13}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingTop()I

    move-result v10

    .line 2870
    .local v10, "padTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v13}, Lcom/oppo/widget/OppoDragSortListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v14}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingBottom()I

    move-result v14

    sub-int v5, v13, v14

    .line 2872
    .local v5, "listHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mY:I
    invoke-static {v13}, Lcom/oppo/widget/OppoDragSortListView;->access$600(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I
    invoke-static {v14}, Lcom/oppo/widget/OppoDragSortListView;->access$2100(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v15}, Lcom/oppo/widget/OppoDragSortListView;->access$400(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2873
    .local v7, "minY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mY:I
    invoke-static {v13}, Lcom/oppo/widget/OppoDragSortListView;->access$600(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I
    invoke-static {v14}, Lcom/oppo/widget/OppoDragSortListView;->access$2100(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v15}, Lcom/oppo/widget/OppoDragSortListView;->access$400(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2875
    .local v6, "maxY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->scrollDir:I

    if-nez v13, :cond_4

    .line 2876
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2878
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_1

    .line 2879
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2882
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-ne v13, v10, :cond_2

    .line 2883
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2887
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;
    invoke-static {v13}, Lcom/oppo/widget/OppoDragSortListView;->access$2400(Lcom/oppo/widget/OppoDragSortListView;)Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartYF:F
    invoke-static {v14}, Lcom/oppo/widget/OppoDragSortListView;->access$2200(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollHeight:F
    invoke-static {v15}, Lcom/oppo/widget/OppoDragSortListView;->access$2300(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrollSpeed:F

    .line 2904
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mCurrTime:J

    .line 2905
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dt:F

    .line 2911
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrollSpeed:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dt:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    .line 2914
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    if-ltz v13, :cond_7

    .line 2915
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    .line 2916
    move v9, v3

    .line 2922
    .local v9, "movePos":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    sub-int v14, v9, v3

    invoke-virtual {v13, v14}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2923
    .local v8, "moveItem":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    add-int v11, v13, v14

    .line 2925
    .local v11, "top":I
    if-nez v9, :cond_3

    if-le v11, v10, :cond_3

    .line 2926
    move v11, v10

    .line 2930
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v14, 0x1

    # setter for: Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z
    invoke-static {v13, v14}, Lcom/oppo/widget/OppoDragSortListView;->access$2702(Lcom/oppo/widget/OppoDragSortListView;Z)Z

    .line 2932
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    sub-int v14, v11, v10

    invoke-virtual {v13, v9, v14}, Lcom/oppo/widget/OppoDragSortListView;->setSelectionFromTop(II)V

    .line 2933
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v13}, Lcom/oppo/widget/OppoDragSortListView;->layoutChildren()V

    .line 2934
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v13}, Lcom/oppo/widget/OppoDragSortListView;->invalidate()V

    .line 2936
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v14, 0x0

    # setter for: Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z
    invoke-static {v13, v14}, Lcom/oppo/widget/OppoDragSortListView;->access$2702(Lcom/oppo/widget/OppoDragSortListView;Z)Z

    .line 2939
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v14, 0x0

    # invokes: Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(ILandroid/view/View;Z)V
    invoke-static {v13, v9, v8, v14}, Lcom/oppo/widget/OppoDragSortListView;->access$2800(Lcom/oppo/widget/OppoDragSortListView;ILandroid/view/View;Z)V

    .line 2941
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mPrevTime:J

    goto/16 :goto_0

    .line 2890
    .end local v8    # "moveItem":Landroid/view/View;
    .end local v9    # "movePos":I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    sub-int v14, v4, v3

    invoke-virtual {v13, v14}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2891
    .restart local v12    # "v":Landroid/view/View;
    if-nez v12, :cond_5

    .line 2892
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2895
    :cond_5
    add-int/lit8 v13, v2, -0x1

    if-ne v4, v13, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int v14, v5, v10

    if-gt v13, v14, :cond_6

    .line 2896
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2900
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;
    invoke-static {v13}, Lcom/oppo/widget/OppoDragSortListView;->access$2400(Lcom/oppo/widget/OppoDragSortListView;)Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

    move-result-object v13

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartYF:F
    invoke-static {v15}, Lcom/oppo/widget/OppoDragSortListView;->access$2500(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollHeight:F
    invoke-static {v15}, Lcom/oppo/widget/OppoDragSortListView;->access$2600(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_1

    .line 2918
    :cond_7
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->dy:I

    .line 2919
    move v9, v4

    .restart local v9    # "movePos":I
    goto/16 :goto_2
.end method

.method public startScrolling(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 2835
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 2837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mAbort:Z

    .line 2838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    .line 2839
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->tStart:J

    .line 2840
    iget-wide v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mPrevTime:J

    .line 2841
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->scrollDir:I

    .line 2842
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoDragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2844
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    .line 2847
    if-eqz p1, :cond_0

    .line 2848
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v0, p0}, Lcom/oppo/widget/OppoDragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mScrolling:Z

    .line 2855
    :goto_0
    return-void

    .line 2851
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
