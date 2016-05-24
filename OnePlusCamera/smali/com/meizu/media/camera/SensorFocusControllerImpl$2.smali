.class Lcom/meizu/media/camera/SensorFocusControllerImpl$2;
.super Ljava/lang/Object;
.source "SensorFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


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
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/meizu/media/camera/FocusController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/SensorFocusControllerImpl;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 209
    check-cast p1, Lcom/meizu/media/camera/FocusController;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->onComponentFound(Lcom/meizu/media/camera/FocusController;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/FocusController;)V
    .locals 3
    .param p1, "component"    # Lcom/meizu/media/camera/FocusController;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # setter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$202(Lcom/meizu/media/camera/SensorFocusControllerImpl;Lcom/meizu/media/camera/FocusController;)Lcom/meizu/media/camera/FocusController;

    .line 215
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # getter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;
    invoke-static {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$200(Lcom/meizu/media/camera/SensorFocusControllerImpl;)Lcom/meizu/media/camera/FocusController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # getter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;
    invoke-static {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$200(Lcom/meizu/media/camera/SensorFocusControllerImpl;)Lcom/meizu/media/camera/FocusController;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$1;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$1;-><init>(Lcom/meizu/media/camera/SensorFocusControllerImpl$2;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 237
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$2;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # getter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;
    invoke-static {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$200(Lcom/meizu/media/camera/SensorFocusControllerImpl;)Lcom/meizu/media/camera/FocusController;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$2;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/SensorFocusControllerImpl$2$2;-><init>(Lcom/meizu/media/camera/SensorFocusControllerImpl$2;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 251
    :cond_0
    return-void
.end method
