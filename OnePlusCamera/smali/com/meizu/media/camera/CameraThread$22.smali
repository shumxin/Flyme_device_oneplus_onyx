.class Lcom/meizu/media/camera/CameraThread$22;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraThread;->captureVideo(Lcom/meizu/media/camera/CameraThread$VideoParams;)Lcom/meizu/media/camera/CaptureHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;

.field final synthetic val$handle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$22;->this$0:Lcom/meizu/media/camera/CameraThread;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$22;->val$handle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$22;->this$0:Lcom/meizu/media/camera/CameraThread;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread$22;->val$handle:Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;

    const/4 v2, 0x0

    # invokes: Lcom/meizu/media/camera/CameraThread;->captureVideoInternal(Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Z)Z
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->access$2500(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$VideoCaptureHandle;Z)Z

    .line 1119
    return-void
.end method
