.class Lcom/meizu/media/camera/slowmotion/SlowMotionUI$2;
.super Ljava/lang/Object;
.source "SlowMotionUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/slowmotion/SlowMotionUI;->onInitialize()V
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
        "Lcom/meizu/media/camera/media/ResolutionManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/slowmotion/SlowMotionUI;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/meizu/media/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 170
    check-cast p1, Lcom/meizu/media/camera/media/ResolutionManager;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/slowmotion/SlowMotionUI$2;->onComponentFound(Lcom/meizu/media/camera/media/ResolutionManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/media/ResolutionManager;)V
    .locals 4
    .param p1, "component"    # Lcom/meizu/media/camera/media/ResolutionManager;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/meizu/media/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionUI;

    # setter for: Lcom/meizu/media/camera/slowmotion/SlowMotionUI;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/slowmotion/SlowMotionUI;->access$102(Lcom/meizu/media/camera/slowmotion/SlowMotionUI;Lcom/meizu/media/camera/media/ResolutionManager;)Lcom/meizu/media/camera/media/ResolutionManager;

    .line 175
    iget-object v0, p0, Lcom/meizu/media/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionUI;

    # invokes: Lcom/meizu/media/camera/slowmotion/SlowMotionUI;->isEntered()Z
    invoke-static {v0}, Lcom/meizu/media/camera/slowmotion/SlowMotionUI;->access$200(Lcom/meizu/media/camera/slowmotion/SlowMotionUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/meizu/media/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionUI;

    # getter for: Lcom/meizu/media/camera/slowmotion/SlowMotionUI;->m_Handles:Lcom/oneplus/base/HandleSet;
    invoke-static {v0}, Lcom/meizu/media/camera/slowmotion/SlowMotionUI;->access$400(Lcom/meizu/media/camera/slowmotion/SlowMotionUI;)Lcom/oneplus/base/HandleSet;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionUI;

    # getter for: Lcom/meizu/media/camera/slowmotion/SlowMotionUI;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;
    invoke-static {v1}, Lcom/meizu/media/camera/slowmotion/SlowMotionUI;->access$100(Lcom/meizu/media/camera/slowmotion/SlowMotionUI;)Lcom/meizu/media/camera/media/ResolutionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/slowmotion/SlowMotionUI$2;->this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionUI;

    # getter for: Lcom/meizu/media/camera/slowmotion/SlowMotionUI;->m_ResolutionSelector:Lcom/meizu/media/camera/slowmotion/SlowMotionUI$ResolutionSelector;
    invoke-static {v2}, Lcom/meizu/media/camera/slowmotion/SlowMotionUI;->access$300(Lcom/meizu/media/camera/slowmotion/SlowMotionUI;)Lcom/meizu/media/camera/slowmotion/SlowMotionUI$ResolutionSelector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/media/ResolutionManager;->setResolutionSelector(Lcom/meizu/media/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 177
    :cond_0
    return-void
.end method