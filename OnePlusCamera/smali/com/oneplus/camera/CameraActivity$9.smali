.class Lcom/oneplus/camera/CameraActivity$9;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->disableBurstPhotoCapture()Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1522
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$9;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$9;->this$0:Lcom/oneplus/camera/CameraActivity;

    # invokes: Lcom/oneplus/camera/CameraActivity;->enableBurstPhotoCapture(Lcom/oneplus/base/Handle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraActivity;->access$1700(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)V

    .line 1527
    return-void
.end method