.class Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;
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
        "Lcom/meizu/media/camera/media/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

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
    .line 137
    check-cast p3, Lcom/meizu/media/camera/media/MediaEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/media/MediaEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/meizu/media/camera/media/MediaEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/media/MediaEventArgs;",
            ">;",
            "Lcom/meizu/media/camera/media/MediaEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/media/MediaEventArgs;>;"
    invoke-virtual {p3}, Lcom/meizu/media/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$300(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p3}, Lcom/meizu/media/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    invoke-virtual {p3}, Lcom/meizu/media/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->decodeThumbnailImage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$400(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Lcom/meizu/media/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CaptureHandle;->isBurstPhotoCapture()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$300(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p3}, Lcom/meizu/media/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$500(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$300(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$500(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$502(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;Lcom/meizu/media/camera/CaptureHandle;)Lcom/meizu/media/camera/CaptureHandle;

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$500(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    invoke-virtual {p3}, Lcom/meizu/media/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$502(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;Lcom/meizu/media/camera/CaptureHandle;)Lcom/meizu/media/camera/CaptureHandle;

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p3}, Lcom/meizu/media/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$500(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$300(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$500(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$3;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    invoke-virtual {p3}, Lcom/meizu/media/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$502(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;Lcom/meizu/media/camera/CaptureHandle;)Lcom/meizu/media/camera/CaptureHandle;

    goto :goto_0
.end method
