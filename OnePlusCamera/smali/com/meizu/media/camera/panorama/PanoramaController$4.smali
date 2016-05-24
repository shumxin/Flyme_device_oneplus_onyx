.class Lcom/meizu/media/camera/panorama/PanoramaController$4;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/meizu/media/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/panorama/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/panorama/PanoramaController;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/panorama/PanoramaController;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaController$4;->this$0:Lcom/meizu/media/camera/panorama/PanoramaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapAvailable(Lcom/meizu/media/camera/media/YuvToBitmapWorker;)V
    .locals 1
    .param p1, "worker"    # Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaController$4;->this$0:Lcom/meizu/media/camera/panorama/PanoramaController;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaController;->onPreviewFrameBitmapAvailable()V
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaController;->access$500(Lcom/meizu/media/camera/panorama/PanoramaController;)V

    .line 173
    return-void
.end method
