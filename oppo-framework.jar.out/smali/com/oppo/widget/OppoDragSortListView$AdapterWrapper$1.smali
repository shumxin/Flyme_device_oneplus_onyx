.class Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "OppoDragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;-><init>(Lcom/oppo/widget/OppoDragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

.field final synthetic val$this$0:Lcom/oppo/widget/OppoDragSortListView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper$1;->this$1:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    iput-object p2, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper$1;->val$this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper$1;->this$1:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->notifyDataSetChanged()V

    .line 634
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper$1;->this$1:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->notifyDataSetInvalidated()V

    .line 638
    return-void
.end method
