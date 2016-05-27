.class Lcom/oppo/widget/OppoListView$1;
.super Ljava/lang/Object;
.source "OppoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoListView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoListView;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 267
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    # getter for: Lcom/oppo/widget/OppoListView;->mUpScroll:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoListView;->access$000(Lcom/oppo/widget/OppoListView;)Z

    move-result v1

    if-ne v4, v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    iget-object v2, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoListView;->setSelection(I)V

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoListView;->getChildCount()I

    move-result v2

    add-int v0, v1, v2

    .line 271
    .local v0, "mCurSite":I
    iget-object v1, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    iget-object v2, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/widget/OppoListView$1;->this$0:Lcom/oppo/widget/OppoListView;

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/oppo/widget/OppoListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method
