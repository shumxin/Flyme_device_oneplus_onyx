.class Lcom/meizu/media/camera/ui/OptionsPanelImpl$16;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupPropertyChangedCallback()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$16;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
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
    .line 1208
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1223
    :goto_0
    return-void

    .line 1212
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$16;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PanelCloseSelfTimerHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$1500(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1213
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$16;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PanelCloseReviewingHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$1600(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1215
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$16;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$16;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$1700(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    # getter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_FIRST:Ljava/util/List;
    invoke-static {}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$1800()Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$1900(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_0

    .line 1218
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$16;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$16;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;->REVIEWING:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->closeOptionsPanel(Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PanelCloseReviewingHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$1602(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
