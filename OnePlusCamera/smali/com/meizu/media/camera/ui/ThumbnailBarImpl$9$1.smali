.class Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9$1;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;->onComponentFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V
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
.field final synthetic this$1:Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9$1;->this$1:Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;

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
    .line 256
    check-cast p3, Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V

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
    .line 260
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9$1;->this$1:Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    const/4 v1, 0x1

    # setter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_IsPressingCaptureButton:Z
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$1002(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;Z)Z

    .line 261
    return-void
.end method
