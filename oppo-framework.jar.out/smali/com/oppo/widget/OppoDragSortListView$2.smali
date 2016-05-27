.class Lcom/oppo/widget/OppoDragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "OppoDragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoDragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoDragSortListView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView$2;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$2;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mDragState:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$100(Lcom/oppo/widget/OppoDragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$2;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDragSortListView;->cancelDrag()V

    .line 533
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView$2;->cancel()V

    .line 538
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView$2;->cancel()V

    .line 543
    return-void
.end method
