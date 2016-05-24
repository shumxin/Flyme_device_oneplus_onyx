.class Lcom/meizu/media/camera/FlashControllerImpl$9;
.super Lcom/oneplus/base/Handle;
.source "FlashControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/FlashControllerImpl;->torchFlash(J)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/FlashControllerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/FlashControllerImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/meizu/media/camera/FlashControllerImpl$9;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/meizu/media/camera/FlashControllerImpl$9;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    # getter for: Lcom/meizu/media/camera/FlashControllerImpl;->m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/meizu/media/camera/FlashControllerImpl;->access$1400(Lcom/meizu/media/camera/FlashControllerImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 388
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/meizu/media/camera/FlashControllerImpl$9;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    # invokes: Lcom/meizu/media/camera/FlashControllerImpl;->updateFlashState()V
    invoke-static {v0}, Lcom/meizu/media/camera/FlashControllerImpl;->access$600(Lcom/meizu/media/camera/FlashControllerImpl;)V

    .line 390
    :cond_0
    return-void
.end method
