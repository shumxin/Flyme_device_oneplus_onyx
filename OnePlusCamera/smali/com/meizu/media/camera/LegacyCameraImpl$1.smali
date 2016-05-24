.class Lcom/meizu/media/camera/LegacyCameraImpl$1;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


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
    .line 125
    iput-object p1, p0, Lcom/meizu/media/camera/LegacyCameraImpl$1;->this$0:Lcom/meizu/media/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl$1;->this$0:Lcom/meizu/media/camera/LegacyCameraImpl;

    # getter for: Lcom/meizu/media/camera/LegacyCameraImpl;->m_Device:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/meizu/media/camera/LegacyCameraImpl;->access$000(Lcom/meizu/media/camera/LegacyCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/meizu/media/camera/LegacyCameraImpl$1;->this$0:Lcom/meizu/media/camera/LegacyCameraImpl;

    # invokes: Lcom/meizu/media/camera/LegacyCameraImpl;->onAutoFocus(Z)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/LegacyCameraImpl;->access$100(Lcom/meizu/media/camera/LegacyCameraImpl;Z)V

    .line 131
    :cond_0
    return-void
.end method
