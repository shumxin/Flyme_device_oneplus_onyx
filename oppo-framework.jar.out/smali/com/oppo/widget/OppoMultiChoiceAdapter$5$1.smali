.class Lcom/oppo/widget/OppoMultiChoiceAdapter$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/widget/OppoMultiChoiceAdapter$5;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoMultiChoiceAdapter$5;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5$1;->this$1:Lcom/oppo/widget/OppoMultiChoiceAdapter$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5$1;->this$1:Lcom/oppo/widget/OppoMultiChoiceAdapter$5;

    iget-object v0, v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->onAllAnimatorsEnd(Z)V

    .line 195
    return-void
.end method
