.class public final Lcom/meizu/media/camera/OPCameraApplication;
.super Lcom/meizu/media/camera/CameraApplication;
.source "OPCameraApplication.java"


# static fields
.field public static final DEBUG:Z = true

.field private static final DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

.field private static final TAG:Ljava/lang/String; = "CameraApplication"

.field private static final m_InstanceRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/media/camera/CameraActivity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    const/4 v1, 0x0

    new-instance v2, Lcom/oneplus/io/StorageManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/io/StorageManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/OPCameraApplication;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/media/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/meizu/media/camera/CameraApplication;-><init>()V

    .line 66
    sget-object v0, Lcom/meizu/media/camera/OPCameraApplication;->DEFAULT_COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/OPCameraApplication;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 67
    return-void
.end method

.method static notifyInstanceCreated(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 4
    .param p0, "activity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 43
    sget-object v1, Lcom/meizu/media/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 45
    sget-object v1, Lcom/meizu/media/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 46
    sget-object v1, Lcom/meizu/media/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 48
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v1, "CameraApplication"

    const-string v2, "notifyInstanceCreated() - Instance count : "

    sget-object v3, Lcom/meizu/media/camera/OPCameraApplication;->m_InstanceRefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method static notifyInstanceDestroyed(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 0
    .param p0, "activity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 58
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "CameraApplication"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0}, Lcom/meizu/media/camera/CameraApplication;->onCreate()V

    .line 80
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->prepare()V

    .line 81
    return-void
.end method
