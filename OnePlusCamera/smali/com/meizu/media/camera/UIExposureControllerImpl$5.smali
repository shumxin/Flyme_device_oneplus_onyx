.class Lcom/meizu/media/camera/UIExposureControllerImpl$5;
.super Ljava/lang/Object;
.source "UIExposureControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/UIExposureControllerImpl;->setAERegionsProp(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/UIExposureControllerImpl;

.field final synthetic val$regions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/UIExposureControllerImpl;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/meizu/media/camera/UIExposureControllerImpl$5;->this$0:Lcom/meizu/media/camera/UIExposureControllerImpl;

    iput-object p2, p0, Lcom/meizu/media/camera/UIExposureControllerImpl$5;->val$regions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/meizu/media/camera/UIExposureControllerImpl$5;->this$0:Lcom/meizu/media/camera/UIExposureControllerImpl;

    invoke-virtual {v0}, Lcom/meizu/media/camera/UIExposureControllerImpl;->getTarget()Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ExposureController;

    sget-object v1, Lcom/meizu/media/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/UIExposureControllerImpl$5;->val$regions:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 212
    return-void
.end method
