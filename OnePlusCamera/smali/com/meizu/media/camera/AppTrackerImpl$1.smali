.class Lcom/meizu/media/camera/AppTrackerImpl$1;
.super Ljava/lang/Object;
.source "AppTrackerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/AppTrackerImpl;->onInitialize()V
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
        "Lcom/meizu/media/camera/PhotoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/AppTrackerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/AppTrackerImpl;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/meizu/media/camera/AppTrackerImpl$1;->this$0:Lcom/meizu/media/camera/AppTrackerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/PhotoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/PhotoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    const/4 v3, 0x1

    .line 104
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->STOPPING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl$1;->this$0:Lcom/meizu/media/camera/AppTrackerImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/AppTrackerImpl;->onEvent(I)V

    .line 107
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl$1;->this$0:Lcom/meizu/media/camera/AppTrackerImpl;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # setter for: Lcom/meizu/media/camera/AppTrackerImpl;->m_BurstCount:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/meizu/media/camera/AppTrackerImpl;->access$002(Lcom/meizu/media/camera/AppTrackerImpl;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 108
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl$1;->this$0:Lcom/meizu/media/camera/AppTrackerImpl;

    # getter for: Lcom/meizu/media/camera/AppTrackerImpl;->m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;
    invoke-static {v1}, Lcom/meizu/media/camera/AppTrackerImpl;->access$100(Lcom/meizu/media/camera/AppTrackerImpl;)Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/capturemode/CaptureMode;

    .line 110
    .local v0, "captureMode":Lcom/meizu/media/camera/capturemode/CaptureMode;
    instance-of v1, v0, Lcom/meizu/media/camera/manual/ManualCaptureMode;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl$1;->this$0:Lcom/meizu/media/camera/AppTrackerImpl;

    invoke-virtual {v1, v3}, Lcom/meizu/media/camera/AppTrackerImpl;->onEvent(I)V

    .line 113
    :cond_0
    instance-of v1, v0, Lcom/meizu/media/camera/panorama/PanoramaCaptureMode;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl$1;->this$0:Lcom/meizu/media/camera/AppTrackerImpl;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/AppTrackerImpl;->onEvent(I)V

    .line 117
    .end local v0    # "captureMode":Lcom/meizu/media/camera/capturemode/CaptureMode;
    :cond_1
    return-void
.end method
