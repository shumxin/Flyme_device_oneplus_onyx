.class Lcom/meizu/media/camera/LegacyCameraImpl$8;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/LegacyCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/LegacyCameraImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/LegacyCameraImpl;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl$8;->this$0:Lcom/meizu/media/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl$8;->this$0:Lcom/meizu/media/camera/LegacyCameraImpl;

    # invokes: Lcom/meizu/media/camera/LegacyCameraImpl;->onShutterReceived()V
    invoke-static {v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->access$800(Lcom/meizu/media/camera/LegacyCameraImpl;)V

    .line 190
    return-void
.end method
