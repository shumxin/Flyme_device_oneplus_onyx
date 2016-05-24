.class public final Lcom/meizu/media/camera/panorama/PanoramaControllerBuilder;
.super Lcom/meizu/media/camera/CameraThreadComponentBuilder;
.source "PanoramaControllerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/meizu/media/camera/panorama/PanoramaController;

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraThreadComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected create(Lcom/meizu/media/camera/CameraThread;)Lcom/meizu/media/camera/CameraComponent;
    .locals 1
    .param p1, "cameraThread"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    .line 26
    new-instance v0, Lcom/meizu/media/camera/panorama/PanoramaController;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/panorama/PanoramaController;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    return-object v0
.end method

.method protected bridge synthetic create(Lcom/meizu/media/camera/CameraThread;)Lcom/meizu/media/camera/CameraThreadComponent;
    .locals 1
    .param p1, "x0"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/panorama/PanoramaControllerBuilder;->create(Lcom/meizu/media/camera/CameraThread;)Lcom/meizu/media/camera/CameraComponent;

    move-result-object v0

    return-object v0
.end method
