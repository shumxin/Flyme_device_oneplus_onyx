.class Lcom/meizu/media/camera/LegacyCameraImpl$7;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/LegacyCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/LegacyCameraImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl$7;->this$0:Lcom/meizu/media/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl$7;->this$0:Lcom/meizu/media/camera/LegacyCameraImpl;

    # invokes: Lcom/meizu/media/camera/LegacyCameraImpl;->onRawReceived([BLandroid/hardware/Camera;)V
    invoke-static {v0, p1, p2}, Lcom/meizu/media/camera/LegacyCameraImpl;->access$700(Lcom/meizu/media/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V

    .line 182
    return-void
.end method
