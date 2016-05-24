.class Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/OptionsPanelImpl;->animateCloseContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

.field final synthetic val$groupFadeIn:Landroid/view/ViewGroup;

.field final synthetic val$groupFadeOut:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    iput-object p2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;->val$groupFadeIn:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;->val$groupFadeOut:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;->val$groupFadeIn:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;->val$groupFadeIn:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 187
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;->val$groupFadeIn:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    # getter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->CLOSE_ANIMATION_DECELERATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;
    invoke-static {}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$100()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 189
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;->val$groupFadeIn:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 196
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;->val$groupFadeOut:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 197
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelOpenHandles:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$200(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelOpenHandles:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$200(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method
