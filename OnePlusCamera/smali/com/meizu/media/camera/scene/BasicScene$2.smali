.class Lcom/meizu/media/camera/scene/BasicScene$2;
.super Ljava/lang/Object;
.source "BasicScene.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/scene/BasicScene;
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
        "Lcom/meizu/media/camera/media/MediaType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/scene/BasicScene;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/scene/BasicScene;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/meizu/media/camera/scene/BasicScene$2;->this$0:Lcom/meizu/media/camera/scene/BasicScene;

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
            "Lcom/meizu/media/camera/media/MediaType;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/media/MediaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/media/MediaType;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/media/MediaType;>;"
    iget-object v1, p0, Lcom/meizu/media/camera/scene/BasicScene$2;->this$0:Lcom/meizu/media/camera/scene/BasicScene;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v1, v0}, Lcom/meizu/media/camera/scene/BasicScene;->onMediaTypeChanged(Lcom/meizu/media/camera/media/MediaType;)V

    .line 32
    return-void
.end method
