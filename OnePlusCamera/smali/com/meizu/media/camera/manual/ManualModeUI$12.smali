.class Lcom/meizu/media/camera/manual/ManualModeUI$12;
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
        "Lcom/oneplus/base/BaseActivity$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$12;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

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
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$12;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$1700(Lcom/meizu/media/camera/manual/ManualModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 633
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$12;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    sget-object v1, Lcom/meizu/media/camera/manual/ControlType;->NONE:Lcom/meizu/media/camera/manual/ControlType;

    const/4 v2, 0x0

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->setControlType(Lcom/meizu/media/camera/manual/ControlType;Z)V
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$1800(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ControlType;Z)V

    goto :goto_0

    .line 636
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$12;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$12;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->getCamera()Lcom/meizu/media/camera/Camera;
    invoke-static {v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$1900(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$12;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z
    invoke-static {v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$2000(Lcom/meizu/media/camera/manual/ManualModeUI;)Z

    move-result v2

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$2100(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/Camera;Z)V

    goto :goto_0

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
