.class Lcom/meizu/media/camera/WhiteBalanceControllerImpl$3;
.super Ljava/lang/Object;
.source "WhiteBalanceControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->onInitialize()V
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
        "Lcom/meizu/media/camera/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/WhiteBalanceControllerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/WhiteBalanceControllerImpl;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl$3;->this$0:Lcom/meizu/media/camera/WhiteBalanceControllerImpl;

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
            "Lcom/meizu/media/camera/Camera;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/Camera;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/Camera;>;"
    iget-object v1, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl$3;->this$0:Lcom/meizu/media/camera/WhiteBalanceControllerImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->detachFromCamera(Lcom/meizu/media/camera/Camera;)V

    .line 142
    iget-object v1, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl$3;->this$0:Lcom/meizu/media/camera/WhiteBalanceControllerImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->attachToCamera(Lcom/meizu/media/camera/Camera;)V

    .line 143
    return-void
.end method
