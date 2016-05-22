.class final Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;
.super Ljava/lang/Object;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraPreviewStartRequest"
.end annotation


# instance fields
.field public final camera:Lcom/oneplus/camera/Camera;

.field public flags:I

.field public previewReceiver:Ljava/lang/Object;

.field public previewSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "previewReceiver"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->camera:Lcom/oneplus/camera/Camera;

    .line 607
    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewSize:Landroid/util/Size;

    .line 608
    iput-object p3, p0, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->previewReceiver:Ljava/lang/Object;

    .line 609
    iput p4, p0, Lcom/oneplus/camera/CameraThread$CameraPreviewStartRequest;->flags:I

    .line 610
    return-void
.end method
