.class Lcom/oppo/widget/OppoDragSortController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OppoDragSortController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDragSortController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoDragSortController;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoDragSortController;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortController$1;->this$0:Lcom/oppo/widget/OppoDragSortController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController$1;->this$0:Lcom/oppo/widget/OppoDragSortController;

    # getter for: Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z
    invoke-static {v2}, Lcom/oppo/widget/OppoDragSortController;->access$000(Lcom/oppo/widget/OppoDragSortController;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController$1;->this$0:Lcom/oppo/widget/OppoDragSortController;

    # getter for: Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z
    invoke-static {v2}, Lcom/oppo/widget/OppoDragSortController;->access$100(Lcom/oppo/widget/OppoDragSortController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController$1;->this$0:Lcom/oppo/widget/OppoDragSortController;

    # getter for: Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDragSortController;->access$200(Lcom/oppo/widget/OppoDragSortController;)Lcom/oppo/widget/OppoDragSortListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDragSortListView;->getWidth()I

    move-result v1

    .line 466
    .local v1, "w":I
    div-int/lit8 v0, v1, 0x5

    .line 467
    .local v0, "minPos":I
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController$1;->this$0:Lcom/oppo/widget/OppoDragSortController;

    # getter for: Lcom/oppo/widget/OppoDragSortController;->mFlingSpeed:F
    invoke-static {v2}, Lcom/oppo/widget/OppoDragSortController;->access$300(Lcom/oppo/widget/OppoDragSortController;)F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2

    .line 468
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController$1;->this$0:Lcom/oppo/widget/OppoDragSortController;

    # getter for: Lcom/oppo/widget/OppoDragSortController;->mPositionX:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDragSortController;->access$400(Lcom/oppo/widget/OppoDragSortController;)I

    move-result v2

    neg-int v3, v0

    if-le v2, v3, :cond_0

    .line 469
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController$1;->this$0:Lcom/oppo/widget/OppoDragSortController;

    # getter for: Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDragSortController;->access$200(Lcom/oppo/widget/OppoDragSortController;)Lcom/oppo/widget/OppoDragSortListView;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Lcom/oppo/widget/OppoDragSortListView;->stopDragWithVelocity(ZF)Z

    .line 476
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController$1;->this$0:Lcom/oppo/widget/OppoDragSortController;

    # setter for: Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z
    invoke-static {v2, v4}, Lcom/oppo/widget/OppoDragSortController;->access$102(Lcom/oppo/widget/OppoDragSortController;Z)Z

    .line 478
    .end local v0    # "minPos":I
    .end local v1    # "w":I
    :cond_1
    return v4

    .line 471
    .restart local v0    # "minPos":I
    .restart local v1    # "w":I
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController$1;->this$0:Lcom/oppo/widget/OppoDragSortController;

    # getter for: Lcom/oppo/widget/OppoDragSortController;->mFlingSpeed:F
    invoke-static {v2}, Lcom/oppo/widget/OppoDragSortController;->access$300(Lcom/oppo/widget/OppoDragSortController;)F

    move-result v2

    neg-float v2, v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController$1;->this$0:Lcom/oppo/widget/OppoDragSortController;

    # getter for: Lcom/oppo/widget/OppoDragSortController;->mPositionX:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDragSortController;->access$400(Lcom/oppo/widget/OppoDragSortController;)I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 473
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController$1;->this$0:Lcom/oppo/widget/OppoDragSortController;

    # getter for: Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;
    invoke-static {v2}, Lcom/oppo/widget/OppoDragSortController;->access$200(Lcom/oppo/widget/OppoDragSortController;)Lcom/oppo/widget/OppoDragSortListView;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Lcom/oppo/widget/OppoDragSortListView;->stopDragWithVelocity(ZF)Z

    goto :goto_0
.end method
