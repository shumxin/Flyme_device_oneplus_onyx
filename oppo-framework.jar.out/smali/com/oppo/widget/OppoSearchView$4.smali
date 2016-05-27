.class Lcom/oppo/widget/OppoSearchView$4;
.super Ljava/lang/Object;
.source "OppoSearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 289
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView$4;->this$0:Lcom/oppo/widget/OppoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$4;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$200(Lcom/oppo/widget/OppoSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$4;->this$0:Lcom/oppo/widget/OppoSearchView;

    # getter for: Lcom/oppo/widget/OppoSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$200(Lcom/oppo/widget/OppoSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView$4;->this$0:Lcom/oppo/widget/OppoSearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 295
    :cond_0
    return-void
.end method
