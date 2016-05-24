.class Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$2;
.super Ljava/lang/Object;
.source "PhotoCaptureMode.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


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
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/meizu/media/camera/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$2;->this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/Camera;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/Camera;>;"
    iget-object v2, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$2;->this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/Camera;

    # invokes: Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onCameraChanged(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;)V
    invoke-static {v2, v0, v1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->access$100(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;)V

    .line 73
    return-void
.end method
