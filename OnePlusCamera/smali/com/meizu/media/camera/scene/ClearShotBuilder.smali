.class public final Lcom/meizu/media/camera/scene/ClearShotBuilder;
.super Ljava/lang/Object;
.source "ClearShotBuilder.java"

# interfaces
.implements Lcom/meizu/media/camera/scene/SceneBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createScene(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/scene/Scene;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 14
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/meizu/media/camera/scene/ClearShot;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/scene/ClearShot;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    .line 17
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
