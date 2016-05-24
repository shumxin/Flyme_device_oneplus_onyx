.class Lcom/meizu/media/camera/CameraThread$35;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraThread;->stopVideoCapture(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;

.field final synthetic val$flags:I

.field final synthetic val$handle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

.field final synthetic val$reason:Lcom/meizu/media/camera/CaptureCompleteReason;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V
    .locals 0

    .prologue
    .line 3419
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$35;->this$0:Lcom/meizu/media/camera/CameraThread;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$35;->val$handle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    iput-object p3, p0, Lcom/meizu/media/camera/CameraThread$35;->val$reason:Lcom/meizu/media/camera/CaptureCompleteReason;

    iput p4, p0, Lcom/meizu/media/camera/CameraThread$35;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$35;->this$0:Lcom/meizu/media/camera/CameraThread;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread$35;->val$handle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread$35;->val$reason:Lcom/meizu/media/camera/CaptureCompleteReason;

    iget v3, p0, Lcom/meizu/media/camera/CameraThread$35;->val$flags:I

    # invokes: Lcom/meizu/media/camera/CameraThread;->stopVideoCaptureInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/meizu/media/camera/CameraThread;->access$3800(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;I)V

    .line 3424
    return-void
.end method
