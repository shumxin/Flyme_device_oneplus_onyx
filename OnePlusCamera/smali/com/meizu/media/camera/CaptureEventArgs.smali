.class public Lcom/meizu/media/camera/CaptureEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "CaptureEventArgs.java"


# instance fields
.field private final m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

.field private final m_FrameIndex:I


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CaptureHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/meizu/media/camera/CaptureHandle;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/media/camera/CaptureEventArgs;-><init>(Lcom/meizu/media/camera/CaptureHandle;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/meizu/media/camera/CaptureHandle;I)V
    .locals 0
    .param p1, "handle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p2, "frameIndex"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/meizu/media/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    .line 34
    iput p2, p0, Lcom/meizu/media/camera/CaptureEventArgs;->m_FrameIndex:I

    .line 35
    return-void
.end method


# virtual methods
.method public final getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/media/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    return-object v0
.end method

.method public final getFrameIndex()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/media/camera/CaptureEventArgs;->m_FrameIndex:I

    return v0
.end method

.method public final getMediaType()Lcom/meizu/media/camera/media/MediaType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CaptureHandle;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBurstPhotoCapture()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/CaptureEventArgs;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CaptureHandle;->isBurstPhotoCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
