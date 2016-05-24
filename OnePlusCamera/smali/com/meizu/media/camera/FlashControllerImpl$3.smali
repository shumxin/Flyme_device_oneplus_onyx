.class Lcom/meizu/media/camera/FlashControllerImpl$3;
.super Ljava/lang/Object;
.source "FlashControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/FlashControllerImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/FlashControllerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/FlashControllerImpl;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/meizu/media/camera/FlashControllerImpl$3;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/meizu/media/camera/FlashControllerImpl$3;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    # invokes: Lcom/meizu/media/camera/FlashControllerImpl;->updateFlashState()V
    invoke-static {v0}, Lcom/meizu/media/camera/FlashControllerImpl;->access$600(Lcom/meizu/media/camera/FlashControllerImpl;)V

    .line 207
    return-void
.end method
