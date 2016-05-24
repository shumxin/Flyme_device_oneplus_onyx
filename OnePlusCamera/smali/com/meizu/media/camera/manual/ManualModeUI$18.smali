.class Lcom/meizu/media/camera/manual/ManualModeUI$18;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/manual/ManualModeUI;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

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
    .line 743
    check-cast p3, Lcom/meizu/media/camera/CaptureEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/manual/ManualModeUI$18;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CaptureEventArgs;)V

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
    .line 747
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/CaptureEventArgs;>;"
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$3700(Lcom/meizu/media/camera/manual/ManualModeUI;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 749
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->getSelectedExposureTimeNanos()J
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$3800(Lcom/meizu/media/camera/manual/ManualModeUI;)J

    move-result-wide v0

    .line 750
    .local v0, "exposureTime":J
    const-wide/32 v2, 0x1dcd6500

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 751
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->showProcessingDialog()V
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$3900(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    .line 753
    :cond_0
    invoke-virtual {p3}, Lcom/meizu/media/camera/CaptureEventArgs;->getFrameIndex()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    invoke-virtual {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 755
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4000(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/ui/ProcessingDialog;

    move-result-object v2

    if-nez v2, :cond_2

    .line 757
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    invoke-virtual {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    const-class v4, Lcom/meizu/media/camera/ui/ProcessingDialog;

    invoke-virtual {v2, v4}, Lcom/meizu/media/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/ui/ProcessingDialog;

    # setter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;
    invoke-static {v3, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4002(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/ui/ProcessingDialog;)Lcom/meizu/media/camera/ui/ProcessingDialog;

    .line 758
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4000(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/ui/ProcessingDialog;

    move-result-object v2

    if-nez v2, :cond_2

    .line 760
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4100(Lcom/meizu/media/camera/manual/ManualModeUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onIsCapturingRawPhotoChanged() - No ProcessingDialog interface"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .end local v0    # "exposureTime":J
    :cond_1
    :goto_0
    return-void

    .line 766
    .restart local v0    # "exposureTime":J
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4200(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 767
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;
    invoke-static {v3}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4000(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/ui/ProcessingDialog;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    # setter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;
    invoke-static {v2, v3}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4202(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 769
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$18;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4300(Lcom/meizu/media/camera/manual/ManualModeUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onEventReceived() - Already has raw processing dialog"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
