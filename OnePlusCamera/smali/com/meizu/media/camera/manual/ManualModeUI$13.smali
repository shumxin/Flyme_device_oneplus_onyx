.class Lcom/meizu/media/camera/manual/ManualModeUI$13;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


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
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$13;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$13;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$2200(Lcom/meizu/media/camera/manual/ManualModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$13;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->hideUI()V
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$2300(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    .line 654
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$13;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    sget-object v2, Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->hideKnobViewUI(Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$2400(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V

    .line 655
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$13;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$13;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$2500(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/oneplus/base/HandleSet;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    # setter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;
    invoke-static {v1, v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$2502(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/oneplus/base/HandleSet;)Lcom/oneplus/base/HandleSet;

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$13;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->showUI()V
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$2600(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    .line 660
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$13;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->addCaptureButtonsHandles()V
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$2700(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    goto :goto_0
.end method
