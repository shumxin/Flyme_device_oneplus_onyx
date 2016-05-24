.class Lcom/meizu/media/camera/manual/ManualModeUI$16;
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
        "Lcom/meizu/media/camera/PhotoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$16;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

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
            "Lcom/meizu/media/camera/PhotoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/PhotoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$16;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$3200(Lcom/meizu/media/camera/manual/ManualModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 710
    :goto_0
    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 717
    :cond_0
    :goto_1
    return-void

    .line 707
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$16;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->hideProcessingDialog()V
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$3300(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    goto :goto_0

    .line 713
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$16;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;->FADE_IN:Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    sget-object v2, Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->showKnobViewUI(Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$3400(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V

    goto :goto_1

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 710
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method
