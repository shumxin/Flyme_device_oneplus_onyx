.class Lcom/meizu/media/camera/CameraThread$31;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraThread;->startCameraPreview(Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;

.field final synthetic val$camera:Lcom/meizu/media/camera/Camera;

.field final synthetic val$flags:I

.field final synthetic val$previewSize:Landroid/util/Size;

.field final synthetic val$receiver:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3070
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$31;->this$0:Lcom/meizu/media/camera/CameraThread;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$31;->val$camera:Lcom/meizu/media/camera/Camera;

    iput-object p3, p0, Lcom/meizu/media/camera/CameraThread$31;->val$previewSize:Landroid/util/Size;

    iput-object p4, p0, Lcom/meizu/media/camera/CameraThread$31;->val$receiver:Ljava/lang/Object;

    iput p5, p0, Lcom/meizu/media/camera/CameraThread$31;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$31;->this$0:Lcom/meizu/media/camera/CameraThread;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread$31;->val$camera:Lcom/meizu/media/camera/Camera;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraThread$31;->val$previewSize:Landroid/util/Size;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraThread$31;->val$receiver:Ljava/lang/Object;

    iget v4, p0, Lcom/meizu/media/camera/CameraThread$31;->val$flags:I

    # invokes: Lcom/meizu/media/camera/CameraThread;->startCameraPreviewInternal(Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/meizu/media/camera/CameraThread;->access$3400(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z

    .line 3075
    return-void
.end method
