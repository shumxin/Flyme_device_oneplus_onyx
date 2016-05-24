.class public Lcom/meizu/media/camera/io/FileManagerBuilder;
.super Lcom/meizu/media/camera/CameraThreadComponentBuilder;
.source "FileManagerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/meizu/media/camera/io/FileManagerImpl;

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraThreadComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected create(Lcom/meizu/media/camera/CameraThread;)Lcom/meizu/media/camera/CameraThreadComponent;
    .locals 1
    .param p1, "cameraThread"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    .line 18
    new-instance v0, Lcom/meizu/media/camera/io/FileManagerImpl;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/io/FileManagerImpl;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    return-object v0
.end method
