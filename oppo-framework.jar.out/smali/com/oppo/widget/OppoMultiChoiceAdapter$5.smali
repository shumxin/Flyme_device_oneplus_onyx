.class Lcom/oppo/widget/OppoMultiChoiceAdapter$5;
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
    .line 175
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    .line 180
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # getter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEnding:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$000(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const-string v1, "OppoMultiChoiceAdapter"

    const-string v2, "onAnimationEnd : ActionBar.Hide"

    invoke-static {v3, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # setter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEnding:Z
    invoke-static {v1, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$002(Lcom/oppo/widget/OppoMultiChoiceAdapter;Z)Z

    .line 183
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->onHideAnimatorsEnd()V

    .line 184
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-object v1, v1, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-object v2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-object v2, v2, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeRightOut:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    iget-object v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-object v3, v3, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeFadeIn:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    invoke-virtual {v1, v2, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeChoiceAnimators(Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;)V

    .line 186
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 187
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # invokes: Lcom/oppo/widget/OppoMultiChoiceAdapter;->getChoiceAnimators()Ljava/util/List;
    invoke-static {v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$100(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 188
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-object v1, v1, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorFadeOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-wide v2, v1, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDurationChoice:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 190
    new-instance v1, Lcom/oppo/widget/OppoMultiChoiceAdapter$5$1;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$5$1;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter$5;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 202
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->onAllAnimatorsEnd(Z)V

    goto :goto_0
.end method
