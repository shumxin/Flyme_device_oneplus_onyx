.class final Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;
.super Lcom/meizu/media/camera/CaptureHandle;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCaptureHandle"
.end annotation


# instance fields
.field public camcorderProfile:Landroid/media/CamcorderProfile;

.field public captureHandler:Lcom/meizu/media/camera/VideoCaptureHandler;

.field public final params:Lcom/meizu/media/camera/CameraThread$VideoParams;

.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoParams;)V
    .locals 1
    .param p2, "params"    # Lcom/meizu/media/camera/CameraThread$VideoParams;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;->this$0:Lcom/meizu/media/camera/CameraThread;

    .line 579
    sget-object v0, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CaptureHandle;-><init>(Lcom/meizu/media/camera/media/MediaType;)V

    .line 580
    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;->params:Lcom/meizu/media/camera/CameraThread$VideoParams;

    .line 581
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;->closeDirectly()V

    .line 586
    return-void
.end method

.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 591
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;->this$0:Lcom/meizu/media/camera/CameraThread;

    sget-object v1, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    # invokes: Lcom/meizu/media/camera/CameraThread;->stopVideoCapture(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V
    invoke-static {v0, p0, v1, p1}, Lcom/meizu/media/camera/CameraThread;->access$1400(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    .line 592
    return-void
.end method
