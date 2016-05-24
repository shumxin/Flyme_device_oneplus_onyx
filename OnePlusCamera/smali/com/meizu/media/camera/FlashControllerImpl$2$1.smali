.class Lcom/meizu/media/camera/FlashControllerImpl$2$1;
.super Ljava/lang/Object;
.source "FlashControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/FlashControllerImpl$2;->onComponentFound(Lcom/meizu/media/camera/ExposureController;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/media/camera/FlashControllerImpl$2;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/FlashControllerImpl$2;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/meizu/media/camera/FlashControllerImpl$2$1;->this$1:Lcom/meizu/media/camera/FlashControllerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/meizu/media/camera/FlashControllerImpl$10;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    iget-object v0, p0, Lcom/meizu/media/camera/FlashControllerImpl$2$1;->this$1:Lcom/meizu/media/camera/FlashControllerImpl$2;

    iget-object v0, v0, Lcom/meizu/media/camera/FlashControllerImpl$2;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    invoke-virtual {v0}, Lcom/meizu/media/camera/FlashControllerImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v0}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/FlashControllerImpl$2$1;->this$1:Lcom/meizu/media/camera/FlashControllerImpl$2;

    iget-object v0, v0, Lcom/meizu/media/camera/FlashControllerImpl$2;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    # invokes: Lcom/meizu/media/camera/FlashControllerImpl;->updateFlashState()V
    invoke-static {v0}, Lcom/meizu/media/camera/FlashControllerImpl;->access$600(Lcom/meizu/media/camera/FlashControllerImpl;)V

    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/FlashControllerImpl$2$1;->this$1:Lcom/meizu/media/camera/FlashControllerImpl$2;

    iget-object v0, v0, Lcom/meizu/media/camera/FlashControllerImpl$2;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    # getter for: Lcom/meizu/media/camera/FlashControllerImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/media/camera/FlashControllerImpl;->access$700(Lcom/meizu/media/camera/FlashControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - video mode, do nothing"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
