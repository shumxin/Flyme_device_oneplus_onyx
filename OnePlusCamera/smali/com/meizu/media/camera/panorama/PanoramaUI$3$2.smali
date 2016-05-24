.class Lcom/meizu/media/camera/panorama/PanoramaUI$3$2;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/panorama/PanoramaUI$3;->onComponentFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V
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
        "Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/media/camera/panorama/PanoramaUI$3;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/panorama/PanoramaUI$3;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$3$2;->this$1:Lcom/meizu/media/camera/panorama/PanoramaUI$3;

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
    .line 554
    check-cast p3, Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/panorama/PanoramaUI$3$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;",
            ">;",
            "Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 558
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$3$2;->this$1:Lcom/meizu/media/camera/panorama/PanoramaUI$3;

    iget-object v0, v0, Lcom/meizu/media/camera/panorama/PanoramaUI$3;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaUI;->onCaptureButtonReleased(Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V
    invoke-static {v0, p3}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$600(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V

    .line 559
    return-void
.end method
