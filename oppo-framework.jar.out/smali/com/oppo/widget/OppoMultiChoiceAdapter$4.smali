.class Lcom/oppo/widget/OppoMultiChoiceAdapter$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoMultiChoiceAdapter;
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
    .line 163
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$4;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 168
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$4;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # getter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEnding:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$000(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string v0, "OppoMultiChoiceAdapter"

    const-string v1, "onAnimationEnd : ActionBar.Show"

    invoke-static {v2, v0, v1}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$4;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # setter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEnding:Z
    invoke-static {v0, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$002(Lcom/oppo/widget/OppoMultiChoiceAdapter;Z)Z

    .line 171
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$4;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->onAllAnimatorsEnd(Z)V

    .line 173
    :cond_0
    return-void
.end method
