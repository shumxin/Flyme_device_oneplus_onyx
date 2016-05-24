.class Lcom/meizu/media/camera/CameraImpl$3;
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
    .line 162
    iput-object p1, p0, Lcom/meizu/media/camera/CameraImpl$3;->this$0:Lcom/meizu/media/camera/CameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 169
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    .local v1, "image":Landroid/media/Image;
    :goto_0
    if-eqz v1, :cond_0

    .line 178
    :try_start_1
    iget-object v2, p0, Lcom/meizu/media/camera/CameraImpl$3;->this$0:Lcom/meizu/media/camera/CameraImpl;

    # invokes: Lcom/meizu/media/camera/CameraImpl;->onPictureReceived(Landroid/media/Image;)V
    invoke-static {v2, v1}, Lcom/meizu/media/camera/CameraImpl;->access$500(Lcom/meizu/media/camera/CameraImpl;Landroid/media/Image;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_0
    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 186
    :cond_1
    return-void

    .line 171
    .end local v1    # "image":Landroid/media/Image;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .restart local v1    # "image":Landroid/media/Image;
    goto :goto_0

    .line 183
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_2
    throw v2
.end method
