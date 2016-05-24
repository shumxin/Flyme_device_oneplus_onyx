.class Lcom/meizu/media/camera/ui/ZoomBarImpl$8;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/ZoomBarImpl;->onInitialize()V
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ZoomBarImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl$8;->this$0:Lcom/meizu/media/camera/ui/ZoomBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Float;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl$8;->this$0:Lcom/meizu/media/camera/ui/ZoomBarImpl;

    # invokes: Lcom/meizu/media/camera/ui/ZoomBarImpl;->showCurrentZoom()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->access$600(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V

    .line 226
    return-void
.end method
