.class Lcom/meizu/media/camera/CameraActivity$8;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraActivity;->captureVideo(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;

.field final synthetic val$handle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

.field final synthetic val$params:Lcom/meizu/media/camera/CameraThread$VideoParams;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraThread$VideoParams;Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 0

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$8;->this$0:Lcom/meizu/media/camera/CameraActivity;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraActivity$8;->val$params:Lcom/meizu/media/camera/CameraThread$VideoParams;

    iput-object p3, p0, Lcom/meizu/media/camera/CameraActivity$8;->val$handle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1251
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity$8;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/media/camera/CameraActivity;->access$1600(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "captureVideo() - Capture in camera thread"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity$8;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;
    invoke-static {v1}, Lcom/meizu/media/camera/CameraActivity;->access$1500(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraThread;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity$8;->val$params:Lcom/meizu/media/camera/CameraThread$VideoParams;

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraThread;->captureVideo(Lcom/meizu/media/camera/CameraThread$VideoParams;)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    .line 1253
    .local v0, "internalHandle":Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity$8;->this$0:Lcom/meizu/media/camera/CameraActivity;

    const/16 v2, -0x1f

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity$8;->val$handle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-static {v1, v2, v6, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1257
    :goto_0
    return-void

    .line 1256
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity$8;->this$0:Lcom/meizu/media/camera/CameraActivity;

    const/16 v2, -0x1e

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity$8;->val$handle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity$8;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;
    invoke-static {v4}, Lcom/meizu/media/camera/CameraActivity;->access$1500(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraThread;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/CameraThread;->PROP_VIDEO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v6, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
