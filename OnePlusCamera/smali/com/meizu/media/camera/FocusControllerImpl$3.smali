.class Lcom/meizu/media/camera/FocusControllerImpl$3;
.super Ljava/lang/Object;
.source "FocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/FocusControllerImpl;
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
        "Lcom/meizu/media/camera/FocusState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/FocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/FocusControllerImpl;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/media/camera/FocusControllerImpl$3;->this$0:Lcom/meizu/media/camera/FocusControllerImpl;

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
            "Lcom/meizu/media/camera/FocusState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/FocusState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/FocusState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/FocusState;>;"
    iget-object v1, p0, Lcom/meizu/media/camera/FocusControllerImpl$3;->this$0:Lcom/meizu/media/camera/FocusControllerImpl;

    check-cast p1, Lcom/meizu/media/camera/Camera;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/FocusState;

    # invokes: Lcom/meizu/media/camera/FocusControllerImpl;->onFocusStateChanged(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/FocusState;)V
    invoke-static {v1, p1, v0}, Lcom/meizu/media/camera/FocusControllerImpl;->access$200(Lcom/meizu/media/camera/FocusControllerImpl;Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/FocusState;)V

    .line 46
    return-void
.end method
