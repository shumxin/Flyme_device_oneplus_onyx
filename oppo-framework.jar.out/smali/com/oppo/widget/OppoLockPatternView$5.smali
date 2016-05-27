.class Lcom/oppo/widget/OppoLockPatternView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoLockPatternView;->setTranslateAnimation(Landroid/animation/ValueAnimator;II)V
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
    .line 1482
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView$5;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    iput p2, p0, Lcom/oppo/widget/OppoLockPatternView$5;->val$m:I

    iput p3, p0, Lcom/oppo/widget/OppoLockPatternView$5;->val$n:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView$5;->this$0:Lcom/oppo/widget/OppoLockPatternView;

    # getter for: Lcom/oppo/widget/OppoLockPatternView;->mNotDraw:[[Z
    invoke-static {v0}, Lcom/oppo/widget/OppoLockPatternView;->access$400(Lcom/oppo/widget/OppoLockPatternView;)[[Z

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView$5;->val$m:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView$5;->val$n:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1486
    return-void
.end method
