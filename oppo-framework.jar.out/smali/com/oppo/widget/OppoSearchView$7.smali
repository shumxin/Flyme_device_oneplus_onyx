.class Lcom/oppo/widget/OppoSearchView$7;
.super Ljava/lang/Object;
.source "OppoSearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 871
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView$7;->this$0:Lcom/oppo/widget/OppoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 881
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView$7;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;
    invoke-static {v2}, Lcom/oppo/widget/OppoSearchView;->access$1200(Lcom/oppo/widget/OppoSearchView;)Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView$7;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;
    invoke-static {v2}, Lcom/oppo/widget/OppoSearchView;->access$1200(Lcom/oppo/widget/OppoSearchView;)Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getListSelection()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 883
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView$7;->this$0:Lcom/oppo/widget/OppoSearchView;

    # invokes: Lcom/oppo/widget/OppoSearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v1, p1, p2, p3}, Lcom/oppo/widget/OppoSearchView;->access$1400(Lcom/oppo/widget/OppoSearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 905
    :goto_0
    return v1

    .line 888
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView$7;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;
    invoke-static {v2}, Lcom/oppo/widget/OppoSearchView;->access$1200(Lcom/oppo/widget/OppoSearchView;)Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    move-result-object v2

    # invokes: Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->isEmpty()Z
    invoke-static {v2}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->access$1500(Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 889
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 890
    const/16 v2, 0x42

    if-ne p2, v2, :cond_1

    .line 891
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 892
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView$7;->this$0:Lcom/oppo/widget/OppoSearchView;

    # invokes: Lcom/oppo/widget/OppoSearchView;->onSubmitQuery()V
    invoke-static {v2}, Lcom/oppo/widget/OppoSearchView;->access$900(Lcom/oppo/widget/OppoSearchView;)V

    goto :goto_0

    .line 896
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView$7;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v2}, Lcom/oppo/widget/OppoSearchView;->access$1600(Lcom/oppo/widget/OppoSearchView;)Landroid/app/SearchableInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 897
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView$7;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v2}, Lcom/oppo/widget/OppoSearchView;->access$1600(Lcom/oppo/widget/OppoSearchView;)Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 898
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 899
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView$7;->this$0:Lcom/oppo/widget/OppoSearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoSearchView$7;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;
    invoke-static {v4}, Lcom/oppo/widget/OppoSearchView;->access$1200(Lcom/oppo/widget/OppoSearchView;)Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/oppo/widget/OppoSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p2, v3, v4}, Lcom/oppo/widget/OppoSearchView;->access$1700(Lcom/oppo/widget/OppoSearchView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 905
    .end local v0    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
