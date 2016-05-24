.class public final Lcom/meizu/media/camera/SmileCaptureControllerBuilder;
.super Lcom/meizu/media/camera/UIComponentBuilder;
.source "SmileCaptureControllerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/meizu/media/camera/SmileCaptureControllerImpl;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/UIComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected create(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
