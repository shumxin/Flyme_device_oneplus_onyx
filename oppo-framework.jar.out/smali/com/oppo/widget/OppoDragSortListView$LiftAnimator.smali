.class Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;
.super Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;
.source "OppoDragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiftAnimator"
.end annotation


# instance fields
.field private mFinalDragDeltaY:F

.field private mInitDragDeltaY:F

.field final synthetic this$0:Lcom/oppo/widget/OppoDragSortListView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;FI)V
    .locals 0
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    .line 1179
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;-><init>(Lcom/oppo/widget/OppoDragSortListView;FI)V

    .line 1180
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$300(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->mInitDragDeltaY:F

    .line 1185
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$400(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    .line 1186
    return-void
.end method

.method public onUpdate(FF)V
    .locals 4
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mDragState:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$100(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1191
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->cancel()V

    .line 1198
    :goto_0
    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->mInitDragDeltaY:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    # setter for: Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->access$302(Lcom/oppo/widget/OppoDragSortListView;I)I

    .line 1195
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$500(Lcom/oppo/widget/OppoDragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mY:I
    invoke-static {v1}, Lcom/oppo/widget/OppoDragSortListView;->access$600(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I
    invoke-static {v2}, Lcom/oppo/widget/OppoDragSortListView;->access$300(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1196
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v1, 0x1

    # invokes: Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(Z)V
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->access$700(Lcom/oppo/widget/OppoDragSortListView;Z)V

    goto :goto_0
.end method
