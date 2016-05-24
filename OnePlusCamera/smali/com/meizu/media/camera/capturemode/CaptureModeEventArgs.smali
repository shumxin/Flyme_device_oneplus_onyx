.class public Lcom/meizu/media/camera/capturemode/CaptureModeEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "CaptureModeEventArgs.java"


# instance fields
.field private final m_CaptureMode:Lcom/meizu/media/camera/capturemode/CaptureMode;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/capturemode/CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/meizu/media/camera/capturemode/CaptureMode;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/meizu/media/camera/capturemode/CaptureModeEventArgs;->m_CaptureMode:Lcom/meizu/media/camera/capturemode/CaptureMode;

    .line 21
    return-void
.end method


# virtual methods
.method public getCaptureMode()Lcom/meizu/media/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/CaptureModeEventArgs;->m_CaptureMode:Lcom/meizu/media/camera/capturemode/CaptureMode;

    return-object v0
.end method
