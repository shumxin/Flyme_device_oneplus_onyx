.class Lcom/meizu/media/camera/capturemode/InvalidCaptureMode;
.super Lcom/meizu/media/camera/InvalidMode;
.source "InvalidCaptureMode.java"

# interfaces
.implements Lcom/meizu/media/camera/capturemode/CaptureMode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/InvalidMode",
        "<",
        "Lcom/meizu/media/camera/capturemode/CaptureMode;",
        ">;",
        "Lcom/meizu/media/camera/capturemode/CaptureMode;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/meizu/media/camera/InvalidMode;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomSettings()Lcom/oneplus/base/Settings;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImage(Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "usage"    # Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method
