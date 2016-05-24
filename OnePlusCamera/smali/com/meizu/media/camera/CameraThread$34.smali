.class Lcom/meizu/media/camera/CameraThread$34;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraThread;->stopPhotoCapture(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;

.field final synthetic val$handle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;)V
    .locals 0

    .prologue
    .line 3347
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$34;->this$0:Lcom/meizu/media/camera/CameraThread;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$34;->val$handle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3351
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$34;->this$0:Lcom/meizu/media/camera/CameraThread;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread$34;->val$handle:Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;

    sget-object v2, Lcom/meizu/media/camera/CaptureCompleteReason;->NORMAL:Lcom/meizu/media/camera/CaptureCompleteReason;

    # invokes: Lcom/meizu/media/camera/CameraThread;->stopPhotoCaptureInternal(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->access$3700(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)V

    .line 3352
    return-void
.end method
