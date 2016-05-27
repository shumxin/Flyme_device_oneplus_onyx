.class Lcom/oppo/widget/OppoMultiRemoveAdapter$4;
.super Ljava/lang/Object;
.source "OppoMultiRemoveAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 283
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$4;->this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

    iput-object p2, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$4;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 288
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$4;->this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

    iget-object v2, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$4;->val$target:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/oppo/widget/OppoMultiRemoveAdapter;->changeHeight(Landroid/view/View;I)V
    invoke-static {v1, v2, v0}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->access$200(Lcom/oppo/widget/OppoMultiRemoveAdapter;Landroid/view/View;I)V

    .line 289
    return-void
.end method
