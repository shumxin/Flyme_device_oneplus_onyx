.class Lcom/meizu/media/camera/FaceTrackerImpl$6;
.super Ljava/lang/Object;
.source "FaceTrackerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/FaceTrackerImpl;->updateFaceDetectionState(Lcom/meizu/media/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/FaceTrackerImpl;

.field final synthetic val$camera:Lcom/meizu/media/camera/Camera;

.field final synthetic val$isEmpty:Z


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/FaceTrackerImpl;Lcom/meizu/media/camera/Camera;Z)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/meizu/media/camera/FaceTrackerImpl$6;->this$0:Lcom/meizu/media/camera/FaceTrackerImpl;

    iput-object p2, p0, Lcom/meizu/media/camera/FaceTrackerImpl$6;->val$camera:Lcom/meizu/media/camera/Camera;

    iput-boolean p3, p0, Lcom/meizu/media/camera/FaceTrackerImpl$6;->val$isEmpty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/meizu/media/camera/FaceTrackerImpl$6;->val$camera:Lcom/meizu/media/camera/Camera;

    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-boolean v2, p0, Lcom/meizu/media/camera/FaceTrackerImpl$6;->val$isEmpty:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 289
    return-void
.end method
