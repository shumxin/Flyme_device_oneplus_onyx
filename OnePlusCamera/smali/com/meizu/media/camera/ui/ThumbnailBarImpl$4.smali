.class Lcom/meizu/media/camera/ui/ThumbnailBarImpl$4;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$4;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

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
    .line 167
    check-cast p3, Lcom/meizu/media/camera/CaptureEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$4;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CaptureEventArgs;)V

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
    .line 171
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/CaptureEventArgs;>;"
    invoke-virtual {p3}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    .line 172
    .local v0, "captureHandle":Lcom/meizu/media/camera/CaptureHandle;
    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$4;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$300(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    return-void
.end method
