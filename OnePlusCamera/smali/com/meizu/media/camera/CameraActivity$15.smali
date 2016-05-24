.class Lcom/meizu/media/camera/CameraActivity$15;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraActivity;->notifyCameraThreadRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;

.field final synthetic val$newRotation:Lcom/oneplus/base/Rotation;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/Rotation;)V
    .locals 0

    .prologue
    .line 2209
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$15;->this$0:Lcom/meizu/media/camera/CameraActivity;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraActivity$15;->val$newRotation:Lcom/oneplus/base/Rotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$15;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->m_CameraThread:Lcom/meizu/media/camera/CameraThread;
    invoke-static {v0}, Lcom/meizu/media/camera/CameraActivity;->access$1500(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity$15;->val$newRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2214
    return-void
.end method
