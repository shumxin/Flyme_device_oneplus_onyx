.class Lcom/oppo/widget/OppoLockPatternView$4;
.super Ljava/lang/Object;
.source "OppoLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoLockPatternView;->setAlphaAnimation(Landroid/animation/ValueAnimator;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoLockPatternView;

.field final synthetic val$m:I

.field final synthetic val$n:I


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoLockPatternView;II)V
    .locals 0

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView$4;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    iput p2, p0, Lcom/oppo/widget/OppoLockPatternView$4;->val$m:I

    iput p3, p0, Lcom/oppo/widget/OppoLockPatternView$4;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animatior"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView$4;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    # getter for: Lcom/oppo/widget/OppoLockPatternView;->mPaintAlpha:[[I
    invoke-static {v0}, Lcom/oppo/widget/OppoLockPatternView;->access$300(Lcom/oppo/widget/OppoLockPatternView;)[[I

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView$4;->val$m:I

    aget-object v1, v0, v1

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView$4;->val$n:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 1474
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView$4;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 1475
    return-void
.end method
