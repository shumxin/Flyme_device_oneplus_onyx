.class Lcom/meizu/media/camera/ui/PreviewGallery$7$2;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/PreviewGallery$7;->onComponentFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V
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
.field final synthetic this$1:Lcom/meizu/media/camera/ui/PreviewGallery$7;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/PreviewGallery$7;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/meizu/media/camera/ui/PreviewGallery$7$2;->this$1:Lcom/meizu/media/camera/ui/PreviewGallery$7;

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
    .line 536
    check-cast p3, Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/ui/PreviewGallery$7$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V
    .locals 2
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
    .line 540
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$7$2;->this$1:Lcom/meizu/media/camera/ui/PreviewGallery$7;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/PreviewGallery$7;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/ui/PreviewGallery;->lockPreviewGallery(Z)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$1400(Lcom/meizu/media/camera/ui/PreviewGallery;Z)V

    .line 541
    return-void
.end method
