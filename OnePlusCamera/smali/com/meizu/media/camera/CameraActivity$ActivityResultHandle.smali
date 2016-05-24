.class final Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityResultHandle"
.end annotation


# instance fields
.field public final callback:Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;

.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;)V
    .locals 1
    .param p2, "callback"    # Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;->this$0:Lcom/meizu/media/camera/CameraActivity;

    .line 494
    const-string v0, "ActivityResult"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 495
    iput-object p2, p0, Lcom/meizu/media/camera/CameraActivity$ActivityResultHandle;->callback:Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;

    .line 496
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 500
    return-void
.end method
