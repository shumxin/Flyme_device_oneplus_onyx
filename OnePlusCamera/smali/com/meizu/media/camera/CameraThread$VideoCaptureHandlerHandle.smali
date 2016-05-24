.class final Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCaptureHandlerHandle"
.end annotation


# instance fields
.field public final captureHandler:Lcom/meizu/media/camera/VideoCaptureHandler;

.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/VideoCaptureHandler;)V
    .locals 1
    .param p2, "handler"    # Lcom/meizu/media/camera/VideoCaptureHandler;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;->this$0:Lcom/meizu/media/camera/CameraThread;

    .line 522
    const-string v0, "VideoCaptureHandler"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 523
    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;->captureHandler:Lcom/meizu/media/camera/VideoCaptureHandler;

    .line 524
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 529
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;->this$0:Lcom/meizu/media/camera/CameraThread;

    # invokes: Lcom/meizu/media/camera/CameraThread;->removeVideoCaptureHandler(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;)V
    invoke-static {v0, p0}, Lcom/meizu/media/camera/CameraThread;->access$1200(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandlerHandle;)V

    .line 530
    return-void
.end method
