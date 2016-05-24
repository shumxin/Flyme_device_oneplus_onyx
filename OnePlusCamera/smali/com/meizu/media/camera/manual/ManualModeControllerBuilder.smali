.class public Lcom/meizu/media/camera/manual/ManualModeControllerBuilder;
.super Lcom/meizu/media/camera/CameraThreadComponentBuilder;
.source "ManualModeControllerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/meizu/media/camera/manual/ManualModeController;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CameraThreadComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected create(Lcom/meizu/media/camera/CameraThread;)Lcom/meizu/media/camera/CameraThreadComponent;
    .locals 1
    .param p1, "cameraThread"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    .line 17
    new-instance v0, Lcom/meizu/media/camera/manual/ManualModeController;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/manual/ManualModeController;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    return-object v0
.end method
