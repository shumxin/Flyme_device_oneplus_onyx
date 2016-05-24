.class public Lcom/meizu/media/camera/ui/CameraSwitchAnimationBuilder;
.super Lcom/meizu/media/camera/UIComponentBuilder;
.source "CameraSwitchAnimationBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/meizu/media/camera/ui/CameraSwitchAnimationImpl;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/UIComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected create(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 18
    new-instance v0, Lcom/meizu/media/camera/ui/CameraSwitchAnimationImpl;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/ui/CameraSwitchAnimationImpl;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    return-object v0
.end method
