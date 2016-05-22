.class final Lcom/oneplus/camera/FlashControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "FlashControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/FlashController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/FlashControllerImpl$10;,
        Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;
    }
.end annotation


# static fields
.field private static final FLAG_IGNORE_UPDATE_FLASH_STATE:I = 0x1

.field private static final MSG_CLOSE_TORCH_FLASH:I = 0x2711

.field private static final SETTINGS_KEY_FLASH_MODE_BACK:Ljava/lang/String; = "FlashMode.Back"

.field private static final SETTINGS_KEY_FLASH_MODE_FRONT:Ljava/lang/String; = "FlashMode.Front"

.field private static final THRESHOLD_LOW_BATTERY:I = 0xf


# instance fields
.field private m_BurstFlashDisableHandle:Lcom/oneplus/base/Handle;

.field private m_CameraSystemService:Lcom/oneplus/camera/CameraService;

.field private m_ExposureController:Lcom/oneplus/camera/ExposureController;

.field private final m_FlashDisableHandle:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsDisabledByHwLimitation:Z

.field private m_TorchFlashHandle:Lcom/oneplus/base/Handle;

.field private m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

.field private m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/SupportedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "FlashMode.Back"

    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v0, "FlashMode.Front"

    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 102
    const-string v0, "Flash Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    .line 41
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FlashControllerImpl$1;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/FlashControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->torchFlashRemote(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/FlashControllerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/FlashControllerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_BurstFlashDisableHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_BurstFlashDisableHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/FlashControllerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/FlashMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/camera/CameraService;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->enableFlash(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/camera/ExposureController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/ExposureController;)Lcom/oneplus/camera/ExposureController;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ExposureController;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    return-object p1
.end method

.method static synthetic access$600(Lcom/oneplus/camera/FlashControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/camera/FlashControllerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/camera/FlashControllerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/oneplus/camera/FlashControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FlashControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    return p1
.end method

.method private enableFlash(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->verifyAccess()V

    .line 138
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    goto :goto_0
.end method

.method private setFlashMode(Lcom/oneplus/camera/FlashMode;)Z
    .locals 4
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 297
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 299
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "setFlashMode() - No primary camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_0
    return v1

    .line 302
    :cond_0
    new-instance v2, Lcom/oneplus/camera/FlashControllerImpl$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/camera/FlashControllerImpl$8;-><init>(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FlashMode;)V

    invoke-static {v0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "setFlashMode() - Fail to perform cross-thread operation"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setFlashModeProp(Lcom/oneplus/camera/FlashMode;Z)Z
    .locals 5
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;
    .param p2, "forceSet"    # Z

    .prologue
    const/4 v3, 0x0

    .line 328
    if-nez p2, :cond_0

    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_5

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->verifyAccess()V

    .line 332
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "setFlashModeProp() - Flash mode : "

    invoke-static {v2, v4, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    if-nez p1, :cond_1

    .line 334
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No flash mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    :cond_1
    sget-object v2, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "setFlashModeProp() - No flash support"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 352
    :goto_0
    return v2

    .line 342
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 343
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_4

    const-string v1, "FlashMode.Back"

    .line 344
    .local v1, "settingsKey":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 347
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v2, p1}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 343
    .end local v1    # "settingsKey":Ljava/lang/String;
    :cond_4
    const-string v1, "FlashMode.Front"

    goto :goto_1

    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_5
    move v2, v3

    .line 352
    goto :goto_0
.end method

.method private torchFlashRemote(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 424
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-nez v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v1, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/CameraService;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/SupportedState;->SUPPORTED:Lcom/oneplus/camera/SupportedState;

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 430
    if-eqz p1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    invoke-interface {v0}, Lcom/oneplus/camera/CameraService;->torchFlash()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private updateFlashState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 440
    const/16 v3, 0x2711

    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 441
    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3, v5}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    .line 444
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 445
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 446
    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "updateFlashState() - No primary camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_0
    if-eqz v0, :cond_4

    .line 451
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_3

    const-string v2, "FlashMode.Back"

    .line 456
    .local v2, "settingsKey":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    .line 458
    :cond_1
    if-eqz v2, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    :cond_2
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 461
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-super {p0, v3, v4}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 462
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 463
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 517
    :goto_1
    return-void

    .line 451
    .end local v2    # "settingsKey":Ljava/lang/String;
    :cond_3
    const-string v2, "FlashMode.Front"

    goto :goto_0

    .line 453
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 467
    :cond_5
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 470
    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 472
    sget-object v4, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;

    iget-object v3, v3, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;->reason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {p0, v4, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 473
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 474
    sget-object v3, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    goto :goto_1

    .line 477
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xf

    if-gt v3, v4, :cond_7

    .line 479
    iput-boolean v5, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    .line 480
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 481
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 482
    sget-object v3, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    goto :goto_1

    .line 485
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v4, Lcom/oneplus/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 487
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->AE_LOCKED:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 488
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 489
    sget-object v3, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    goto/16 :goto_1

    .line 492
    :cond_8
    iput-boolean v6, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    .line 495
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 496
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v3

    const-class v4, Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/FlashMode;

    .line 500
    .local v1, "flashMode":Lcom/oneplus/camera/FlashMode;
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl$10;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 515
    :cond_9
    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 516
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v3, v1}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 503
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_9

    .line 504
    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    goto :goto_2

    .line 507
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_9

    .line 508
    sget-object v1, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    goto :goto_2

    .line 511
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_9

    .line 512
    sget-object v1, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    goto :goto_2

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "reason"    # Lcom/oneplus/camera/FlashController$FlashDisabledReason;
    .param p2, "flags"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->verifyAccess()V

    .line 112
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "disableFlash() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 119
    :cond_0
    if-nez p1, :cond_1

    .line 120
    sget-object p1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 123
    :cond_1
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;-><init>(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/FlashController$FlashDisabledReason;)V

    .line 124
    .local v0, "handle":Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 157
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    .line 166
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 169
    const-class v2, Lcom/oneplus/camera/ExposureController;

    new-instance v3, Lcom/oneplus/camera/FlashControllerImpl$2;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FlashControllerImpl$2;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 201
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FlashControllerImpl$3;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    .line 209
    .local v0, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/FlashControllerImpl$4;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FlashControllerImpl$4;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 237
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 238
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/FlashControllerImpl$5;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FlashControllerImpl$5;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 250
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 251
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 252
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/FlashControllerImpl$6;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FlashControllerImpl$6;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 263
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTING:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/FlashControllerImpl$7;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FlashControllerImpl$7;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 274
    const-class v2, Lcom/oneplus/camera/CameraService;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraService;

    iput-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    .line 275
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v3, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/CameraService;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    .line 280
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 288
    check-cast p2, Lcom/oneplus/camera/FlashMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashModeProp(Lcom/oneplus/camera/FlashMode;Z)Z

    move-result v0

    .line 289
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public torchFlash(J)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "durationMillis"    # J

    .prologue
    const/16 v5, 0x2711

    const/4 v3, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 362
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 364
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "torchFlash() - No camera to torch"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 417
    :goto_0
    return-object v2

    .line 369
    :cond_0
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "torchFlash() - No flash"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 372
    goto :goto_0

    .line 374
    :cond_1
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    if-eqz v2, :cond_2

    .line 376
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string v4, "torchFlash() - Flash is disabled"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 377
    goto :goto_0

    .line 381
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 382
    new-instance v2, Lcom/oneplus/camera/FlashControllerImpl$9;

    const-string v3, "TorchFlashHandle"

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/FlashControllerImpl$9;-><init>(Lcom/oneplus/camera/FlashControllerImpl;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    .line 394
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-nez v2, :cond_3

    .line 396
    const-class v2, Lcom/oneplus/camera/CameraService;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraService;

    iput-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    .line 397
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-eqz v2, :cond_3

    .line 398
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v3, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/CameraService;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 400
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-eqz v2, :cond_4

    .line 402
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v3, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/CameraService;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/SupportedState;

    .line 403
    .local v1, "supportedState":Lcom/oneplus/camera/SupportedState;
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl$10;->$SwitchMap$com$oneplus$camera$SupportedState:[I

    invoke-virtual {v1}, Lcom/oneplus/camera/SupportedState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 417
    .end local v1    # "supportedState":Lcom/oneplus/camera/SupportedState;
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 406
    .restart local v1    # "supportedState":Lcom/oneplus/camera/SupportedState;
    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->torchFlashRemote(Z)V

    .line 407
    invoke-static {p0, v5, p1, p2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_1

    .line 410
    :pswitch_1
    sget-object v2, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 411
    invoke-static {p0, v5, p1, p2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_1

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
