.class Lcom/meizu/media/camera/ui/TouchFocusExposureUI$7;
.super Ljava/lang/Object;
.source "TouchFocusExposureUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/TouchFocusExposureUI;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/ui/TouchFocusExposureUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/TouchFocusExposureUI;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$7;->this$0:Lcom/meizu/media/camera/ui/TouchFocusExposureUI;

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
    .line 308
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->REVIEWING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$7;->this$0:Lcom/meizu/media/camera/ui/TouchFocusExposureUI;

    # invokes: Lcom/meizu/media/camera/ui/TouchFocusExposureUI;->unlockFocusAndExposure()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/TouchFocusExposureUI;->access$600(Lcom/meizu/media/camera/ui/TouchFocusExposureUI;)V

    .line 313
    :cond_0
    return-void
.end method
