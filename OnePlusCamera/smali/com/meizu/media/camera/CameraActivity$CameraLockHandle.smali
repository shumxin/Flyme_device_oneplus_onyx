.class final Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraLockHandle"
.end annotation


# instance fields
.field public final lensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/Camera$LensFacing;)V
    .locals 1
    .param p2, "lensFacing"    # Lcom/meizu/media/camera/Camera$LensFacing;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;->this$0:Lcom/meizu/media/camera/CameraActivity;

    .line 657
    const-string v0, "CameraLock"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 658
    iput-object p2, p0, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

    .line 659
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # invokes: Lcom/meizu/media/camera/CameraActivity;->unlockCamera(Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;)V
    invoke-static {v0, p0}, Lcom/meizu/media/camera/CameraActivity;->access$800(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$CameraLockHandle;)V

    .line 665
    return-void
.end method
