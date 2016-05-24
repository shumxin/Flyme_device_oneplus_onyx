.class Lcom/meizu/media/camera/CameraImpl$8;
.super Lcom/oneplus/base/Handle;
.source "CameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraImpl;->capture(II)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 857
    iput-object p1, p0, Lcom/meizu/media/camera/CameraImpl$8;->this$0:Lcom/meizu/media/camera/CameraImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 861
    iget-object v0, p0, Lcom/meizu/media/camera/CameraImpl$8;->this$0:Lcom/meizu/media/camera/CameraImpl;

    const/4 v1, 0x1

    # invokes: Lcom/meizu/media/camera/CameraImpl;->stopCaptureInternal(Z)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/CameraImpl;->access$1400(Lcom/meizu/media/camera/CameraImpl;Z)V

    .line 862
    return-void
.end method
