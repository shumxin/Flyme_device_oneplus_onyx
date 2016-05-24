.class Lcom/meizu/media/camera/panorama/PanoramaUI$2;
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
        "Lcom/meizu/media/camera/ui/CaptureControlPanel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$2;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 527
    check-cast p1, Lcom/meizu/media/camera/ui/CaptureControlPanel;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI$2;->onComponentFound(Lcom/meizu/media/camera/ui/CaptureControlPanel;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/ui/CaptureControlPanel;)V
    .locals 1
    .param p1, "component"    # Lcom/meizu/media/camera/ui/CaptureControlPanel;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$2;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # setter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureControlPanel:Lcom/meizu/media/camera/ui/CaptureControlPanel;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$102(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/meizu/media/camera/ui/CaptureControlPanel;)Lcom/meizu/media/camera/ui/CaptureControlPanel;

    .line 532
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$2;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$200(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$2;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaUI;->setupCaptureButton()V
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$300(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    .line 534
    :cond_0
    return-void
.end method
