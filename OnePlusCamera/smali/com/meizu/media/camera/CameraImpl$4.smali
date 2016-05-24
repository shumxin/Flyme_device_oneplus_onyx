.class Lcom/meizu/media/camera/CameraImpl$4;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraImpl;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/meizu/media/camera/CameraImpl$4;->this$0:Lcom/meizu/media/camera/CameraImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/meizu/media/camera/CameraImpl$4;->this$0:Lcom/meizu/media/camera/CameraImpl;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/CameraImpl;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureFailure;)V
    invoke-static {v0, p1, p2, p3, v1}, Lcom/meizu/media/camera/CameraImpl;->access$600(Lcom/meizu/media/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureFailure;)V

    .line 193
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 197
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    .line 198
    .local v0, "index":J
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v2

    .line 199
    .local v2, "reason":I
    iget-object v3, p0, Lcom/meizu/media/camera/CameraImpl$4;->this$0:Lcom/meizu/media/camera/CameraImpl;

    # getter for: Lcom/meizu/media/camera/CameraImpl;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/meizu/media/camera/CameraImpl;->access$700(Lcom/meizu/media/camera/CameraImpl;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCaptureFailed() - Frame index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/media/camera/CameraImpl$4;->this$0:Lcom/meizu/media/camera/CameraImpl;

    # getter for: Lcom/meizu/media/camera/CameraImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/media/camera/CameraImpl;->access$900(Lcom/meizu/media/camera/CameraImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCaptureProgressed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .prologue
    .line 215
    iget-object v0, p0, Lcom/meizu/media/camera/CameraImpl$4;->this$0:Lcom/meizu/media/camera/CameraImpl;

    # invokes: Lcom/meizu/media/camera/CameraImpl;->onCaptureSequenceCompleted()V
    invoke-static {v0}, Lcom/meizu/media/camera/CameraImpl;->access$1000(Lcom/meizu/media/camera/CameraImpl;)V

    .line 216
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    .line 205
    iget-object v1, p0, Lcom/meizu/media/camera/CameraImpl$4;->this$0:Lcom/meizu/media/camera/CameraImpl;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    # invokes: Lcom/meizu/media/camera/CameraImpl;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    invoke-static/range {v1 .. v7}, Lcom/meizu/media/camera/CameraImpl;->access$800(Lcom/meizu/media/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 206
    return-void
.end method
