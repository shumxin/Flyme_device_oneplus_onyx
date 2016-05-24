.class Lcom/meizu/media/camera/ui/SavedMediaCue$4;
.super Ljava/lang/Object;
.source "SavedMediaCue.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/SavedMediaCue;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/ui/SavedMediaCue;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/SavedMediaCue;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/meizu/media/camera/ui/SavedMediaCue$4;->this$0:Lcom/meizu/media/camera/ui/SavedMediaCue;

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
    .line 92
    check-cast p3, Lcom/meizu/media/camera/media/MediaEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/ui/SavedMediaCue$4;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/media/MediaEventArgs;)V
    .locals 1
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
    .line 96
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/media/MediaEventArgs;>;"
    invoke-virtual {p3}, Lcom/meizu/media/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CaptureHandle;->isBurstPhotoCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue$4;->this$0:Lcom/meizu/media/camera/ui/SavedMediaCue;

    # invokes: Lcom/meizu/media/camera/ui/SavedMediaCue;->onBurstSaveEventReceived()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/SavedMediaCue;->access$400(Lcom/meizu/media/camera/ui/SavedMediaCue;)V

    .line 98
    :cond_0
    return-void
.end method
