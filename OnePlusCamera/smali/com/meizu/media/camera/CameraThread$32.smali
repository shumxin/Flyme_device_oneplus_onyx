.class Lcom/meizu/media/camera/CameraThread$32;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraThread;->stopCameraPreview(Lcom/meizu/media/camera/Camera;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;

.field final synthetic val$camera:Lcom/meizu/media/camera/Camera;

.field final synthetic val$flags:I

.field final synthetic val$isSync:Z

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;Z[ZI)V
    .locals 0

    .prologue
    .line 3216
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$32;->this$0:Lcom/meizu/media/camera/CameraThread;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$32;->val$camera:Lcom/meizu/media/camera/Camera;

    iput-boolean p3, p0, Lcom/meizu/media/camera/CameraThread$32;->val$isSync:Z

    iput-object p4, p0, Lcom/meizu/media/camera/CameraThread$32;->val$result:[Z

    iput p5, p0, Lcom/meizu/media/camera/CameraThread$32;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3220
    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread$32;->this$0:Lcom/meizu/media/camera/CameraThread;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread$32;->val$camera:Lcom/meizu/media/camera/Camera;

    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraThread$32;->val$isSync:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$32;->val$result:[Z

    :goto_0
    iget v3, p0, Lcom/meizu/media/camera/CameraThread$32;->val$flags:I

    # invokes: Lcom/meizu/media/camera/CameraThread;->stopCameraPreviewInternal(Lcom/meizu/media/camera/Camera;[ZI)Z
    invoke-static {v1, v2, v0, v3}, Lcom/meizu/media/camera/CameraThread;->access$3500(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;[ZI)Z

    .line 3221
    return-void

    .line 3220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
