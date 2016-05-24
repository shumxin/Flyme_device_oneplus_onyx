.class Lcom/meizu/media/camera/CameraActivity$7;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraActivity;->capturePhoto(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;

.field final synthetic val$handle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

.field final synthetic val$lockFocus:Z


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;ZLcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V
    .locals 0

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$7;->this$0:Lcom/meizu/media/camera/CameraActivity;

    iput-boolean p2, p0, Lcom/meizu/media/camera/CameraActivity$7;->val$lockFocus:Z

    iput-object p3, p0, Lcom/meizu/media/camera/CameraActivity$7;->val$handle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1142
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity$7;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/media/camera/CameraActivity;->access$1400(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "capturePhoto() - Capture in camera thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const/4 v0, 0x0

    .line 1144
    .local v0, "captureFlags":I
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity$7;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1145
    or-int/lit8 v0, v0, 0x4

    .line 1146
    :cond_0
    iget-boolean v2, p0, Lcom/meizu/media/camera/CameraActivity$7;->val$lockFocus:Z

    if-eqz v2, :cond_1

    .line 1147
    or-int/lit8 v0, v0, 0x10

    .line 1148
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity$7;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;
    invoke-static {v2}, Lcom/meizu/media/camera/CameraActivity;->access$1500(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraThread;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity$7;->val$handle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    iget v3, v3, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    invoke-virtual {v2, v3, v0}, Lcom/meizu/media/camera/CameraThread;->capturePhoto(II)Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    .line 1149
    .local v1, "internalHandle":Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1150
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity$7;->this$0:Lcom/meizu/media/camera/CameraActivity;

    const/16 v3, -0x15

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity$7;->val$handle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-static {v2, v3, v7, v7, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1153
    :goto_0
    return-void

    .line 1152
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity$7;->this$0:Lcom/meizu/media/camera/CameraActivity;

    const/16 v3, -0x14

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity$7;->val$handle:Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/meizu/media/camera/CameraActivity$7;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;
    invoke-static {v5}, Lcom/meizu/media/camera/CameraActivity;->access$1500(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraThread;

    move-result-object v5

    sget-object v6, Lcom/meizu/media/camera/CameraThread;->PROP_PHOTO_CAPTURE_COMPLETE_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/meizu/media/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v7, v7, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
