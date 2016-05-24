.class Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEventHandle"
.end annotation


# instance fields
.field public handler:Lcom/meizu/media/camera/KeyEventHandler;

.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/KeyEventHandler;)V
    .locals 1
    .param p2, "handler"    # Lcom/meizu/media/camera/KeyEventHandler;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;->this$0:Lcom/meizu/media/camera/CameraActivity;

    .line 676
    const-string v0, "Key Event Handle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 677
    iput-object p2, p0, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;->handler:Lcom/meizu/media/camera/KeyEventHandler;

    .line 678
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->verifyAccess()V

    .line 684
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$KeyEventHandle;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/meizu/media/camera/CameraActivity;->access$900(Lcom/meizu/media/camera/CameraActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 685
    return-void
.end method
