.class final Lcom/oneplus/camera/ui/CaptureBar;
.super Lcom/oneplus/camera/UIComponent;
.source "CaptureBar.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CaptureControlPanel;
.implements Lcom/oneplus/camera/ui/CaptureButtons;
.implements Lcom/oneplus/camera/KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/CaptureBar$13;,
        Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;,
        Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;,
        Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;,
        Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;,
        Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;
    }
.end annotation


# static fields
.field private static final BURST_TRIGGER_THRESHOLD:J = 0x1f4L

.field private static final ENABLE_DEBUG_MODE_COUNT:I = 0x5

.field public static final MIN_KEY_DOWN_INTERVAL:J = 0x190L

.field private static final MSG_CAPTURE_UI_ENABLED:I = 0x271a

.field private static final MSG_ENANLE_DEBUG_MODE:I = 0x2724

.field private static final MSG_START_BURST_CAPTURE:I = 0x2710

.field private static final PENDING_BUTTON_CLICK_DURATION:J = 0x320L


# instance fields
.field private m_CaptureBar:Landroid/view/View;

.field private m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

.field private m_DebugModeClickCount:I

.field private m_IsCapturingBurstPhotos:Z

.field private m_IsExternalMethod:Ljava/lang/reflect/Method;

.field private m_IsPrimaryButtonPressed:Z

.field private m_LastKeyUpTime:J

.field private m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

.field private final m_PanelStyleHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PendingPrimaryButtonPressedTime:J

.field private m_PendingPrimaryButtonReleasedTime:J

.field private m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

.field private m_PrimaryButton:Landroid/widget/ImageButton;

.field private final m_PrimaryButtonBackgroundHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

.field private final m_PrimaryButtonIconHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PrimaryButtonStyle:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

.field private final m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

.field private m_SecondaryButton:Landroid/widget/ImageButton;

.field private m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

.field private m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 181
    const-string v0, "Capture Bar"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonBackgroundHandles:Ljava/util/LinkedList;

    .line 75
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->NONE:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;

    .line 77
    sget-object v0, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->NORMAL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyle:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    .line 82
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->NONE:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_LastKeyUpTime:J

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_DebugModeClickCount:I

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar;->restoreButtonStyle(Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar;->restoreButtonVisibility(Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/ui/CaptureBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonFunctions(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CaptureHandle;)Lcom/oneplus/camera/CaptureHandle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p1, "x1"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateCaptureBarVisibility()V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->restoreButtonBackground(Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->restoreButtonIcon(Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->restorePanelStyle(Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonReleased()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonPressed()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onSecondaryButtonClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p1, "x1"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onBurstPhotoReceived(Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p1, "x1"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->onCaptureStarted(Lcom/oneplus/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonVisibilities()V

    return-void
.end method

.method private isExternal(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 481
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    .line 484
    .local v1, "inputDevice":Landroid/view/InputDevice;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsExternalMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 485
    const-class v2, Landroid/view/InputDevice;

    const-string v4, "isExternal"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsExternalMethod:Ljava/lang/reflect/Method;

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsExternalMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 491
    :goto_0
    return v2

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v4, "isExternal - check KeyEvent failed"

    invoke-static {v2, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 491
    goto :goto_0
.end method

.method private isPrimaryButtonAvailable()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->isVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBurstPhotoReceived(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 6
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    const/4 v5, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d/20"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getFrameIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "hint":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v1, v2, v0, v5}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-nez v1, :cond_3

    .line 245
    const-class v1, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    const/16 v2, 0xf

    invoke-interface {v1, v0, v2}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private onCaptureStarted(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 2
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 255
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStarted() - Unknown capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 265
    const/16 v0, 0x2710

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onCaptureUIEnabled()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x320

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 279
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    if-eqz v2, :cond_1

    .line 281
    iget-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonPressedTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureUIEnabled() - Handle pending primary button pressing"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    .line 285
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonPressed()V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonReleasedTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 292
    iget-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonPressedTime:J

    iget-wide v4, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonReleasedTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 294
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureUIEnabled() - Handle pending primary button pressing"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonPressed()V

    .line 299
    :goto_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureUIEnabled() - Handle pending primary button releasing"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonReleased()V

    goto :goto_0

    .line 298
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    goto :goto_1
.end method

.method private onPrimaryButtonPressed()V
    .locals 4

    .prologue
    .line 553
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    if-eqz v1, :cond_0

    .line 604
    :goto_0
    return-void

    .line 555
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    .line 556
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonReleasedTime:J

    .line 558
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonPressed()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v0, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-direct {v0, v1}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;-><init>(Lcom/oneplus/camera/ui/CaptureButtons$Button;)V

    .line 562
    .local v0, "e":Lcom/oneplus/camera/ui/CaptureButtonEventArgs;
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar;->EVENT_BUTTON_PRESSED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/ui/CaptureBar;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 563
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonPressed() - Handled by others"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 572
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonPressed() - Capture UI is disabled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonPressedTime:J

    goto :goto_0

    .line 576
    :cond_2
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$ui$CaptureBar$CaptureButtonFunction:[I

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 579
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 580
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonPressed() - Self timer is started"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 598
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonPressed() - Burst capture is disabled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_4
    const/16 v1, 0x2710

    const-wide/16 v2, 0x1f4

    invoke-static {p0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto/16 :goto_0

    .line 576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onPrimaryButtonReleased()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 610
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    if-nez v1, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsPrimaryButtonPressed:Z

    .line 614
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonReleased()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const/16 v1, 0x2710

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 620
    new-instance v0, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-direct {v0, v1}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;-><init>(Lcom/oneplus/camera/ui/CaptureButtons$Button;)V

    .line 621
    .local v0, "e":Lcom/oneplus/camera/ui/CaptureButtonEventArgs;
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar;->EVENT_BUTTON_RELEASED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/ui/CaptureBar;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 622
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureButtonEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonReleased() - Handled by others"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 632
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonReleased() - Capture UI is disabled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PendingPrimaryButtonReleasedTime:J

    goto :goto_0

    .line 636
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isPrimaryButtonAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 637
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 642
    :cond_4
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$ui$CaptureBar$CaptureButtonFunction:[I

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 647
    :pswitch_0
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsCapturingBurstPhotos:Z

    if-eqz v1, :cond_5

    .line 649
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonReleased() - Stop burst shots"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsCapturingBurstPhotos:Z

    .line 651
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CaptureHandle;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    goto :goto_0

    .line 653
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 655
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonReleased() - Stop self timer"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CaptureHandle;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    goto/16 :goto_0

    .line 660
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 662
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 665
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->capturePhoto()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 666
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonReleased() - Fail to capture photo"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 675
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    sget-object v2, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 680
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->captureVideo()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 681
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onPrimaryButtonReleased() - Fail to capture video"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 686
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CaptureHandle;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_VideoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    goto/16 :goto_0

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 677
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private onSecondaryButtonClicked()V
    .locals 2

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isCaptureUIEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$ui$CaptureBar$CaptureButtonFunction:[I

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 708
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_2

    .line 709
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onSecondaryButtonClicked() - Take video snapshot"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->capturePhoto()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 711
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onSecondaryButtonClicked() - Fail to capture photo"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private restoreButtonBackground(Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 725
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->handleList:Ljava/util/LinkedList;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z

    move-result v0

    .line 726
    .local v0, "isLastHandle":Z
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->handleList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    if-eqz v0, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    goto :goto_0
.end method

.method private restoreButtonIcon(Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 742
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->handleList:Ljava/util/LinkedList;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z

    move-result v0

    .line 743
    .local v0, "isLastHandle":Z
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->handleList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    if-eqz v0, :cond_0

    .line 748
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    goto :goto_0
.end method

.method private restoreButtonStyle(Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;I)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;
    .param p2, "flags"    # I

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 759
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 760
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonStyle()V

    .line 761
    return-void
.end method

.method private restoreButtonVisibility(Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;I)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;
    .param p2, "flags"    # I

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 768
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->handleList:Ljava/util/LinkedList;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z

    move-result v0

    .line 769
    .local v0, "isLast":Z
    iget-object v1, p1, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->handleList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonVisibilities()V

    goto :goto_0
.end method

.method private restorePanelStyle(Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 779
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 780
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updatePanelStyle()V

    .line 782
    :cond_0
    return-void
.end method

.method private startBurstCapture()V
    .locals 6

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 942
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    .line 943
    .local v1, "photoCaptureState":Lcom/oneplus/camera/PhotoCaptureState;
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/VideoCaptureState;

    .line 944
    .local v2, "videoCaptureState":Lcom/oneplus/camera/VideoCaptureState;
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 946
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v4, "startBurstCapture() - Burst capture is disabled"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :goto_0
    return-void

    .line 949
    :cond_0
    sget-object v3, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v3, :cond_1

    .line 951
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startBurstCapture() - Photo capture state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 954
    :cond_1
    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v2, v3, :cond_2

    .line 956
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startBurstCapture() - Video capture state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v4, "startBurstCapture()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->capturePhoto(I)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 964
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 966
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v4, "startBurstCapture() - Fail to capture photo"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 969
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_IsCapturingBurstPhotos:Z

    goto :goto_0
.end method

.method private updateButtonFunctions(Z)V
    .locals 2
    .param p1, "updateBackground"    # Z

    .prologue
    .line 977
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 988
    :goto_0
    if-eqz p1, :cond_0

    .line 989
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    .line 990
    :cond_0
    return-void

    .line 980
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_PHOTO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 981
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->NONE:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    goto :goto_0

    .line 984
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_VIDEO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    .line 985
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_PHOTO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    goto :goto_0

    .line 977
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateButtonImages()V
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonBackgroundHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1002
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$ui$CaptureBar$CaptureButtonFunction:[I

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1021
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1023
    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$ui$CaptureBar$CaptureButtonFunction:[I

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1039
    :cond_0
    :goto_1
    return-void

    .line 1005
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1011
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1018
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonBackgroundHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1026
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1030
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    if-nez v0, :cond_3

    .line 1031
    new-instance v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    .line 1032
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1037
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1002
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1023
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateButtonStyle()V
    .locals 5

    .prologue
    .line 1046
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 1049
    sget-object v2, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->NORMAL:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    .line 1050
    .local v2, "style":Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1051
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;

    iget-object v2, v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;->style:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    .line 1054
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyle:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    if-ne v3, v2, :cond_2

    .line 1072
    .end local v2    # "style":Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
    :cond_1
    :goto_0
    return-void

    .line 1058
    .restart local v2    # "style":Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
    :cond_2
    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyle:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    .line 1059
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1060
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1061
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v3, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$ui$CaptureButtons$ButtonStyle:[I

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1070
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->requestLayout()V

    goto :goto_0

    .line 1064
    :pswitch_0
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 1067
    :pswitch_1
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 1061
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateButtonVisibilities()V
    .locals 1

    .prologue
    .line 1078
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonVisibilities(I)V

    .line 1079
    return-void
.end method

.method private updateButtonVisibilities(I)V
    .locals 12
    .param p1, "flags"    # I

    .prologue
    const-wide/16 v4, 0x258

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1083
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1084
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    move v11, v3

    .line 1085
    .local v11, "animation":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1087
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_2

    .line 1088
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_1

    :goto_1
    sget-object v6, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1098
    :goto_2
    sget-object v2, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1110
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    .line 1113
    :goto_3
    return-void

    .end local v11    # "animation":Z
    :cond_0
    move v11, v7

    .line 1084
    goto :goto_0

    .restart local v11    # "animation":Z
    :cond_1
    move-wide v4, v8

    .line 1088
    goto :goto_1

    .line 1090
    :cond_2
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_3

    move-wide v8, v4

    :cond_3
    sget-object v10, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 1092
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;

    iget-boolean v1, v1, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->isVisible:Z

    if-eqz v1, :cond_6

    .line 1093
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_5

    :goto_4
    sget-object v6, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_5
    move-wide v4, v8

    goto :goto_4

    .line 1095
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_7

    move-wide v8, v4

    :cond_7
    sget-object v10, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 1104
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButtonFunction:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;->CAPTURE_PHOTO:Lcom/oneplus/camera/ui/CaptureBar$CaptureButtonFunction;

    if-ne v1, v2, :cond_8

    .line 1105
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_3

    .line 1107
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v7}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_3

    .line 1098
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateCaptureBarVisibility()V
    .locals 1

    .prologue
    .line 1119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/CaptureBar;->updateCaptureBarVisibility(I)V

    .line 1120
    return-void
.end method

.method private updateCaptureBarVisibility(I)V
    .locals 12
    .param p1, "flags"    # I

    .prologue
    const-wide/16 v4, 0x258

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1123
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1124
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1

    move v7, v8

    .line 1125
    .local v7, "animation":Z
    :goto_0
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    if-ne v1, v2, :cond_3

    .line 1127
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    if-eqz v7, :cond_2

    :goto_1
    sget-object v6, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1130
    :goto_2
    return-void

    .end local v7    # "animation":Z
    :cond_1
    move v7, v3

    .line 1124
    goto :goto_0

    .restart local v7    # "animation":Z
    :cond_2
    move-wide v4, v10

    .line 1127
    goto :goto_1

    .line 1129
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    if-eqz v7, :cond_4

    :goto_3
    sget-object v6, Lcom/oneplus/camera/ui/CaptureBar;->INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CaptureBar;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_4
    move-wide v4, v10

    goto :goto_3
.end method

.method private updatePanelStyle()V
    .locals 4

    .prologue
    .line 1137
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1157
    :goto_0
    return-void

    .line 1142
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1143
    sget-object v0, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->DEFAULT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    .line 1148
    .local v0, "style":Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    :goto_1
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$ui$CaptureControlPanel$Style:[I

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1154
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1145
    .end local v0    # "style":Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;

    iget-object v0, v1, Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;->style:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    .restart local v0    # "style":Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    goto :goto_1

    .line 1151
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 189
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 218
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 221
    :goto_0
    return-void

    .line 192
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onCaptureUIEnabled()V

    goto :goto_0

    .line 196
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->startBurstCapture()V

    goto :goto_0

    .line 200
    :sswitch_2
    iget v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_DebugModeClickCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 203
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->setDebugMode(Z)V

    .line 206
    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->showToast(I)V

    .line 214
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_0
    :goto_1
    iput v3, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_DebugModeClickCount:I

    goto :goto_0

    .line 210
    .restart local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->setDebugMode(Z)V

    .line 211
    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->showToast(I)V

    goto :goto_1

    .line 189
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x271a -> :sswitch_0
        0x2724 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 312
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 315
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 316
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    .line 317
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    .line 318
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 319
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$1;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 344
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v2, 0x7f0b0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    .line 345
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$2;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 365
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->addNavBarAlignedView(Landroid/view/View;)V

    .line 368
    invoke-virtual {v0, p0}, Lcom/oneplus/camera/CameraActivity;->setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;

    .line 371
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$3;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 379
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$4;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 389
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$5;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 400
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$6;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 409
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_VIDEO_SNAPSHOT_ENABLED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$7;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 417
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$8;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 425
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$9;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 445
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureBar$10;-><init>(Lcom/oneplus/camera/ui/CaptureBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 469
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonFunctions(Z)V

    .line 472
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 473
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_SecondaryButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->addAutoRotateView(Landroid/view/View;)V

    .line 475
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 499
    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    const/16 v2, 0x57

    if-ne p1, v2, :cond_3

    .line 508
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 509
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_LastKeyUpTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 511
    sget-object v2, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    .line 522
    .end local v0    # "currentTime":J
    :goto_0
    return-object v2

    .line 513
    .restart local v0    # "currentTime":J
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isPrimaryButtonAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_LastKeyUpTime:J

    .line 516
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonPressed()V

    .line 517
    invoke-direct {p0, p2}, Lcom/oneplus/camera/ui/CaptureBar;->isExternal(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 518
    const/16 v2, 0x2710

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 519
    :cond_2
    sget-object v2, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    goto :goto_0

    .line 522
    .end local v0    # "currentTime":J
    :cond_3
    sget-object v2, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 529
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-ne p1, v0, :cond_1

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->isPrimaryButtonAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->onPrimaryButtonReleased()V

    .line 541
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    .line 544
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    goto :goto_0
.end method

.method public setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "button"    # Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 790
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 791
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->isRunningOrInitializing(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 817
    :goto_0
    return-object v0

    .line 796
    :cond_0
    sget-object v2, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$ui$CaptureButtons$Button:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtons$Button;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 802
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setButtonBackground() - Unknown button : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonBackgroundHandles:Ljava/util/LinkedList;

    .line 805
    .local v1, "handleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;>;"
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$11;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/oneplus/camera/ui/CaptureBar$11;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Ljava/util/LinkedList;Landroid/graphics/drawable/Drawable;I)V

    .line 813
    .local v0, "handle":Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    goto :goto_0

    .line 796
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonIcon(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "button"    # Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 826
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 827
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/CaptureBar;->isRunningOrInitializing(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 853
    :goto_0
    return-object v0

    .line 832
    :cond_0
    sget-object v2, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$ui$CaptureButtons$Button:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtons$Button;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 838
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setButtonIcon() - Unknown button : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 835
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;

    .line 841
    .local v1, "handleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;>;"
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$12;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/oneplus/camera/ui/CaptureBar$12;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Ljava/util/LinkedList;Landroid/graphics/drawable/Drawable;I)V

    .line 849
    .local v0, "handle":Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonImages()V

    goto :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonStyle(Lcom/oneplus/camera/ui/CaptureButtons$Button;Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "button"    # Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .param p2, "style"    # Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
    .param p3, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 862
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 863
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    :goto_0
    return-object v0

    .line 868
    :cond_0
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$ui$CaptureButtons$Button:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtons$Button;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 874
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setButtonStyle() - Unknown button : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 871
    :pswitch_0
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureButtons$Button;Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;I)V

    .line 877
    .local v0, "handle":Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 880
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonStyle()V

    goto :goto_0

    .line 868
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonVisibility(Lcom/oneplus/camera/ui/CaptureButtons$Button;ZI)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "button"    # Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .param p2, "isVisible"    # Z
    .param p3, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 890
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 891
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    :goto_0
    return-object v0

    .line 896
    :cond_0
    sget-object v1, Lcom/oneplus/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$ui$CaptureButtons$Button:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CaptureButtons$Button;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 902
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setButtonVisibility() - Unknown button : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 899
    :pswitch_0
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PrimaryButtonVisibilityHandles:Ljava/util/LinkedList;

    invoke-direct {v0, p0, v1, p2}, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Ljava/util/LinkedList;Z)V

    .line 905
    .local v0, "handle":Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;
    iget-object v1, v0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->handleList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-direct {p0, p3}, Lcom/oneplus/camera/ui/CaptureBar;->updateButtonVisibilities(I)V

    goto :goto_0

    .line 896
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPanelStyle(Lcom/oneplus/camera/ui/CaptureControlPanel$Style;I)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "style"    # Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 918
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CaptureBar;->verifyAccess()V

    .line 919
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 933
    :goto_0
    return-object v0

    .line 923
    :cond_0
    if-nez p1, :cond_1

    .line 925
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "setPanelStyle() - No style specified"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :cond_1
    new-instance v0, Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureControlPanel$Style;)V

    .line 931
    .local v0, "handle":Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar;->m_PanelStyleHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CaptureBar;->updatePanelStyle()V

    goto :goto_0
.end method
