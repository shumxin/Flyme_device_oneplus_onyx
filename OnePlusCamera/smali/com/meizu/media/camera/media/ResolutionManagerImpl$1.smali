.class Lcom/meizu/media/camera/media/ResolutionManagerImpl$1;
.super Ljava/lang/Object;
.source "ResolutionManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


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
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/meizu/media/camera/ui/Viewfinder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/media/ResolutionManagerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/media/ResolutionManagerImpl;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/meizu/media/camera/media/ResolutionManagerImpl$1;->this$0:Lcom/meizu/media/camera/media/ResolutionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 129
    check-cast p1, Lcom/meizu/media/camera/ui/Viewfinder;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/media/ResolutionManagerImpl$1;->onComponentFound(Lcom/meizu/media/camera/ui/Viewfinder;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/ui/Viewfinder;)V
    .locals 3
    .param p1, "component"    # Lcom/meizu/media/camera/ui/Viewfinder;

    .prologue
    const/4 v2, 0x1

    .line 133
    iget-object v0, p0, Lcom/meizu/media/camera/media/ResolutionManagerImpl$1;->this$0:Lcom/meizu/media/camera/media/ResolutionManagerImpl;

    # setter for: Lcom/meizu/media/camera/media/ResolutionManagerImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/media/ResolutionManagerImpl;->access$102(Lcom/meizu/media/camera/media/ResolutionManagerImpl;Lcom/meizu/media/camera/ui/Viewfinder;)Lcom/meizu/media/camera/ui/Viewfinder;

    .line 134
    iget-object v0, p0, Lcom/meizu/media/camera/media/ResolutionManagerImpl$1;->this$0:Lcom/meizu/media/camera/media/ResolutionManagerImpl;

    invoke-virtual {v0}, Lcom/meizu/media/camera/media/ResolutionManagerImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/meizu/media/camera/media/ResolutionManagerImpl$1;->this$0:Lcom/meizu/media/camera/media/ResolutionManagerImpl;

    # invokes: Lcom/meizu/media/camera/media/ResolutionManagerImpl;->selectResolutions(ZZ)Z
    invoke-static {v0, v2, v2}, Lcom/meizu/media/camera/media/ResolutionManagerImpl;->access$200(Lcom/meizu/media/camera/media/ResolutionManagerImpl;ZZ)Z

    .line 136
    :cond_0
    return-void
.end method
