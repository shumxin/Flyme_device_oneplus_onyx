.class Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$5;
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
        "Lcom/meizu/media/camera/PhotoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

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
            "Lcom/meizu/media/camera/PhotoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/PhotoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 894
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->REVIEWING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    .line 896
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    # invokes: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$500(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    .line 897
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    # getter for: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$600(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$602(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 900
    :cond_0
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->CAPTURING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_1

    .line 901
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    const/4 v1, 0x1

    # invokes: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->lockExposureIndicator(Z)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$700(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Z)V

    .line 905
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$5;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->lockExposureIndicator(Z)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$700(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Z)V

    goto :goto_0
.end method
