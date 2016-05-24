.class final Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;
.super Ljava/lang/Object;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraPreviewStopRequest"
.end annotation


# instance fields
.field public final camera:Lcom/meizu/media/camera/Camera;

.field public final flags:I

.field public final result:[Z


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/Camera;[ZI)V
    .locals 0
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "result"    # [Z
    .param p3, "flags"    # I

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/meizu/media/camera/Camera;

    .line 624
    iput p3, p0, Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;->flags:I

    .line 625
    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$CameraPreviewStopRequest;->result:[Z

    .line 626
    return-void
.end method
