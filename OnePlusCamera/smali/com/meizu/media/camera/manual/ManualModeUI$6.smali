.class Lcom/meizu/media/camera/manual/ManualModeUI$6;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/manual/ManualModeUI;->onInitialize()V
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
        "Lcom/meizu/media/camera/ui/TouchAutoExposureUI;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$6;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 538
    check-cast p1, Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/manual/ManualModeUI$6;->onComponentFound(Lcom/meizu/media/camera/ui/TouchAutoExposureUI;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/ui/TouchAutoExposureUI;)V
    .locals 1
    .param p1, "component"    # Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$6;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # setter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/meizu/media/camera/ui/TouchAutoExposureUI;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$902(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/ui/TouchAutoExposureUI;)Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    .line 543
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$6;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->retryToEnter()V
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$500(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    .line 544
    return-void
.end method
