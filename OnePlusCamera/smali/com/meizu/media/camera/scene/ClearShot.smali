.class final Lcom/meizu/media/camera/scene/ClearShot;
.super Lcom/meizu/media/camera/scene/PhotoScene;
.source "ClearShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/scene/ClearShot$1;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 17
    const-string v0, "STEADYPHOTO"

    const/16 v1, 0xb

    const/16 v2, 0x17

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/meizu/media/camera/scene/PhotoScene;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;II)V

    .line 22
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/meizu/media/camera/scene/ClearShot;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/meizu/media/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/meizu/media/camera/scene/Scene$ImageUsage;

    .prologue
    .line 37
    sget-object v0, Lcom/meizu/media/camera/scene/ClearShot$1;->$SwitchMap$com$oneplus$camera$scene$Scene$ImageUsage:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/scene/Scene$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/scene/ClearShot;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCameraChanged(Lcom/meizu/media/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    sget-object v0, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/meizu/media/camera/scene/ClearShot;->disable()V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcom/meizu/media/camera/scene/PhotoScene;->onCameraChanged(Lcom/meizu/media/camera/Camera;)V

    goto :goto_0
.end method

.method protected onMediaTypeChanged(Lcom/meizu/media/camera/media/MediaType;)V
    .locals 3
    .param p1, "mediaType"    # Lcom/meizu/media/camera/media/MediaType;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/meizu/media/camera/scene/ClearShot;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 62
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/meizu/media/camera/scene/ClearShot;->disable()V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/meizu/media/camera/scene/PhotoScene;->onMediaTypeChanged(Lcom/meizu/media/camera/media/MediaType;)V

    goto :goto_0
.end method
