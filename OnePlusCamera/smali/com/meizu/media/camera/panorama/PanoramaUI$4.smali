.class Lcom/meizu/media/camera/panorama/PanoramaUI$4;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/panorama/PanoramaUI;->onEnter(I)Z
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
        "Lcom/meizu/media/camera/media/ResolutionManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$4;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 582
    check-cast p1, Lcom/meizu/media/camera/media/ResolutionManager;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI$4;->onComponentFound(Lcom/meizu/media/camera/media/ResolutionManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/media/ResolutionManager;)V
    .locals 4
    .param p1, "component"    # Lcom/meizu/media/camera/media/ResolutionManager;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$4;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # setter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$802(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/meizu/media/camera/media/ResolutionManager;)Lcom/meizu/media/camera/media/ResolutionManager;

    .line 587
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$4;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$900(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$4;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$1000(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/HandleSet;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$4;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$1000(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/HandleSet;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$4;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;
    invoke-static {v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$800(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/meizu/media/camera/media/ResolutionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$4;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionSelector:Lcom/meizu/media/camera/panorama/PanoramaUI$ResolutionSelector;
    invoke-static {v2}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$1100(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/meizu/media/camera/panorama/PanoramaUI$ResolutionSelector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/media/ResolutionManager;->setResolutionSelector(Lcom/meizu/media/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 589
    :cond_0
    return-void
.end method
