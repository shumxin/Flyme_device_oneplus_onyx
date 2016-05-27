.class Lcom/oppo/widget/OppoSearchViewAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoSearchViewAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoSearchViewAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoSearchViewAnim;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoSearchViewAnim;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 90
    const/16 v0, 0x3eb

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    # getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I
    invoke-static {v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$000(Lcom/oppo/widget/OppoSearchViewAnim;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    # getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$100(Lcom/oppo/widget/OppoSearchViewAnim;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    # getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$200(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    # getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$200(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;->onShowAnimationEnd()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    const/4 v1, 0x0

    # setter for: Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$302(Lcom/oppo/widget/OppoSearchViewAnim;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 95
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    const/4 v1, 0x1

    # invokes: Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$400(Lcom/oppo/widget/OppoSearchViewAnim;Z)V

    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    const/16 v1, 0x3e8

    # setter for: Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$002(Lcom/oppo/widget/OppoSearchViewAnim;I)I

    .line 97
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    const/4 v1, 0x0

    # setter for: Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$102(Lcom/oppo/widget/OppoSearchViewAnim;Z)Z

    .line 99
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    # getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mIsTriggerActionBarAnim:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$100(Lcom/oppo/widget/OppoSearchViewAnim;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    # getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$500(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    :cond_0
    return-void
.end method
