.class Lcom/meizu/media/camera/panorama/PanoramaUI$10;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/panorama/PanoramaUI;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/meizu/media/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 802
    check-cast p3, Lcom/meizu/media/camera/CaptureEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/meizu/media/camera/CaptureEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/CaptureEventArgs;>;"
    const/4 v5, 0x0

    .line 806
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z
    invoke-static {v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$2200(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 808
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;
    invoke-static {v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$400(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/meizu/media/camera/ui/CaptureButtons;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;
    invoke-static {v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$400(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/meizu/media/camera/ui/CaptureButtons;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/meizu/media/camera/ui/CaptureButtons$Button;

    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-virtual {v3}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/meizu/media/camera/ui/CaptureButtons;->setButtonBackground(Lcom/meizu/media/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 811
    .local v0, "newHandle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$2300(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 812
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # setter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1, v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$2302(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 814
    .end local v0    # "newHandle":Lcom/oneplus/base/Handle;
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$2400(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;
    invoke-static {v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$2500(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/meizu/media/camera/ui/OnScreenHint;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;
    invoke-static {v2}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$2400(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-virtual {v3}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f090020

    invoke-virtual {v3, v4}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/meizu/media/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    .line 818
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$2600(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 819
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$10;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    const/4 v2, 0x2

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaUI;->updateStartHint(II)V
    invoke-static {v1, v2, v5}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$1900(Lcom/meizu/media/camera/panorama/PanoramaUI;II)V

    .line 821
    :cond_2
    return-void
.end method
