.class Lcom/oppo/widget/OppoSearchView$3;
.super Ljava/lang/Object;
.source "OppoSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 169
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView$3;->this$0:Lcom/oppo/widget/OppoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$3;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$100(Lcom/oppo/widget/OppoSearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$3;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$100(Lcom/oppo/widget/OppoSearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/oppo/widget/OppoSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$3;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$100(Lcom/oppo/widget/OppoSearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 176
    :cond_0
    return-void
.end method
