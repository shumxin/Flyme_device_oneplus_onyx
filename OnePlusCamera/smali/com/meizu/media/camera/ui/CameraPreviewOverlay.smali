.class public interface abstract Lcom/meizu/media/camera/ui/CameraPreviewOverlay;
.super Ljava/lang/Object;
.source "CameraPreviewOverlay.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/ui/CameraPreviewOverlay$RenderingParams;,
        Lcom/meizu/media/camera/ui/CameraPreviewOverlay$Renderer;
    }
.end annotation


# virtual methods
.method public abstract addRenderer(Lcom/meizu/media/camera/ui/CameraPreviewOverlay$Renderer;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract invalidateCameraPreviewOverlay()V
.end method
