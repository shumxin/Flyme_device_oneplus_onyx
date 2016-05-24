.class Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$4;
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
        "Lcom/meizu/media/camera/scene/Scene;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$4;->this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/scene/Scene;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/scene/Scene;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/scene/Scene;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/scene/Scene;>;"
    iget-object v1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$4;->this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/scene/Scene;

    # invokes: Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onSceneChanged(Lcom/meizu/media/camera/scene/Scene;)V
    invoke-static {v1, v0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->access$300(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Lcom/meizu/media/camera/scene/Scene;)V

    .line 89
    return-void
.end method
