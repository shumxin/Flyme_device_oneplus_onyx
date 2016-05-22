.class Lcom/oneplus/camera/ui/OptionsPanelImpl$17;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupPropertyChangedCallback()V
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
        "Lcom/oneplus/camera/VideoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 7
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/VideoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/VideoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/VideoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/VideoCaptureState;>;"
    const/4 v6, 0x0

    .line 1231
    sget-object v4, Lcom/oneplus/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v3}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1235
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1700(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1237
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1700(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1240
    :cond_1
    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$2000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 1242
    .local v2, "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateButtonState(Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V
    invoke-static {v3, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$2100(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V

    goto :goto_2

    .line 1247
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PanelCloseSelfTimerHandle:Lcom/oneplus/base/Handle;
    invoke-static {v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1500(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1248
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PanelCloseReviewingHandle:Lcom/oneplus/base/Handle;
    invoke-static {v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1600(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1250
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1700(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;

    move-result-object v4

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$2000()Ljava/util/List;

    move-result-object v5

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V
    invoke-static {v3, v4, v5}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1900(Lcom/oneplus/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_0

    .line 1254
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    iget-object v4, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    sget-object v5, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;->REVIEWING:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->closeOptionsPanel(Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelCloseReason;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    # setter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_PanelCloseReviewingHandle:Lcom/oneplus/base/Handle;
    invoke-static {v3, v4}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1602(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1258
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1700(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1260
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1700(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 1258
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1263
    :cond_2
    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$2000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 1265
    .restart local v2    # "item":Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    iget-object v3, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$17;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateButtonState(Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V
    invoke-static {v3, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$2100(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V

    goto :goto_4

    .line 1231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
