.class Lcom/meizu/media/camera/panorama/PanoramaController$2;
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
    .line 146
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaController$2;->this$0:Lcom/meizu/media/camera/panorama/PanoramaController;

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
    .line 146
    check-cast p3, Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/panorama/PanoramaController$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 1
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
    .line 150
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/CameraCaptureEventArgs;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaController$2;->this$0:Lcom/meizu/media/camera/panorama/PanoramaController;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaController;->onFrameCaptured(Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    invoke-static {v0, p3}, Lcom/meizu/media/camera/panorama/PanoramaController;->access$100(Lcom/meizu/media/camera/panorama/PanoramaController;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    .line 151
    return-void
.end method
