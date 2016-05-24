.class Lcom/meizu/media/camera/CameraImpl$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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
    .line 111
    iput-object p1, p0, Lcom/meizu/media/camera/CameraImpl$2;->this$0:Lcom/meizu/media/camera/CameraImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/media/camera/CameraImpl$2;->this$0:Lcom/meizu/media/camera/CameraImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/meizu/media/camera/CameraImpl;->onDeviceError(Landroid/hardware/camera2/CameraDevice;IZ)V
    invoke-static {v0, p1, v1, v2}, Lcom/meizu/media/camera/CameraImpl;->access$400(Lcom/meizu/media/camera/CameraImpl;Landroid/hardware/camera2/CameraDevice;IZ)V

    .line 128
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/meizu/media/camera/CameraImpl$2;->this$0:Lcom/meizu/media/camera/CameraImpl;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/CameraImpl;->onDeviceError(Landroid/hardware/camera2/CameraDevice;IZ)V
    invoke-static {v0, p1, p2, v1}, Lcom/meizu/media/camera/CameraImpl;->access$400(Lcom/meizu/media/camera/CameraImpl;Landroid/hardware/camera2/CameraDevice;IZ)V

    .line 122
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/media/camera/CameraImpl$2;->this$0:Lcom/meizu/media/camera/CameraImpl;

    # invokes: Lcom/meizu/media/camera/CameraImpl;->onDeviceOpened(Landroid/hardware/camera2/CameraDevice;)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/CameraImpl;->access$300(Lcom/meizu/media/camera/CameraImpl;Landroid/hardware/camera2/CameraDevice;)V

    .line 116
    return-void
.end method
