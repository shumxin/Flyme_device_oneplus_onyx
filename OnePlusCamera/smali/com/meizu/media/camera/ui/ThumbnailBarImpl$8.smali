.class Lcom/meizu/media/camera/ui/ThumbnailBarImpl$8;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->onInitialize()V
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
        "Lcom/meizu/media/camera/ui/CameraGallery$UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$8;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

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
            "Lcom/meizu/media/camera/ui/CameraGallery$UIState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/ui/CameraGallery$UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/ui/CameraGallery$UIState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/ui/CameraGallery$UIState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->OPENED:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$8;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$300(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 241
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$8;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->hideThumbnailBar(Z)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$600(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;Z)V

    .line 243
    :cond_0
    return-void
.end method
