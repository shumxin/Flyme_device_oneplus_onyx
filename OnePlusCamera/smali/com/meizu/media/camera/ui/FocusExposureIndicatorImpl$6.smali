.class Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$6;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onInitialize()V
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
        "Lcom/meizu/media/camera/VideoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$6;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

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
            "Lcom/meizu/media/camera/VideoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/VideoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 912
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/VideoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/VideoCaptureState;>;"
    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$18;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 922
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$6;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$6;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    # getter for: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$600(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$602(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 925
    :goto_1
    :pswitch_0
    return-void

    .line 917
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$6;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    # invokes: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->updateFocusExposureLockIndicator()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$800(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    goto :goto_1

    .line 920
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$6;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    # invokes: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$500(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    goto :goto_0

    .line 912
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
