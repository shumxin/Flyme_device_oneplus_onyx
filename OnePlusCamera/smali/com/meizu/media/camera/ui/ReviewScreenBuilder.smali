.class public Lcom/meizu/media/camera/ui/ReviewScreenBuilder;
.super Lcom/meizu/media/camera/UIComponentBuilder;
.source "ReviewScreenBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/meizu/media/camera/ui/ReviewScreenImpl;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/UIComponentBuilder;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected create(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/meizu/media/camera/ui/ReviewScreenImpl;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/ui/ReviewScreenImpl;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    .line 20
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
