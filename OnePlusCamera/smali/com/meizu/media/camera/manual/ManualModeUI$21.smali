.class Lcom/meizu/media/camera/manual/ManualModeUI$21;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

.field final synthetic val$camera:Lcom/meizu/media/camera/Camera;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/Camera;Z)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$21;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    iput-object p2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$21;->val$camera:Lcom/meizu/media/camera/Camera;

    iput-boolean p3, p0, Lcom/meizu/media/camera/manual/ManualModeUI$21;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$21;->val$camera:Lcom/meizu/media/camera/Camera;

    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-boolean v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$21;->val$enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1024
    return-void
.end method
