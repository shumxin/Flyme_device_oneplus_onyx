.class Lcom/meizu/media/camera/CameraServiceProxy$2;
.super Lcom/oneplus/base/Handle;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraServiceProxy;->torchFlash()Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraServiceProxy;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/meizu/media/camera/CameraServiceProxy$2;->this$0:Lcom/meizu/media/camera/CameraServiceProxy;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/meizu/media/camera/CameraServiceProxy$2;->this$0:Lcom/meizu/media/camera/CameraServiceProxy;

    sget-object v1, Lcom/meizu/media/camera/CameraService;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraServiceProxy;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/meizu/media/camera/CameraServiceProxy$2;->this$0:Lcom/meizu/media/camera/CameraServiceProxy;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/CameraServiceProxy;->torchFlashRemote(Z)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/CameraServiceProxy;->access$200(Lcom/meizu/media/camera/CameraServiceProxy;Z)V

    .line 193
    :cond_0
    return-void
.end method
