.class Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "OppoAutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;)V
    .locals 0

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    # getter for: Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->access$700(Lcom/oppo/widget/OppoAutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1313
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 1316
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    # invokes: Lcom/oppo/widget/OppoAutoCompleteTextView;->updateDropDownForFilter(I)V
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoAutoCompleteTextView;->access$800(Lcom/oppo/widget/OppoAutoCompleteTextView;I)V

    .line 1318
    :cond_0
    return-void
.end method
