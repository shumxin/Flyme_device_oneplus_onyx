.class public Lcom/meizu/media/camera/CameraEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "CameraEventArgs.java"


# instance fields
.field private final m_Camera:Lcom/meizu/media/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/meizu/media/camera/CameraEventArgs;->m_Camera:Lcom/meizu/media/camera/Camera;

    .line 21
    return-void
.end method


# virtual methods
.method public final getCamera()Lcom/meizu/media/camera/Camera;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/media/camera/CameraEventArgs;->m_Camera:Lcom/meizu/media/camera/Camera;

    return-object v0
.end method
