.class public final Lcom/meizu/media/camera/ui/TouchFocusExposureUIBuilder;
.super Lcom/meizu/media/camera/UIComponentBuilder;
.source "TouchFocusExposureUIBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/UIComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected create(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 25
    new-instance v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/ui/TouchFocusExposureUI;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    return-object v0
.end method
