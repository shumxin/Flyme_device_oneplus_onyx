.class Lcom/meizu/media/camera/manual/ManualModeUI$9$1;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/manual/ManualModeUI$9;->onComponentFound(Lcom/meizu/media/camera/ui/OptionsPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/media/camera/manual/ManualModeUI$9;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI$9;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$9$1;->this$1:Lcom/meizu/media/camera/manual/ManualModeUI$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 585
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$9$1;->this$1:Lcom/meizu/media/camera/manual/ManualModeUI$9;

    iget-object v1, v1, Lcom/meizu/media/camera/manual/ManualModeUI$9;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$000(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 589
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 590
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$9$1;->this$1:Lcom/meizu/media/camera/manual/ManualModeUI$9;

    iget-object v1, v1, Lcom/meizu/media/camera/manual/ManualModeUI$9;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_OpenOptionsPanelHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$200(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 591
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$9$1;->this$1:Lcom/meizu/media/camera/manual/ManualModeUI$9;

    iget-object v1, v1, Lcom/meizu/media/camera/manual/ManualModeUI$9;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$000(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 592
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$9$1;->this$1:Lcom/meizu/media/camera/manual/ManualModeUI$9;

    iget-object v1, v1, Lcom/meizu/media/camera/manual/ManualModeUI$9;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$000(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 593
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$9$1;->this$1:Lcom/meizu/media/camera/manual/ManualModeUI$9;

    iget-object v1, v1, Lcom/meizu/media/camera/manual/ManualModeUI$9;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$000(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->INTERPOLATOR_DECELERATE:Landroid/view/animation/PathInterpolator;
    invoke-static {}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$1500()Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 595
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method
