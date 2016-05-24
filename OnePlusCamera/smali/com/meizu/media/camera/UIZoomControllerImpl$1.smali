.class Lcom/meizu/media/camera/UIZoomControllerImpl$1;
.super Ljava/lang/Object;
.source "UIZoomControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/UIZoomControllerImpl;->applyDigitalZoom(F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/UIZoomControllerImpl;

.field final synthetic val$zoom:F


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/UIZoomControllerImpl;F)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/media/camera/UIZoomControllerImpl$1;->this$0:Lcom/meizu/media/camera/UIZoomControllerImpl;

    iput p2, p0, Lcom/meizu/media/camera/UIZoomControllerImpl$1;->val$zoom:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/media/camera/UIZoomControllerImpl$1;->this$0:Lcom/meizu/media/camera/UIZoomControllerImpl;

    invoke-virtual {v0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->getTarget()Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ZoomController;

    sget-object v1, Lcom/meizu/media/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/meizu/media/camera/UIZoomControllerImpl$1;->val$zoom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ZoomController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
