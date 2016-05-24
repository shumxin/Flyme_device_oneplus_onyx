.class public abstract Lcom/meizu/media/camera/capturemode/BasicCaptureMode;
.super Lcom/meizu/media/camera/BasicMode;
.source "BasicCaptureMode.java"

# interfaces
.implements Lcom/meizu/media/camera/capturemode/CaptureMode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/BasicMode",
        "<",
        "Lcom/meizu/media/camera/capturemode/CaptureMode;",
        ">;",
        "Lcom/meizu/media/camera/capturemode/CaptureMode;"
    }
.end annotation


# instance fields
.field private m_CustomSettings:Lcom/oneplus/base/Settings;

.field private final m_CustomSettingsName:Ljava/lang/String;

.field private m_IsCustomSettingsReady:Z


# direct methods
.method protected constructor <init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "customSettingsName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/BasicMode;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V

    .line 27
    iput-object p3, p0, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->m_CustomSettingsName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getCustomSettings()Lcom/oneplus/base/Settings;
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->verifyAccess()V

    .line 36
    iget-boolean v0, p0, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->m_IsCustomSettingsReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->RELEASED:Lcom/meizu/media/camera/Mode$State;

    if-eq v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->m_CustomSettingsName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->onCreateCustomSettings(Ljava/lang/String;)Lcom/oneplus/base/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/base/Settings;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->m_IsCustomSettingsReady:Z

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/base/Settings;

    return-object v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/oneplus/base/Settings;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 55
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    new-instance v1, Lcom/oneplus/base/Settings;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    .end local v0    # "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/base/Settings;

    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->release()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/BasicCaptureMode;->m_CustomSettings:Lcom/oneplus/base/Settings;

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/meizu/media/camera/BasicMode;->onRelease()V

    .line 74
    return-void
.end method
