.class final Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecordingTimeRatioHandle"
.end annotation


# instance fields
.field public final ratio:F

.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;F)V
    .locals 1
    .param p2, "ratio"    # F

    .prologue
    .line 570
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;->this$0:Lcom/meizu/media/camera/CameraActivity;

    .line 571
    const-string v0, "VideoRecordingTimeRatio"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 572
    iput p2, p0, Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;->ratio:F

    .line 573
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 578
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # invokes: Lcom/meizu/media/camera/CameraActivity;->restoreRecordingTimeRatio(Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;)V
    invoke-static {v0, p0}, Lcom/meizu/media/camera/CameraActivity;->access$300(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$RecordingTimeRatioHandle;)V

    .line 579
    return-void
.end method
