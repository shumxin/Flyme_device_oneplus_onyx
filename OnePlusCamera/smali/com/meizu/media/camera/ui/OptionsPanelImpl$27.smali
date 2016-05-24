.class Lcom/meizu/media/camera/ui/OptionsPanelImpl$27;
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
        "Lcom/meizu/media/camera/ui/PreviewCover$UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$27;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

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
            "Lcom/meizu/media/camera/ui/PreviewCover$UIState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/ui/PreviewCover$UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1413
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/ui/PreviewCover$UIState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/ui/PreviewCover$UIState;>;"
    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$ui$PreviewCover$UIState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1420
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$27;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # getter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$2400(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$27;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->changePhotoResolution()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$3500(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    .line 1422
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$27;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updatePhotoResolutionButtonRes()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$3600(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    .line 1426
    :cond_0
    :pswitch_0
    return-void

    .line 1413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
