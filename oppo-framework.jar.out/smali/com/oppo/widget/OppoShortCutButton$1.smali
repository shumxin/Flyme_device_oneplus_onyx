.class Lcom/oppo/widget/OppoShortCutButton$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoShortCutButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoShortCutButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoShortCutButton;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoShortCutButton;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 696
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    # getter for: Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoShortCutButton;->access$000(Lcom/oppo/widget/OppoShortCutButton;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oppo.android.INPUT_WINDOW_HIDDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    # getter for: Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoShortCutButton;->access$100(Lcom/oppo/widget/OppoShortCutButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    # setter for: Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z
    invoke-static {v0, v2}, Lcom/oppo/widget/OppoShortCutButton;->access$102(Lcom/oppo/widget/OppoShortCutButton;Z)Z

    .line 705
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoShortCutButton;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    # getter for: Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/oppo/widget/OppoShortCutButton;->access$200(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 708
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oppo.android.INPUT_WINDOW_SHOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    # getter for: Lcom/oppo/widget/OppoShortCutButton;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoShortCutButton;->access$300(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    const/4 v1, 0x1

    # setter for: Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoShortCutButton;->access$102(Lcom/oppo/widget/OppoShortCutButton;Z)Z

    .line 713
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutButton;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton$1;->this$0:Lcom/oppo/widget/OppoShortCutButton;

    # getter for: Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/oppo/widget/OppoShortCutButton;->access$400(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoShortCutButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
