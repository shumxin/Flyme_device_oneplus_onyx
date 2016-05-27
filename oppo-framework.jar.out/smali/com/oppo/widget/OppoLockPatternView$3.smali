.class Lcom/oppo/widget/OppoLockPatternView$3;
.super Ljava/lang/Object;
.source "OppoLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoLockPatternView;->getSuccessAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoLockPatternView;

.field final synthetic val$oa:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoLockPatternView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView$3;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    iput-object p2, p0, Lcom/oppo/widget/OppoLockPatternView$3;->val$oa:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animatior"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1444
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView$3;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView$3;->val$oa:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/oppo/widget/OppoLockPatternView;->mAlpha:I
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoLockPatternView;->access$202(Lcom/oppo/widget/OppoLockPatternView;I)I

    .line 1445
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView$3;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 1446
    return-void
.end method
