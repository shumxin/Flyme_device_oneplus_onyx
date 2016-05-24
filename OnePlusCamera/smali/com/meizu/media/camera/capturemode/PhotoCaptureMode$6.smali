.class Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$6;
.super Ljava/lang/Object;
.source "PhotoCaptureMode.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/meizu/media/camera/scene/SceneEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$6;->this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 102
    check-cast p3, Lcom/meizu/media/camera/scene/SceneEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$6;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/scene/SceneEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/scene/SceneEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/meizu/media/camera/scene/SceneEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/scene/SceneEventArgs;",
            ">;",
            "Lcom/meizu/media/camera/scene/SceneEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/scene/SceneEventArgs;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$6;->this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;

    invoke-virtual {p3}, Lcom/meizu/media/camera/scene/SceneEventArgs;->getScene()Lcom/meizu/media/camera/scene/Scene;

    move-result-object v1

    # invokes: Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onSceneAdded(Lcom/meizu/media/camera/scene/Scene;)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->access$500(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Lcom/meizu/media/camera/scene/Scene;)V

    .line 107
    return-void
.end method
