.class public final Lcom/meizu/media/camera/ui/ViewfinderBuilder;
.super Lcom/meizu/media/camera/UIComponentBuilder;
.source "ViewfinderBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/meizu/media/camera/ui/ViewfinderImpl;

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/UIComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected create(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/CameraComponent;
    .locals 1
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 26
    new-instance v0, Lcom/meizu/media/camera/ui/ViewfinderImpl;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/ui/ViewfinderImpl;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    return-object v0
.end method
