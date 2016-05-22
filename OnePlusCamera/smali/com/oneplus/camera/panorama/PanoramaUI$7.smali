.class Lcom/oneplus/camera/panorama/PanoramaUI$7;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/panorama/PanoramaUI;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/oneplus/camera/ui/OptionsPanel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$7;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 766
    check-cast p1, Lcom/oneplus/camera/ui/OptionsPanel;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI$7;->onComponentFound(Lcom/oneplus/camera/ui/OptionsPanel;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/OptionsPanel;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/ui/OptionsPanel;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$7;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    # setter for: Lcom/oneplus/camera/panorama/PanoramaUI;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;
    invoke-static {v0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI;->access$1602(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/camera/ui/OptionsPanel;)Lcom/oneplus/camera/ui/OptionsPanel;

    .line 771
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$7;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    # invokes: Lcom/oneplus/camera/panorama/PanoramaUI;->isEntered()Z
    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->access$1700(Lcom/oneplus/camera/panorama/PanoramaUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$7;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    # getter for: Lcom/oneplus/camera/panorama/PanoramaUI;->m_OptionsPanelHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->access$1800(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$7;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanel;->closeOptionsPanel(Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/camera/panorama/PanoramaUI;->m_OptionsPanelHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->access$1802(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 773
    :cond_0
    return-void
.end method
