.class Lcom/oppo/widget/OppoNumberPicker$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/oppo/widget/OppoNumberPicker;

.field final synthetic val$showDecrementButton:Landroid/animation/ObjectAnimator;

.field final synthetic val$showIncrementButton:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoNumberPicker;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 1

    .prologue
    .line 791
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker$4;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    iput-object p2, p0, Lcom/oppo/widget/OppoNumberPicker$4;->val$showIncrementButton:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/oppo/widget/OppoNumberPicker$4;->val$showDecrementButton:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker$4;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$4;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/oppo/widget/OppoNumberPicker;->access$400(Lcom/oppo/widget/OppoNumberPicker;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker$4;->mCanceled:Z

    .line 812
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker$4;->mCanceled:Z

    if-nez v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$4;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x1

    # invokes: Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->access$300(Lcom/oppo/widget/OppoNumberPicker;I)V

    .line 801
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker$4;->mCanceled:Z

    .line 802
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$4;->val$showIncrementButton:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker$4;->val$showIncrementButton:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 803
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$4;->val$showDecrementButton:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker$4;->val$showDecrementButton:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 805
    return-void
.end method
