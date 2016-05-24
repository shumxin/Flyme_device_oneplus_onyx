.class public Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;
.super Lcom/meizu/media/camera/capturemode/SimpleCaptureMode;
.source "PhotoCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$10;
    }
.end annotation


# static fields
.field private static final SETTINGS_KEY_SCENE_BACK:Ljava/lang/String; = "Scene.Back"

.field private static final SETTINGS_KEY_SCENE_FRONT:Ljava/lang/String; = "Scene.Front"


# instance fields
.field private final m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private final m_IsCapturingRawPhotoCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsSceneResetNeeded:Z

.field private final m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/meizu/media/camera/IntentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private final m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/meizu/media/camera/scene/SceneEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/meizu/media/camera/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneId:Ljava/lang/String;

.field private m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private final m_ShutterHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "Scene.Back"

    invoke-static {v0}, Lcom/oneplus/base/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 123
    const-string v0, "Scene.Front"

    invoke-static {v0}, Lcom/oneplus/base/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 133
    const-string v0, "photo"

    invoke-direct {p0, p1, v0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;
    .param p2, "customSettingsName"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "Photo"

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/meizu/media/camera/capturemode/SimpleCaptureMode;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;Lcom/meizu/media/camera/media/MediaType;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$1;-><init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 67
    new-instance v0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$2;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$2;-><init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 75
    new-instance v0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$3;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$3;-><init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_IsCapturingRawPhotoCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 83
    new-instance v0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$4;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$4;-><init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 93
    new-instance v0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$5;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$5;-><init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    .line 101
    new-instance v0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$6;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$6;-><init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 109
    new-instance v0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$7;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$7;-><init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 148
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 151
    const-class v0, Lcom/meizu/media/camera/scene/SceneManager;

    new-instance v1, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$8;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$8;-><init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V

    invoke-static {p1, v0, p1, v1}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/base/BaseActivity$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;
    .param p2, "x2"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onCameraChanged(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onIsCapturingRawPhotoChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Lcom/meizu/media/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/meizu/media/camera/scene/Scene;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onSceneChanged(Lcom/meizu/media/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onPrepareAdvancedSettings(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Lcom/meizu/media/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/meizu/media/camera/scene/Scene;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onSceneAdded(Lcom/meizu/media/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/meizu/media/camera/CaptureEventArgs;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onShutter(Lcom/meizu/media/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Lcom/meizu/media/camera/scene/SceneManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;
    .param p1, "x1"    # Lcom/meizu/media/camera/scene/SceneManager;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onSceneManagerFound(Lcom/meizu/media/camera/scene/SceneManager;)V

    return-void
.end method

.method private applyScene(Lcom/meizu/media/camera/Camera;)V
    .locals 8
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 166
    iget-object v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-nez v4, :cond_1

    .line 168
    iget-object v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v5, "applyScene() - No SceneManager interface"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    .line 178
    .local v3, "settings":Lcom/oneplus/base/Settings;
    iget-boolean v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    if-eqz v4, :cond_2

    .line 180
    const-string v4, "Scene.Back"

    invoke-virtual {v3, v4, v7}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v4, "Scene.Front"

    invoke-virtual {v3, v4, v7}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    iput-boolean v6, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    .line 184
    :cond_2
    sget-object v4, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v4, v5, :cond_4

    .line 185
    const-string v4, "Scene.Front"

    const-string v5, "Face Beauty (Photo)"

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    .line 188
    :goto_1
    iget-object v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v4, :cond_0

    .line 190
    iget-object v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 191
    :cond_3
    iget-object v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v5, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    invoke-interface {v4, v5, v6}, Lcom/meizu/media/camera/scene/SceneManager;->setScene(Lcom/meizu/media/camera/scene/Scene;I)Z

    goto :goto_0

    .line 187
    :cond_4
    const-string v4, "Scene.Back"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    goto :goto_1

    .line 194
    :cond_5
    iget-object v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v5, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/meizu/media/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 195
    .local v2, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/scene/Scene;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_0

    .line 197
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/scene/Scene;

    .line 198
    .local v1, "scene":Lcom/meizu/media/camera/scene/Scene;
    sget-object v4, Lcom/meizu/media/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4}, Lcom/meizu/media/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 200
    iget-object v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    invoke-interface {v4, v1, v6}, Lcom/meizu/media/camera/scene/SceneManager;->setScene(Lcom/meizu/media/camera/scene/Scene;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyScene() - Fail to change scene to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private isRawCaptureEnabled()Z
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v1, "RawCapture"

    invoke-virtual {v0, v1}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V
    .locals 3
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 235
    sget-object v0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$10;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStateChanged() - isRawCaptureEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    invoke-direct {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraChanged(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "newCamera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onCameraChanged() - reset raw capture property"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V

    .line 252
    invoke-direct {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V

    .line 256
    :cond_0
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/meizu/media/camera/Camera;)V

    .line 257
    return-void
.end method

.method private onIsCapturingRawPhotoChanged(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isCapturingRawPhoto"    # Ljava/lang/Boolean;

    .prologue
    .line 312
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private onPrepareAdvancedSettings(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 323
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 324
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-eqz v0, :cond_1

    .line 326
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const-string v3, "IsRawCaptureVisible"

    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const-string v1, "IsSmileCaptureVisible"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    :cond_1
    return-void

    .line 327
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onSceneAdded(Lcom/meizu/media/camera/scene/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/meizu/media/camera/scene/Scene;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/media/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/meizu/media/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onSceneAdded() - Change scene to "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/meizu/media/camera/scene/SceneManager;->setScene(Lcom/meizu/media/camera/scene/Scene;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneAdded() - Fail to change scene to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    return-void
.end method

.method private onSceneChanged(Lcom/meizu/media/camera/scene/Scene;)V
    .locals 4
    .param p1, "scene"    # Lcom/meizu/media/camera/scene/Scene;

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 376
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-eqz v0, :cond_0

    .line 380
    sget-object v2, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/meizu/media/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/meizu/media/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 381
    .local v1, "sceneId":Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_3

    .line 382
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    const-string v3, "Scene.Front"

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 380
    .end local v1    # "sceneId":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 384
    .restart local v1    # "sceneId":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    const-string v3, "Scene.Back"

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onSceneManagerFound(Lcom/meizu/media/camera/scene/SceneManager;)V
    .locals 2
    .param p1, "sceneManager"    # Lcom/meizu/media/camera/scene/SceneManager;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    .line 393
    sget-object v0, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 394
    sget-object v0, Lcom/meizu/media/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 397
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/meizu/media/camera/Camera;)V

    .line 399
    :cond_0
    return-void
.end method

.method private onShutter(Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "args"    # Lcom/meizu/media/camera/CaptureEventArgs;

    .prologue
    .line 404
    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getFrameIndex()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    if-nez v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const-class v1, Lcom/meizu/media/camera/ui/ProcessingDialog;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/ProcessingDialog;

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    .line 409
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - No ProcessingDialog interface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Already has raw processing dialog"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V
    .locals 3
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "enabled"    # Z

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setRawCaptureState() - camera is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRawCaptureState() - raw capture is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    new-instance v0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$9;-><init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Lcom/meizu/media/camera/Camera;Z)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 222
    sget-object v0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$10;->$SwitchMap$com$oneplus$camera$capturemode$CaptureMode$ImageUsage:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 225
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onEnter(Lcom/meizu/media/camera/Mode;I)Z
    .locals 1
    .param p1, "x0"    # Lcom/meizu/media/camera/Mode;
    .param p2, "x1"    # I

    .prologue
    .line 42
    check-cast p1, Lcom/meizu/media/camera/capturemode/CaptureMode;

    .end local p1    # "x0":Lcom/meizu/media/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onEnter(Lcom/meizu/media/camera/capturemode/CaptureMode;I)Z

    move-result v0

    return v0
.end method

.method protected onEnter(Lcom/meizu/media/camera/capturemode/CaptureMode;I)Z
    .locals 4
    .param p1, "prevMode"    # Lcom/meizu/media/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    .line 265
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/capturemode/SimpleCaptureMode;->onEnter(Lcom/meizu/media/camera/capturemode/CaptureMode;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    .line 269
    :cond_0
    new-instance v1, Lcom/oneplus/base/Settings;

    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    .line 272
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/meizu/media/camera/Camera;)V

    .line 275
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 276
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_IsCapturingRawPhotoCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 279
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 280
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/OPCameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 283
    iget-object v1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnter() - isRawCaptureEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v1

    invoke-direct {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onExit(Lcom/meizu/media/camera/Mode;I)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/media/camera/Mode;
    .param p2, "x1"    # I

    .prologue
    .line 42
    check-cast p1, Lcom/meizu/media/camera/capturemode/CaptureMode;

    .end local p1    # "x0":Lcom/meizu/media/camera/Mode;
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onExit(Lcom/meizu/media/camera/capturemode/CaptureMode;I)V

    return-void
.end method

.method protected onExit(Lcom/meizu/media/camera/capturemode/CaptureMode;I)V
    .locals 3
    .param p1, "nextMode"    # Lcom/meizu/media/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/capturemode/SimpleCaptureMode;->onExit(Lcom/meizu/media/camera/capturemode/CaptureMode;I)V

    .line 295
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_IsCapturingRawPhotoCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_IsCapturingRawPhotoCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    if-eqz v0, :cond_3

    .line 302
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/OPCameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onExit() - reset raw capture property"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V

    .line 307
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 342
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v1, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/scene/SceneManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 345
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v1, Lcom/meizu/media/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/scene/SceneManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->release()V

    .line 353
    :cond_1
    invoke-super {p0}, Lcom/meizu/media/camera/capturemode/SimpleCaptureMode;->onRelease()V

    .line 354
    return-void
.end method
