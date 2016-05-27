.class Lcom/oppo/widget/OppoMultiChoiceAdapter$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoMultiChoiceAdapter;-><init>(Landroid/widget/BaseAdapter;Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$12;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    .line 405
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$12;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$12;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # getter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mExtraView:Landroid/view/View;
    invoke-static {v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$900(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/oppo/widget/OppoMultiChoiceAdapter;->showBottomExtra(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$1000(Lcom/oppo/widget/OppoMultiChoiceAdapter;Landroid/view/View;Z)V

    .line 406
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$12;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$12;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # getter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;
    invoke-static {v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$1100(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/oppo/widget/OppoMultiChoiceAdapter;->showMajorGroup(Landroid/view/View;Z)V
    invoke-static {v0, v1, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$1200(Lcom/oppo/widget/OppoMultiChoiceAdapter;Landroid/view/View;Z)V

    .line 407
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$12;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$12;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # getter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;
    invoke-static {v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$1100(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/oppo/widget/OppoMultiChoiceAdapter;->updateMenuBar(Landroid/view/View;Z)V
    invoke-static {v0, v1, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$1300(Lcom/oppo/widget/OppoMultiChoiceAdapter;Landroid/view/View;Z)V

    .line 408
    return-void
.end method
