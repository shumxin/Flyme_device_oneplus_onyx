.class public abstract Lcom/meizu/media/camera/CameraComponent;
.super Lcom/meizu/media/camera/CameraThreadComponent;
.source "CameraComponent.java"


# instance fields
.field private final m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

.field private final m_IsCameraThreadComponent:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "activity"    # Lcom/meizu/media/camera/CameraActivity;
    .param p3, "hasHandler"    # Z

    .prologue
    .line 25
    invoke-virtual {p2}, Lcom/meizu/media/camera/CameraActivity;->getCameraThread()Lcom/meizu/media/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/meizu/media/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Lcom/meizu/media/camera/CameraThread;Z)V

    .line 26
    iput-object p2, p0, Lcom/meizu/media/camera/CameraComponent;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;ZZ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "activity"    # Lcom/meizu/media/camera/CameraActivity;
    .param p3, "hasHandler"    # Z
    .param p4, "hasAsyncHandler"    # Z

    .prologue
    .line 40
    invoke-virtual {p2}, Lcom/meizu/media/camera/CameraActivity;->getCameraThread()Lcom/meizu/media/camera/CameraThread;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/media/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Lcom/meizu/media/camera/CameraThread;ZZ)V

    .line 41
    iput-object p2, p0, Lcom/meizu/media/camera/CameraComponent;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraThread;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraThread"    # Lcom/meizu/media/camera/CameraThread;
    .param p3, "hasHandler"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraThread;Z)V

    .line 55
    invoke-virtual {p2}, Lcom/meizu/media/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/CameraActivity;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraThread;ZZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraThread"    # Lcom/meizu/media/camera/CameraThread;
    .param p3, "hasHandler"    # Z
    .param p4, "hasAsyncHandler"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/media/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraThread;ZZ)V

    .line 70
    invoke-virtual {p2}, Lcom/meizu/media/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/CameraActivity;

    iput-object v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    .line 72
    return-void
.end method


# virtual methods
.method protected getCamera()Lcom/meizu/media/camera/Camera;
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-super {p0}, Lcom/meizu/media/camera/CameraThreadComponent;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    goto :goto_0
.end method

.method public final getCameraActivity()Lcom/meizu/media/camera/CameraActivity;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    return-object v0
.end method

.method protected getMediaType()Lcom/meizu/media/camera/media/MediaType;
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-super {p0}, Lcom/meizu/media/camera/CameraThreadComponent;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/MediaType;

    goto :goto_0
.end method

.method protected getScreenSize()Lcom/oneplus/base/ScreenSize;
    .locals 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-super {p0}, Lcom/meizu/media/camera/CameraThreadComponent;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    goto :goto_0
.end method

.method protected final getSettings()Lcom/oneplus/base/Settings;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/meizu/media/camera/CameraComponent;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    return-object v0
.end method
