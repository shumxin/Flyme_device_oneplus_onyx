.class Lcom/oppo/widget/OppoOptionMenuBar$9;
.super Ljava/lang/Object;
.source "OppoOptionMenuBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoOptionMenuBar;->setElementItemAnimationUp(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBar;

.field final synthetic val$elementItem:Landroid/widget/TextView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBar;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 2793
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$elementItem:Landroid/widget/TextView;

    iput p3, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$2400(Lcom/oppo/widget/OppoOptionMenuBar;)[Landroid/animation/Animator;

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$position:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 2836
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$2400(Lcom/oppo/widget/OppoOptionMenuBar;)[Landroid/animation/Animator;

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$position:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 2825
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2814
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2802
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$elementItem:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 2803
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$9;->val$elementItem:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 2804
    return-void
.end method
