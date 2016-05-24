.class public Lcom/meizu/media/camera/capturemode/VideoCaptureModeBuilder;
.super Ljava/lang/Object;
.source "VideoCaptureModeBuilder.java"

# interfaces
.implements Lcom/meizu/media/camera/capturemode/CaptureModeBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCaptureMode(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/capturemode/CaptureMode;
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity;->getStartMode()Lcom/meizu/media/camera/StartMode;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/StartMode;->SERVICE_VIDEO:Lcom/meizu/media/camera/StartMode;

    if-ne v0, v1, :cond_1

    .line 17
    :cond_0
    new-instance v0, Lcom/meizu/media/camera/capturemode/VideoCaptureMode;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/capturemode/VideoCaptureMode;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    .line 19
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
