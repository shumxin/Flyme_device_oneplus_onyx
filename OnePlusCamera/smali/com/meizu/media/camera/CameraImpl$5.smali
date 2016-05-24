.class Lcom/meizu/media/camera/CameraImpl$5;
.super Ljava/lang/Object;
.source "CameraImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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
    .line 228
    iput-object p1, p0, Lcom/meizu/media/camera/CameraImpl$5;->this$0:Lcom/meizu/media/camera/CameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/meizu/media/camera/CameraImpl$5;->this$0:Lcom/meizu/media/camera/CameraImpl;

    # invokes: Lcom/meizu/media/camera/CameraImpl;->onPreviewFrameReceived()V
    invoke-static {v0}, Lcom/meizu/media/camera/CameraImpl;->access$1100(Lcom/meizu/media/camera/CameraImpl;)V

    .line 233
    return-void
.end method
