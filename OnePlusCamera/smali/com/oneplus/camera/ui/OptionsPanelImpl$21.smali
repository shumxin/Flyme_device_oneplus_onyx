.class Lcom/oneplus/camera/ui/OptionsPanelImpl$21;
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
        "Lcom/oneplus/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

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
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1312
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1314
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$2600(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$2602(Lcom/oneplus/camera/ui/OptionsPanelImpl;Landroid/view/View;)Landroid/view/View;

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->removeAndResetAllViews()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$2700(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    .line 1319
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;
    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$2800(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_2

    .line 1320
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1700(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_FIRST:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1800()Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1900(Lcom/oneplus/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 1326
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1700(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerVisibility(Landroid/view/ViewGroup;)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$2900(Lcom/oneplus/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;)V

    .line 1328
    :cond_1
    return-void

    .line 1322
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$21;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1700(Lcom/oneplus/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    # getter for: Lcom/oneplus/camera/ui/OptionsPanelImpl;->VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$2000()Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1900(Lcom/oneplus/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_0
.end method
