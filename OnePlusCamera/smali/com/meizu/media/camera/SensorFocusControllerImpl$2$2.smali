.class Lcom/meizu/media/camera/SensorFocusControllerImpl$2$2;
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
        "Lcom/meizu/media/camera/FocusMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$2;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/SensorFocusControllerImpl$2;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$2;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$2;

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
            "Lcom/meizu/media/camera/FocusMode;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/FocusMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/FocusMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/FocusMode;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->MANUAL:Lcom/meizu/media/camera/FocusMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->NORMAL_AF:Lcom/meizu/media/camera/FocusMode;

    if-ne v0, v1, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$2;->this$1:Lcom/meizu/media/camera/SensorFocusControllerImpl$2;

    iget-object v0, v0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/SensorFocusControllerImpl;->startAutoFocus(Z)Z
    invoke-static {v0, v1}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$500(Lcom/meizu/media/camera/SensorFocusControllerImpl;Z)Z

    .line 248
    :cond_1
    return-void
.end method
