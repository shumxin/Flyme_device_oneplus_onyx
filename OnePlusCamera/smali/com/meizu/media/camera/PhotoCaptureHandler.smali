.class public interface abstract Lcom/meizu/media/camera/PhotoCaptureHandler;
.super Ljava/lang/Object;
.source "PhotoCaptureHandler.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final EVENT_SHUTTER:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "Shutter"

    const-class v2, Lcom/meizu/media/camera/CaptureEventArgs;

    const-class v3, Lcom/meizu/media/camera/PhotoCaptureHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/PhotoCaptureHandler;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract capture(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/CaptureHandle;I)Z
.end method

.method public abstract stopCapture(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CaptureCompleteReason;)Z
.end method
