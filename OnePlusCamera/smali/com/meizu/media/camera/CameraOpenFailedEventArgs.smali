.class public Lcom/meizu/media/camera/CameraOpenFailedEventArgs;
.super Lcom/meizu/media/camera/CameraEventArgs;
.source "CameraOpenFailedEventArgs.java"


# static fields
.field public static final DISCONNECTED:I = -0x2

.field public static final UNKNOWN_ERROR:I = -0x4


# instance fields
.field private m_ErrorCode:I


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/Camera;I)V
    .locals 0
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "errorCode"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/CameraEventArgs;-><init>(Lcom/meizu/media/camera/Camera;)V

    .line 20
    iput p2, p0, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;->m_ErrorCode:I

    .line 21
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/meizu/media/camera/CameraOpenFailedEventArgs;->m_ErrorCode:I

    return v0
.end method
