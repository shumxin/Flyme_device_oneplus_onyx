.class Lcom/meizu/media/camera/FlashControllerImpl$7;
.super Ljava/lang/Object;
.source "FlashControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/FlashControllerImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/FlashControllerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/FlashControllerImpl;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/meizu/media/camera/FlashControllerImpl$7;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

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
    .line 264
    check-cast p3, Lcom/meizu/media/camera/CaptureEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/FlashControllerImpl$7;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 4
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
    .line 268
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/CaptureEventArgs;>;"
    invoke-virtual {p3}, Lcom/meizu/media/camera/CaptureEventArgs;->isBurstPhotoCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/meizu/media/camera/FlashControllerImpl$7;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    iget-object v1, p0, Lcom/meizu/media/camera/FlashControllerImpl$7;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    sget-object v2, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/meizu/media/camera/FlashControllerImpl;->disableFlash(Lcom/meizu/media/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/FlashControllerImpl;->m_BurstFlashDisableHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/FlashControllerImpl;->access$1202(Lcom/meizu/media/camera/FlashControllerImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 270
    :cond_0
    return-void
.end method
