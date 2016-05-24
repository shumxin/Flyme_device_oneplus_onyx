.class Lcom/meizu/media/camera/SensorFocusControllerImpl$2$1;
.super Ljava/lang/Object;
.source "SensorFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->onComponentFound(Lcom/meizu/media/camera/FocusController;)V
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
        "Lcom/meizu/media/camera/FocusState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$2;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/SensorFocusControllerImpl$2;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$2;

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
            "Lcom/meizu/media/camera/FocusState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/FocusState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/FocusState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/FocusState;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # getter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_AfState:Lcom/meizu/media/camera/SensorFocusControllerImpl$SensorAfState;
    invoke-static {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$400(Lcom/meizu/media/camera/SensorFocusControllerImpl;)Lcom/meizu/media/camera/SensorFocusControllerImpl$SensorAfState;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/meizu/media/camera/SensorFocusControllerImpl$SensorAfState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # getter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z
    invoke-static {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$100(Lcom/meizu/media/camera/SensorFocusControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # getter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;
    invoke-static {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$000(Lcom/meizu/media/camera/SensorFocusControllerImpl;)Lcom/meizu/media/camera/ExposureController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # getter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;
    invoke-static {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$000(Lcom/meizu/media/camera/SensorFocusControllerImpl;)Lcom/meizu/media/camera/ExposureController;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # getter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;
    invoke-static {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$000(Lcom/meizu/media/camera/SensorFocusControllerImpl;)Lcom/meizu/media/camera/ExposureController;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$1;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_IsAEResetNeeded:Z
    invoke-static {v0, v1}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$102(Lcom/meizu/media/camera/SensorFocusControllerImpl;Z)Z

    .line 233
    :cond_0
    return-void
.end method
