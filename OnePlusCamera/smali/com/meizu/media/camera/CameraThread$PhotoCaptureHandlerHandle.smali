.class final Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoCaptureHandlerHandle"
.end annotation


# instance fields
.field public final captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/PhotoCaptureHandler;)V
    .locals 1
    .param p2, "handler"    # Lcom/meizu/media/camera/PhotoCaptureHandler;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;->this$0:Lcom/meizu/media/camera/CameraThread;

    .line 506
    const-string v0, "PhotoCaptureHandler"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 507
    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

    .line 508
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 513
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;->this$0:Lcom/meizu/media/camera/CameraThread;

    # invokes: Lcom/meizu/media/camera/CameraThread;->removePhotoCaptureHandler(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;)V
    invoke-static {v0, p0}, Lcom/meizu/media/camera/CameraThread;->access$1100(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandlerHandle;)V

    .line 514
    return-void
.end method
