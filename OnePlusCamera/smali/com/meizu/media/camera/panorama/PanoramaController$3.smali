.class Lcom/meizu/media/camera/panorama/PanoramaController$3;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/panorama/PanoramaController;
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
        "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/panorama/PanoramaController;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/panorama/PanoramaController;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaController$3;->this$0:Lcom/meizu/media/camera/panorama/PanoramaController;

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
    .line 154
    check-cast p3, Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/panorama/PanoramaController$3;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ">;",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/CameraCaptureEventArgs;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaController$3;->this$0:Lcom/meizu/media/camera/panorama/PanoramaController;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaController;->m_IsCapturing:Z
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaController;->access$200(Lcom/meizu/media/camera/panorama/PanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaController$3;->this$0:Lcom/meizu/media/camera/panorama/PanoramaController;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaController;->m_UsePreviewFramesToStitch:Z
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaController;->access$300(Lcom/meizu/media/camera/panorama/PanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaController$3;->this$0:Lcom/meizu/media/camera/panorama/PanoramaController;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaController;->onFrameCaptured(Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    invoke-static {v0, p3}, Lcom/meizu/media/camera/panorama/PanoramaController;->access$100(Lcom/meizu/media/camera/panorama/PanoramaController;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaController$3;->this$0:Lcom/meizu/media/camera/panorama/PanoramaController;

    invoke-virtual {v0}, Lcom/meizu/media/camera/panorama/PanoramaController;->getCameraThread()Lcom/meizu/media/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaController$3;->this$0:Lcom/meizu/media/camera/panorama/PanoramaController;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaController;->onPreviewFrameReceived(Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    invoke-static {v0, p3}, Lcom/meizu/media/camera/panorama/PanoramaController;->access$400(Lcom/meizu/media/camera/panorama/PanoramaController;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    goto :goto_0
.end method
