.class Lcom/meizu/media/camera/ui/OptionsPanelImpl$25;
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
        "Lcom/meizu/media/camera/AutoExposureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$25;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/AutoExposureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/AutoExposureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1378
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/AutoExposureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/AutoExposureState;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$25;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$3300(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Lcom/meizu/media/camera/FlashController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$25;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$3300(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Lcom/meizu/media/camera/FlashController;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/FlashMode;->AUTO:Lcom/meizu/media/camera/FlashMode;

    if-ne v0, v1, :cond_0

    .line 1379
    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$AutoExposureState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/AutoExposureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/AutoExposureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1383
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$25;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateFlashButton()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$3400(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    goto :goto_0

    .line 1379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
