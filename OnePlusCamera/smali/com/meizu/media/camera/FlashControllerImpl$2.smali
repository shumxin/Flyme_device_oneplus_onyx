.class Lcom/meizu/media/camera/FlashControllerImpl$2;
.super Ljava/lang/Object;
.source "FlashControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/FlashControllerImpl;->onInitialize()V
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
        "Lcom/meizu/media/camera/ExposureController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/FlashControllerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/FlashControllerImpl;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/meizu/media/camera/FlashControllerImpl$2;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 170
    check-cast p1, Lcom/meizu/media/camera/ExposureController;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/FlashControllerImpl$2;->onComponentFound(Lcom/meizu/media/camera/ExposureController;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/ExposureController;)V
    .locals 3
    .param p1, "component"    # Lcom/meizu/media/camera/ExposureController;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/meizu/media/camera/FlashControllerImpl$2;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    # setter for: Lcom/meizu/media/camera/FlashControllerImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/FlashControllerImpl;->access$502(Lcom/meizu/media/camera/FlashControllerImpl;Lcom/meizu/media/camera/ExposureController;)Lcom/meizu/media/camera/ExposureController;

    .line 176
    iget-object v0, p0, Lcom/meizu/media/camera/FlashControllerImpl$2;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    # getter for: Lcom/meizu/media/camera/FlashControllerImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;
    invoke-static {v0}, Lcom/meizu/media/camera/FlashControllerImpl;->access$500(Lcom/meizu/media/camera/FlashControllerImpl;)Lcom/meizu/media/camera/ExposureController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/meizu/media/camera/FlashControllerImpl$2;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    # getter for: Lcom/meizu/media/camera/FlashControllerImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;
    invoke-static {v0}, Lcom/meizu/media/camera/FlashControllerImpl;->access$500(Lcom/meizu/media/camera/FlashControllerImpl;)Lcom/meizu/media/camera/ExposureController;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/FlashControllerImpl$2$1;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/FlashControllerImpl$2$1;-><init>(Lcom/meizu/media/camera/FlashControllerImpl$2;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 195
    :cond_0
    return-void
.end method
