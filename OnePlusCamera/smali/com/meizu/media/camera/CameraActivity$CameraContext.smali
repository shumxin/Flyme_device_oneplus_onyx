.class final Lcom/meizu/media/camera/CameraActivity$CameraContext;
.super Ljava/lang/Object;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraContext"
.end annotation


# instance fields
.field public volatile camera:Lcom/meizu/media/camera/Camera;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/meizu/media/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$CameraContext;->camera:Lcom/meizu/media/camera/Camera;

    .line 699
    return-void
.end method
