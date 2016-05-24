.class Lcom/meizu/media/camera/CameraThread$30;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraThread;->setMediaType(Lcom/meizu/media/camera/media/MediaType;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;

.field final synthetic val$mediaType:Lcom/meizu/media/camera/media/MediaType;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/media/MediaType;)V
    .locals 0

    .prologue
    .line 2823
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$30;->this$0:Lcom/meizu/media/camera/CameraThread;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$30;->val$mediaType:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$30;->this$0:Lcom/meizu/media/camera/CameraThread;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread$30;->val$mediaType:Lcom/meizu/media/camera/media/MediaType;

    # invokes: Lcom/meizu/media/camera/CameraThread;->setMediaTypeInternal(Lcom/meizu/media/camera/media/MediaType;)Z
    invoke-static {v0, v1}, Lcom/meizu/media/camera/CameraThread;->access$3300(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/media/MediaType;)Z

    .line 2828
    return-void
.end method
