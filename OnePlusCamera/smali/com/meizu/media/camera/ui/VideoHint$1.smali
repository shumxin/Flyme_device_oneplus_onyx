.class Lcom/meizu/media/camera/ui/VideoHint$1;
.super Ljava/lang/Object;
.source "VideoHint.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/VideoHint;->onInitialize()V
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
        "Lcom/meizu/media/camera/VideoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/VideoHint;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/VideoHint;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/meizu/media/camera/ui/VideoHint$1;->this$0:Lcom/meizu/media/camera/ui/VideoHint;

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
            "Lcom/meizu/media/camera/VideoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/VideoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/VideoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/VideoCaptureState;>;"
    iget-object v1, p0, Lcom/meizu/media/camera/ui/VideoHint$1;->this$0:Lcom/meizu/media/camera/ui/VideoHint;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    # setter for: Lcom/meizu/media/camera/ui/VideoHint;->m_VideoCaptureState:Lcom/meizu/media/camera/VideoCaptureState;
    invoke-static {v1, v0}, Lcom/meizu/media/camera/ui/VideoHint;->access$002(Lcom/meizu/media/camera/ui/VideoHint;Lcom/meizu/media/camera/VideoCaptureState;)Lcom/meizu/media/camera/VideoCaptureState;

    .line 84
    iget-object v0, p0, Lcom/meizu/media/camera/ui/VideoHint$1;->this$0:Lcom/meizu/media/camera/ui/VideoHint;

    # invokes: Lcom/meizu/media/camera/ui/VideoHint;->updateVideoHint()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/VideoHint;->access$100(Lcom/meizu/media/camera/ui/VideoHint;)V

    .line 85
    return-void
.end method
