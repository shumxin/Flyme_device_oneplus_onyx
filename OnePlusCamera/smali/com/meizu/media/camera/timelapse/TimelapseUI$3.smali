.class Lcom/meizu/media/camera/timelapse/TimelapseUI$3;
.super Ljava/lang/Object;
.source "TimelapseUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/timelapse/TimelapseUI;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/timelapse/TimelapseUI;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/meizu/media/camera/timelapse/TimelapseUI$3;->this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
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
    .line 177
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/VideoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/VideoCaptureState;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/timelapse/TimelapseUI$3;->this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;

    # invokes: Lcom/meizu/media/camera/timelapse/TimelapseUI;->onVideoCaptureStateChanged(Lcom/oneplus/base/PropertyChangeEventArgs;)V
    invoke-static {v0, p3}, Lcom/meizu/media/camera/timelapse/TimelapseUI;->access$500(Lcom/meizu/media/camera/timelapse/TimelapseUI;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 178
    return-void
.end method