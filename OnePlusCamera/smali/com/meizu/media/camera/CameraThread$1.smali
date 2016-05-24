.class Lcom/meizu/media/camera/CameraThread$1;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraThread;
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
    .line 310
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$1;->this$0:Lcom/meizu/media/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$1;->this$0:Lcom/meizu/media/camera/CameraThread;

    # invokes: Lcom/meizu/media/camera/CameraThread;->closeCamerasInternal()V
    invoke-static {v0}, Lcom/meizu/media/camera/CameraThread;->access$000(Lcom/meizu/media/camera/CameraThread;)V

    .line 315
    return-void
.end method
