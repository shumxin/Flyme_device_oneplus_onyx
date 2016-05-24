.class Lcom/meizu/media/camera/CameraActivity$29;
.super Lcom/oneplus/base/OrientationManager$Callback;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraActivity;->startOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 4956
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$29;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {p0}, Lcom/oneplus/base/OrientationManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 4960
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$29;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/meizu/media/camera/CameraActivity;->onDeviceOrientationChanged(I)V

    .line 4961
    invoke-super {p0, p1}, Lcom/oneplus/base/OrientationManager$Callback;->onOrientationChanged(I)V

    .line 4962
    return-void
.end method

.method public onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 4967
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$29;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/media/camera/CameraActivity;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 4968
    return-void
.end method

.method public onSystemOrientationSettingsChanged(Z)V
    .locals 1
    .param p1, "isSystemOrientationEnabled"    # Z

    .prologue
    .line 4973
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$29;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # invokes: Lcom/meizu/media/camera/CameraActivity;->onSystemOrientationSettingsChanged(Z)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/CameraActivity;->access$3700(Lcom/meizu/media/camera/CameraActivity;Z)V

    .line 4974
    return-void
.end method
