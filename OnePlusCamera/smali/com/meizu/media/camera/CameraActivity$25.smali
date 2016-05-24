.class Lcom/meizu/media/camera/CameraActivity$25;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 3720
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$25;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x64

    .line 3724
    const-string v2, "level"

    const/16 v3, 0x32

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3725
    .local v0, "level":I
    const-string v2, "scale"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3726
    .local v1, "scale":I
    const/4 v2, 0x0

    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3727
    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity$25;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v2, v0}, Lcom/meizu/media/camera/CameraActivity;->onBatteryLevelChanged(I)V

    .line 3728
    return-void
.end method
