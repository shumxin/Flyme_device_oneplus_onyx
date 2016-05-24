.class Lcom/meizu/media/camera/manual/ManualModeUI$1;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/manual/ManualModeUI;->onMoreButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$1;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    .line 480
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$1;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$000(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 481
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 483
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$1;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$000(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$1;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$000(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 485
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$1;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_MoreButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$100(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLeft()I

    move-result v0

    .line 486
    .local v0, "pivotx":I
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$1;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI$1;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;
    invoke-static {v3}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$300(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/ui/OptionsPanel;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;->PHOTO_DEFAULT_TIER_SECOND:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;

    invoke-interface {v3, v4, v0}, Lcom/meizu/media/camera/ui/OptionsPanel;->openOptionsPanel(Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    # setter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_OpenOptionsPanelHandle:Lcom/oneplus/base/Handle;
    invoke-static {v2, v3}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$202(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 487
    return-void
.end method
