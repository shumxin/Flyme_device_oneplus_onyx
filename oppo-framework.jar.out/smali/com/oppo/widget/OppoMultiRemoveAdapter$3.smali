.class Lcom/oppo/widget/OppoMultiRemoveAdapter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoMultiRemoveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoMultiRemoveAdapter;->createHeightAnimator(Landroid/view/View;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoMultiRemoveAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$3;->this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

    iput-object p2, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$3;->val$target:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$3;->this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$3;->val$target:Landroid/view/View;

    const/4 v2, 0x0

    # invokes: Lcom/oppo/widget/OppoMultiRemoveAdapter;->changeHeight(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->access$200(Lcom/oppo/widget/OppoMultiRemoveAdapter;Landroid/view/View;I)V

    .line 281
    return-void
.end method
