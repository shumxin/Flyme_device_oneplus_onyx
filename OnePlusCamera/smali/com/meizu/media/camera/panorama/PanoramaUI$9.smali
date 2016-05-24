.class Lcom/meizu/media/camera/panorama/PanoramaUI$9;
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
    .line 793
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$9;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

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
    .line 793
    check-cast p3, Lcom/meizu/media/camera/CaptureEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/panorama/PanoramaUI$9;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 2
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
    .line 797
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/CaptureEventArgs;>;"
    invoke-virtual {p3}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$9;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$2000(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 798
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$9;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaUI;->completeCapture()V
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$2100(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    .line 799
    :cond_0
    return-void
.end method
