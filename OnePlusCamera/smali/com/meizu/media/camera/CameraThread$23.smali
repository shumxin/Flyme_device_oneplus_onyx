.class Lcom/meizu/media/camera/CameraThread$23;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraThread;->closeCamera(Lcom/meizu/media/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;

.field final synthetic val$camera:Lcom/meizu/media/camera/Camera;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$23;->this$0:Lcom/meizu/media/camera/CameraThread;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$23;->val$camera:Lcom/meizu/media/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$23;->this$0:Lcom/meizu/media/camera/CameraThread;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread$23;->val$camera:Lcom/meizu/media/camera/Camera;

    # invokes: Lcom/meizu/media/camera/CameraThread;->closeCameraInternal(Lcom/meizu/media/camera/Camera;)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/CameraThread;->access$2600(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;)V

    .line 1402
    return-void
.end method
