.class Lcom/meizu/media/camera/SensorFocusControllerImpl$1$1;
.super Ljava/lang/Object;
.source "SensorFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/SensorFocusControllerImpl$1;->onComponentFound(Lcom/meizu/media/camera/ExposureController;)V
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
        "Lcom/meizu/media/camera/AutoExposureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$1;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/SensorFocusControllerImpl$1;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$1$1;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$1;

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
            "Lcom/meizu/media/camera/AutoExposureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/AutoExposureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/AutoExposureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/AutoExposureState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/AutoExposureState;->SEARCHING:Lcom/meizu/media/camera/AutoExposureState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$1$1;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$1;

    iget-object v0, v0, Lcom/meizu/media/camera/SensorFocusControllerImpl$1;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # getter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;
    invoke-static {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$200(Lcom/meizu/media/camera/SensorFocusControllerImpl;)Lcom/meizu/media/camera/FocusController;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    if-eq v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$1$1;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$1;

    iget-object v0, v0, Lcom/meizu/media/camera/SensorFocusControllerImpl$1;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # invokes: Lcom/meizu/media/camera/SensorFocusControllerImpl;->resetAfState()V
    invoke-static {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$300(Lcom/meizu/media/camera/SensorFocusControllerImpl;)V

    .line 203
    :cond_0
    return-void
.end method
