.class Lcom/oppo/widget/OppoMultiChoiceAdapter$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeChoiceAnimators(Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

.field final synthetic val$otherView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$14;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iput-object p2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$14;->val$otherView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$14;->val$otherView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$14;->val$otherView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 776
    :cond_0
    return-void
.end method
