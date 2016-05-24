.class Lcom/meizu/media/camera/media/ResolutionManagerImpl$4;
.super Ljava/lang/Object;
.source "ResolutionManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/media/ResolutionManagerImpl;->onInitialize()V
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
        "Lcom/oneplus/base/Settings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/media/ResolutionManagerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/media/ResolutionManagerImpl;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/meizu/media/camera/media/ResolutionManagerImpl$4;->this$0:Lcom/meizu/media/camera/media/ResolutionManagerImpl;

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
            "Lcom/oneplus/base/Settings;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/Settings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/Settings;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/Settings;>;"
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/meizu/media/camera/media/ResolutionManagerImpl$4;->this$0:Lcom/meizu/media/camera/media/ResolutionManagerImpl;

    # invokes: Lcom/meizu/media/camera/media/ResolutionManagerImpl;->selectResolutions(ZZ)Z
    invoke-static {v0, v1, v1}, Lcom/meizu/media/camera/media/ResolutionManagerImpl;->access$200(Lcom/meizu/media/camera/media/ResolutionManagerImpl;ZZ)Z

    .line 163
    return-void
.end method
