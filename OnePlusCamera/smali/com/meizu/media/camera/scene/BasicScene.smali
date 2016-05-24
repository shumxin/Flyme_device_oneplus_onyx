.class public abstract Lcom/meizu/media/camera/scene/BasicScene;
.super Lcom/meizu/media/camera/BasicMode;
.source "BasicScene.java"

# interfaces
.implements Lcom/meizu/media/camera/scene/Scene;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/BasicMode",
        "<",
        "Lcom/meizu/media/camera/scene/Scene;",
        ">;",
        "Lcom/meizu/media/camera/scene/Scene;"
    }
.end annotation


# instance fields
.field private final m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaTypeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/meizu/media/camera/media/MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/BasicMode;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/meizu/media/camera/scene/BasicScene$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/scene/BasicScene$1;-><init>(Lcom/meizu/media/camera/scene/BasicScene;)V

    iput-object v0, p0, Lcom/meizu/media/camera/scene/BasicScene;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 26
    new-instance v0, Lcom/meizu/media/camera/scene/BasicScene$2;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/scene/BasicScene$2;-><init>(Lcom/meizu/media/camera/scene/BasicScene;)V

    iput-object v0, p0, Lcom/meizu/media/camera/scene/BasicScene;->m_MediaTypeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 44
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/scene/BasicScene;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 45
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/scene/BasicScene;->m_MediaTypeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 46
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/scene/BasicScene;->onCameraChanged(Lcom/meizu/media/camera/Camera;)V

    .line 47
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/scene/BasicScene;->onMediaTypeChanged(Lcom/meizu/media/camera/media/MediaType;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onCameraChanged(Lcom/meizu/media/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 56
    return-void
.end method

.method protected onMediaTypeChanged(Lcom/meizu/media/camera/media/MediaType;)V
    .locals 0
    .param p1, "mediaType"    # Lcom/meizu/media/camera/media/MediaType;

    .prologue
    .line 64
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/meizu/media/camera/scene/BasicScene;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 72
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/scene/BasicScene;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 73
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/scene/BasicScene;->m_MediaTypeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 74
    invoke-super {p0}, Lcom/meizu/media/camera/BasicMode;->onRelease()V

    .line 75
    return-void
.end method
