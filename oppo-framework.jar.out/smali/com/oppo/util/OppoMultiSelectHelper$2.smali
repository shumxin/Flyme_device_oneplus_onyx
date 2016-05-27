.class Lcom/oppo/util/OppoMultiSelectHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoMultiSelectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/util/OppoMultiSelectHelper;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/util/OppoMultiSelectHelper;


# direct methods
.method constructor <init>(Lcom/oppo/util/OppoMultiSelectHelper;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/oppo/util/OppoMultiSelectHelper$2;->this$0:Lcom/oppo/util/OppoMultiSelectHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper$2;->this$0:Lcom/oppo/util/OppoMultiSelectHelper;

    const/4 v1, 0x0

    # setter for: Lcom/oppo/util/OppoMultiSelectHelper;->mActionBarAnimating:Z
    invoke-static {v0, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->access$002(Lcom/oppo/util/OppoMultiSelectHelper;Z)Z

    .line 1110
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper$2;->this$0:Lcom/oppo/util/OppoMultiSelectHelper;

    # getter for: Lcom/oppo/util/OppoMultiSelectHelper;->mFinishing:Z
    invoke-static {v0}, Lcom/oppo/util/OppoMultiSelectHelper;->access$300(Lcom/oppo/util/OppoMultiSelectHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper$2;->this$0:Lcom/oppo/util/OppoMultiSelectHelper;

    # invokes: Lcom/oppo/util/OppoMultiSelectHelper;->tryClearAnimations()V
    invoke-static {v0}, Lcom/oppo/util/OppoMultiSelectHelper;->access$200(Lcom/oppo/util/OppoMultiSelectHelper;)V

    .line 1113
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/oppo/util/OppoMultiSelectHelper$2;->this$0:Lcom/oppo/util/OppoMultiSelectHelper;

    const/4 v1, 0x1

    # setter for: Lcom/oppo/util/OppoMultiSelectHelper;->mActionBarAnimating:Z
    invoke-static {v0, v1}, Lcom/oppo/util/OppoMultiSelectHelper;->access$002(Lcom/oppo/util/OppoMultiSelectHelper;Z)Z

    .line 1119
    return-void
.end method
