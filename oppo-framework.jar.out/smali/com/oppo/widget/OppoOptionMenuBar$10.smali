.class Lcom/oppo/widget/OppoOptionMenuBar$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoOptionMenuBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoOptionMenuBar;->setElementItemAnimationDown(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBar;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBar;I)V
    .locals 0

    .prologue
    .line 2856
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$10;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar$10;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$10;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$2400(Lcom/oppo/widget/OppoOptionMenuBar;)[Landroid/animation/Animator;

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar$10;->val$position:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 2860
    return-void
.end method
