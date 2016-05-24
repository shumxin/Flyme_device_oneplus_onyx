.class public final Lcom/meizu/media/camera/manual/ManualCaptureMode;
.super Lcom/meizu/media/camera/capturemode/ComponentBasedCaptureMode;
.source "ManualCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/manual/ManualCaptureMode$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/capturemode/ComponentBasedCaptureMode",
        "<",
        "Lcom/meizu/media/camera/manual/ManualModeUI;",
        ">;"
    }
.end annotation


# static fields
.field public static final ENABLE_MANUAL_MODE:Z = true


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 26
    const-string v0, "Manual"

    const-string v1, "manual"

    const-class v2, Lcom/meizu/media/camera/manual/ManualModeUI;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/meizu/media/camera/capturemode/ComponentBasedCaptureMode;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    sget-object v0, Lcom/meizu/media/camera/manual/ManualCaptureMode;->PROP_TARGET_CAMERA_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/manual/ManualCaptureMode;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/meizu/media/camera/manual/ManualCaptureMode$1;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/manual/ManualCaptureMode$1;-><init>(Lcom/meizu/media/camera/manual/ManualCaptureMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/manual/ManualCaptureMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualCaptureMode;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualCaptureMode;->disable()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 65
    sget-object v0, Lcom/meizu/media/camera/manual/ManualCaptureMode$2;->$SwitchMap$com$oneplus$camera$capturemode$CaptureMode$ImageUsage:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 70
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
