.class Lcom/meizu/media/camera/CameraThread$28;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraThread;->prepareMediaRecorder(Lcom/meizu/media/camera/Camera;Landroid/media/MediaRecorder;Lcom/meizu/media/camera/CameraThread$VideoParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 2640
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$28;->this$0:Lcom/meizu/media/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$28;->this$0:Lcom/meizu/media/camera/CameraThread;

    # invokes: Lcom/meizu/media/camera/CameraThread;->onMediaRecorderErrorReceived(Landroid/media/MediaRecorder;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/meizu/media/camera/CameraThread;->access$3100(Lcom/meizu/media/camera/CameraThread;Landroid/media/MediaRecorder;II)V

    .line 2645
    return-void
.end method
