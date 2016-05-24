.class Lcom/meizu/media/camera/scene/PhotoScene$1;
.super Ljava/lang/Object;
.source "PhotoScene.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/scene/PhotoScene;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;Ljava/lang/Integer;I)V
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
.field final synthetic this$0:Lcom/meizu/media/camera/scene/PhotoScene;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/scene/PhotoScene;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/meizu/media/camera/scene/PhotoScene$1;->this$0:Lcom/meizu/media/camera/scene/PhotoScene;

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
    .line 147
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    iget-object v1, p0, Lcom/meizu/media/camera/scene/PhotoScene$1;->this$0:Lcom/meizu/media/camera/scene/PhotoScene;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    # invokes: Lcom/meizu/media/camera/scene/PhotoScene;->onPhotoCaptureStateChanged(Lcom/meizu/media/camera/PhotoCaptureState;)V
    invoke-static {v1, v0}, Lcom/meizu/media/camera/scene/PhotoScene;->access$100(Lcom/meizu/media/camera/scene/PhotoScene;Lcom/meizu/media/camera/PhotoCaptureState;)V

    .line 148
    return-void
.end method
