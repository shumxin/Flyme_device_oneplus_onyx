.class final Lcom/meizu/media/camera/location/LocationManagerImpl;
.super Lcom/meizu/media/camera/ProxyComponent;
.source "LocationManagerImpl.java"

# interfaces
.implements Lcom/meizu/media/camera/location/LocationManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/ProxyComponent",
        "<",
        "Lcom/meizu/media/camera/location/LocationManager;",
        ">;",
        "Lcom/meizu/media/camera/location/LocationManager;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;)V
    .locals 3
    .param p1, "cameraThread"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    .line 15
    const-string v1, "Location Manager (Camera Thread)"

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/component/ComponentOwner;

    const-class v2, Lcom/meizu/media/camera/location/LocationManager;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/meizu/media/camera/ProxyComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraThread;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onBindingToTargetProperties(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ProxyComponent;->onBindingToTargetProperties(Ljava/util/List;)V

    .line 24
    sget-object v0, Lcom/meizu/media/camera/location/LocationManagerImpl;->PROP_IS_LOCATION_LISTENER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/meizu/media/camera/location/LocationManagerImpl;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method
