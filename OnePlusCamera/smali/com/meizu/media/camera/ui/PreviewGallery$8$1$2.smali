.class Lcom/meizu/media/camera/ui/PreviewGallery$8$1$2;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/PreviewGallery$8$1;->run()V
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
.field final synthetic this$2:Lcom/meizu/media/camera/ui/PreviewGallery$8$1;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/PreviewGallery$8$1;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1$2;->this$2:Lcom/meizu/media/camera/ui/PreviewGallery$8$1;

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
    .line 710
    check-cast p3, Lcom/meizu/media/camera/media/MediaEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/ui/PreviewGallery$8$1$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/media/MediaEventArgs;)V

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
    .line 714
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/media/MediaEventArgs;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1$2;->this$2:Lcom/meizu/media/camera/ui/PreviewGallery$8$1;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1;->this$1:Lcom/meizu/media/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    # getter for: Lcom/meizu/media/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$2400(Lcom/meizu/media/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT_MEDIA_SAVE_FAILED"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1$2;->this$2:Lcom/meizu/media/camera/ui/PreviewGallery$8$1;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1;->this$1:Lcom/meizu/media/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 716
    return-void
.end method