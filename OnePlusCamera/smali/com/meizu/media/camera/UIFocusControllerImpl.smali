.class final Lcom/meizu/media/camera/UIFocusControllerImpl;
.super Lcom/meizu/media/camera/ProxyComponent;
.source "UIFocusControllerImpl.java"

# interfaces
.implements Lcom/meizu/media/camera/FocusController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/ProxyComponent",
        "<",
        "Lcom/meizu/media/camera/FocusController;",
        ">;",
        "Lcom/meizu/media/camera/FocusController;"
    }
.end annotation


# instance fields
.field private final m_FocusLockHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 47
    const-string v0, "Focus Controller (UI)"

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity;->getCameraThread()Lcom/meizu/media/camera/CameraThread;

    move-result-object v1

    const-class v2, Lcom/meizu/media/camera/FocusController;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/meizu/media/camera/ProxyComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/UIFocusControllerImpl;->m_FocusLockHandles:Ljava/util/LinkedList;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/UIFocusControllerImpl;Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/UIFocusControllerImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/UIFocusControllerImpl;->unlockFocus(Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/UIFocusControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/UIFocusControllerImpl;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/meizu/media/camera/UIFocusControllerImpl;->unlockFocus()V

    return-void
.end method

.method private unlockFocus()V
    .locals 4

    .prologue
    .line 173
    iget-object v2, p0, Lcom/meizu/media/camera/UIFocusControllerImpl;->m_FocusLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    return-void

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/UIFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "unlockFocus()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/meizu/media/camera/UIFocusControllerImpl;->m_FocusLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;

    .line 179
    .local v0, "handles":[Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;
    iget-object v2, p0, Lcom/meizu/media/camera/UIFocusControllerImpl;->m_FocusLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 180
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 181
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 180
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private unlockFocus(Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/meizu/media/camera/UIFocusControllerImpl;->m_FocusLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p1, Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;->internalHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method


# virtual methods
.method public lockFocus(I)Lcom/oneplus/base/Handle;
    .locals 8
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 81
    invoke-virtual {p0}, Lcom/meizu/media/camera/UIFocusControllerImpl;->verifyAccess()V

    .line 82
    sget-object v2, Lcom/meizu/media/camera/UIFocusControllerImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/UIFocusControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/FocusMode;->MANUAL:Lcom/meizu/media/camera/FocusMode;

    if-ne v2, v3, :cond_1

    .line 84
    iget-object v2, p0, Lcom/meizu/media/camera/UIFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "lockFocus() - Focus mode is manual, ignore"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-object v1

    .line 87
    :cond_1
    const-string v2, "lockFocus"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v2, v3, v4}, Lcom/meizu/media/camera/UIFocusControllerImpl;->callTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 88
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    new-instance v1, Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;

    invoke-direct {v1, p0, v0}, Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;-><init>(Lcom/meizu/media/camera/UIFocusControllerImpl;Lcom/oneplus/base/Handle;)V

    .line 91
    .local v1, "wrappedHandle":Lcom/meizu/media/camera/UIFocusControllerImpl$FocusLockHandle;
    iget-object v2, p0, Lcom/meizu/media/camera/UIFocusControllerImpl;->m_FocusLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/meizu/media/camera/UIFocusControllerImpl;->m_FocusLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 93
    sget-object v2, Lcom/meizu/media/camera/UIFocusControllerImpl;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/UIFocusControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onBindingToTargetProperties(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ProxyComponent;->onBindingToTargetProperties(Ljava/util/List;)V

    .line 56
    sget-object v0, Lcom/meizu/media/camera/UIFocusControllerImpl;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/meizu/media/camera/UIFocusControllerImpl;->PROP_CAN_CHANGE_FOCUS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/meizu/media/camera/UIFocusControllerImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/meizu/media/camera/UIFocusControllerImpl;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/meizu/media/camera/UIFocusControllerImpl;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method protected onInitialize()V
    .locals 6

    .prologue
    .line 106
    invoke-super {p0}, Lcom/meizu/media/camera/ProxyComponent;->onInitialize()V

    .line 109
    const-class v4, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/UIFocusControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    .line 112
    .local v1, "captureModeManager":Lcom/meizu/media/camera/capturemode/CaptureModeManager;
    invoke-virtual {p0}, Lcom/meizu/media/camera/UIFocusControllerImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 113
    .local v0, "activity":Lcom/meizu/media/camera/CameraActivity;
    new-instance v3, Lcom/meizu/media/camera/UIFocusControllerImpl$1;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/UIFocusControllerImpl$1;-><init>(Lcom/meizu/media/camera/UIFocusControllerImpl;)V

    .line 121
    .local v3, "unlockFocusCallback":Lcom/oneplus/base/PropertyChangedCallback;
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4, v3}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 122
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4, v3}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 123
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/UIFocusControllerImpl$2;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/UIFocusControllerImpl$2;-><init>(Lcom/meizu/media/camera/UIFocusControllerImpl;)V

    invoke-virtual {v0, v4, v5}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 132
    const-class v4, Lcom/meizu/media/camera/media/ResolutionManager;

    invoke-virtual {v0, v4}, Lcom/meizu/media/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/media/ResolutionManager;

    .line 133
    .local v2, "resolutionManager":Lcom/meizu/media/camera/media/ResolutionManager;
    if-eqz v2, :cond_1

    .line 134
    sget-object v4, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/UIFocusControllerImpl$3;

    invoke-direct {v5, p0, v0}, Lcom/meizu/media/camera/UIFocusControllerImpl$3;-><init>(Lcom/meizu/media/camera/UIFocusControllerImpl;Lcom/meizu/media/camera/CameraActivity;)V

    invoke-interface {v2, v4, v5}, Lcom/meizu/media/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 144
    sget-object v4, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/UIFocusControllerImpl$4;

    invoke-direct {v5, p0, v0}, Lcom/meizu/media/camera/UIFocusControllerImpl$4;-><init>(Lcom/meizu/media/camera/UIFocusControllerImpl;Lcom/meizu/media/camera/CameraActivity;)V

    invoke-interface {v2, v4, v5}, Lcom/meizu/media/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 156
    :goto_0
    if-eqz v1, :cond_0

    .line 157
    sget-object v4, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v4, v3}, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 158
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/meizu/media/camera/UIFocusControllerImpl;->TAG:Ljava/lang/String;

    const-string v5, "getResolutionManager() - No ResolutionManager"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onTargetPropertyChanged(JLcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p3, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    .local p4, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    sget-object v0, Lcom/meizu/media/camera/UIFocusControllerImpl;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p3, v0, :cond_0

    .line 70
    invoke-virtual {p4}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/FocusMode;

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->MANUAL:Lcom/meizu/media/camera/FocusMode;

    if-ne v0, v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/meizu/media/camera/UIFocusControllerImpl;->unlockFocus()V

    .line 73
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/media/camera/ProxyComponent;->onTargetPropertyChanged(JLcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 74
    return-void
.end method

.method public startAutoFocus(Ljava/util/List;I)Lcom/oneplus/base/Handle;
    .locals 6
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;I)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/meizu/media/camera/UIFocusControllerImpl;->verifyAccess()V

    .line 166
    const-string v0, "startAutoFocus"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/media/camera/UIFocusControllerImpl;->callTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method
