.class Lcom/meizu/media/camera/SensorFocusControllerImpl$6;
.super Ljava/lang/Object;
.source "SensorFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/SensorFocusControllerImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/SensorFocusControllerImpl;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$6;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

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
            "Lcom/meizu/media/camera/PhotoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/PhotoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$6;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    invoke-virtual {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v0, v1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$6;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/SensorFocusControllerImpl;->startAutoFocus(Z)Z
    invoke-static {v0, v1}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$500(Lcom/meizu/media/camera/SensorFocusControllerImpl;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$6;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    sget-object v1, Lcom/meizu/media/camera/SensorFocusControllerImpl$SensorAfState;->STABLE_WITH_AF:Lcom/meizu/media/camera/SensorFocusControllerImpl$SensorAfState;

    # setter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_AfState:Lcom/meizu/media/camera/SensorFocusControllerImpl$SensorAfState;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$402(Lcom/meizu/media/camera/SensorFocusControllerImpl;Lcom/meizu/media/camera/SensorFocusControllerImpl$SensorAfState;)Lcom/meizu/media/camera/SensorFocusControllerImpl$SensorAfState;

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$6;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    const/16 v1, 0x271a

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    goto :goto_0
.end method
