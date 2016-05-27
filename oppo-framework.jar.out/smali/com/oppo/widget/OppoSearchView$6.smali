.class Lcom/oppo/widget/OppoSearchView$6;
.super Ljava/lang/Object;
.source "OppoSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoSearchView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoSearchView;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView$6;->this$0:Lcom/oppo/widget/OppoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 826
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$6;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mSearchButton:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$400(Lcom/oppo/widget/OppoSearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$6;->this$0:Lcom/oppo/widget/OppoSearchView;

    # invokes: Lcom/oppo/widget/OppoSearchView;->onSearchClicked()V
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$500(Lcom/oppo/widget/OppoSearchView;)V

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$6;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$600(Lcom/oppo/widget/OppoSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$6;->this$0:Lcom/oppo/widget/OppoSearchView;

    # invokes: Lcom/oppo/widget/OppoSearchView;->onCloseClicked()V
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$700(Lcom/oppo/widget/OppoSearchView;)V

    goto :goto_0

    .line 830
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$6;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$800(Lcom/oppo/widget/OppoSearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$6;->this$0:Lcom/oppo/widget/OppoSearchView;

    # invokes: Lcom/oppo/widget/OppoSearchView;->onSubmitQuery()V
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$900(Lcom/oppo/widget/OppoSearchView;)V

    goto :goto_0

    .line 832
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$6;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mVoiceButton:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$1000(Lcom/oppo/widget/OppoSearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 833
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$6;->this$0:Lcom/oppo/widget/OppoSearchView;

    # invokes: Lcom/oppo/widget/OppoSearchView;->onVoiceClicked()V
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$1100(Lcom/oppo/widget/OppoSearchView;)V

    goto :goto_0

    .line 834
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$6;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$1200(Lcom/oppo/widget/OppoSearchView;)Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$6;->this$0:Lcom/oppo/widget/OppoSearchView;

    # invokes: Lcom/oppo/widget/OppoSearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$1300(Lcom/oppo/widget/OppoSearchView;)V

    goto :goto_0
.end method
