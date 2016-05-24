.class public final Lcom/meizu/media/camera/panorama/PanoramaUI;
.super Lcom/meizu/media/camera/ModeUI;
.source "PanoramaUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/panorama/PanoramaUI$12;,
        Lcom/meizu/media/camera/panorama/PanoramaUI$ResolutionSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/ModeUI",
        "<",
        "Lcom/meizu/media/camera/panorama/PanoramaController;",
        ">;"
    }
.end annotation


# static fields
.field private static final FUNC_KILL_START_HINT:I = 0x2

.field private static final FUNC_SHOW_START_HINT:I = 0x1

.field private static final MAX_PHOTO_SIDE:I = 0x780

.field private static final MAX_PREVIEW_SIDE:I = 0x780

.field static final MSG_CAPTURE_COMPLETED:I = 0x2714

.field static final MSG_CAPTURE_STARTED:I = 0x2710

.field private static final MSG_CLOSE_START_HINT:I = 0x2726

.field static final MSG_DISPLACEMENT_CHANGED:I = 0x2724

.field static final MSG_FRAME_ADD_FAILED:I = 0x2712

.field static final MSG_MOVING_SPEED_CHANGED:I = 0x2725

.field static final MSG_PREVIEW_FRAME_RECEIVED:I = 0x271b

.field static final MSG_RESULT_SIZE_CHANGED:I = 0x2711

.field static final MSG_STITCHING:I = 0x2713

.field static final MSG_YUV_TO_BMP_CONVERTER_CREATED:I = 0x271a

.field public static final PROP_IS_STOPPED_BY_USER:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PANORAMA_CAPTURE_LENGTH:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_BaseView:Landroid/view/View;

.field private m_BlackSolidPaint:Landroid/graphics/Paint;

.field private m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

.field private m_CaptureControlPanel:Lcom/meizu/media/camera/ui/CaptureControlPanel;

.field private m_CaptureControlPanelStyleHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

.field private m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

.field private m_CaptureUIInflatedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_CurrentFrame:Landroid/view/View;

.field private m_CurrentFrameThickness:I

.field private m_DirIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private m_DirIndicatorDrawableWarning:Landroid/graphics/drawable/Drawable;

.field private m_DirIndicatorsContainer:Landroid/view/ViewGroup;

.field private m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

.field private m_Direction:I

.field private m_Displacement:I

.field private m_FaceDetectionHandle:Lcom/oneplus/base/Handle;

.field private m_FaceTracker:Lcom/meizu/media/camera/FaceTracker;

.field private m_FlashController:Lcom/meizu/media/camera/FlashController;

.field private m_Handles:Lcom/oneplus/base/HandleSet;

.field private m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

.field private m_HintHandle:Lcom/oneplus/base/Handle;

.field private m_IsControllerCaptureStarted:Z

.field private m_IsMovingTooFast:Z

.field private m_LastFrameAddFailedResult:I

.field private m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;

.field private m_OptionsPanelHandle:Lcom/oneplus/base/Handle;

.field private m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

.field private m_PreviewFrameView:Landroid/widget/ImageView;

.field private m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

.field private m_PreviewThumbContainer:Landroid/view/View;

.field private m_PreviewThumbHeight:I

.field private m_PreviewThumbView:Landroid/widget/ImageView;

.field private m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

.field private m_ResolutionSelector:Lcom/meizu/media/camera/panorama/PanoramaUI$ResolutionSelector;

.field private m_RotationLockHandle:Lcom/oneplus/base/Handle;

.field private m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

.field private final m_SensorEventListener:Landroid/hardware/SensorEventListener;

.field private m_SensorManager:Landroid/hardware/SensorManager;

.field private m_StartHintHandle:Lcom/oneplus/base/Handle;

.field private m_TargetHeight:I

.field private m_TargetWidth:I

.field private m_YuvToBitmapWorker:Lcom/meizu/media/camera/media/YuvToBitmapWorker;

.field private m_ZoomController:Lcom/meizu/media/camera/ZoomController;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "LastFrameAddResult"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;

    .line 79
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsStoppedByUser"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_IS_STOPPED_BY_USER:Lcom/oneplus/base/PropertyKey;

    .line 81
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "PanoramaCaptureLength"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/meizu/media/camera/panorama/PanoramaUI;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_PANORAMA_CAPTURE_LENGTH:Lcom/oneplus/base/PropertyKey;

    return-void
.end method

.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    .line 202
    const-string v0, "Panorama UI"

    const-class v1, Lcom/meizu/media/camera/panorama/PanoramaController;

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/ModeUI;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Ljava/lang/Class;)V

    .line 112
    const/16 v0, 0x11

    iput v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Direction:I

    .line 117
    iput v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Displacement:I

    .line 130
    iput v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbHeight:I

    .line 185
    new-instance v0, Lcom/meizu/media/camera/panorama/PanoramaUI$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$1;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SensorEventListener:Landroid/hardware/SensorEventListener;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/panorama/PanoramaUI;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/HandleSet;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/meizu/media/camera/ui/CaptureControlPanel;)Lcom/meizu/media/camera/ui/CaptureControlPanel;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/CaptureControlPanel;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureControlPanel:Lcom/meizu/media/camera/ui/CaptureControlPanel;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/meizu/media/camera/panorama/PanoramaUI$ResolutionSelector;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionSelector:Lcom/meizu/media/camera/panorama/PanoramaUI$ResolutionSelector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/meizu/media/camera/panorama/PanoramaUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setupUI()V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/meizu/media/camera/ui/OptionsPanel;)Lcom/meizu/media/camera/ui/OptionsPanel;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/OptionsPanel;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_OptionsPanelHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_OptionsPanelHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/meizu/media/camera/panorama/PanoramaUI;II)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/panorama/PanoramaUI;->updateStartHint(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/meizu/media/camera/CaptureHandle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/media/camera/panorama/PanoramaUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->completeCapture()V

    return-void
.end method

.method static synthetic access$2200(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/meizu/media/camera/ui/OnScreenHint;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/meizu/media/camera/panorama/PanoramaUI;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/meizu/media/camera/panorama/PanoramaUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/panorama/PanoramaUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setupCaptureButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/meizu/media/camera/ui/CaptureButtons;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/meizu/media/camera/ui/CaptureButtons;)Lcom/meizu/media/camera/ui/CaptureButtons;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/CaptureButtons;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onCaptureButtonPressed(Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onCaptureButtonReleased(Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/meizu/media/camera/media/ResolutionManager;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/meizu/media/camera/media/ResolutionManager;)Lcom/meizu/media/camera/media/ResolutionManager;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/media/ResolutionManager;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/panorama/PanoramaUI;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method private completeCapture()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 209
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v4, "completeCapture()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 215
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    .line 216
    .local v0, "captureHandle":Lcom/meizu/media/camera/CaptureHandle;
    iput-object v6, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    .line 217
    iput-object v6, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    .line 218
    iput-boolean v7, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    .line 221
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    invoke-virtual {p0, v3, v5}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 224
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v5}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 225
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    invoke-virtual {p0, v3, v5}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 226
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    invoke-static {v3, v7, v7, v7, v7}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 229
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    if-eqz v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    sget-object v4, Lcom/meizu/media/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/meizu/media/camera/ui/CaptureButtons$Button;

    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f020004

    invoke-virtual {v5, v6}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5, v7}, Lcom/meizu/media/camera/ui/CaptureButtons;->setButtonBackground(Lcom/meizu/media/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    .line 232
    .local v2, "newHandle":Lcom/oneplus/base/Handle;
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 233
    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 237
    .end local v2    # "newHandle":Lcom/oneplus/base/Handle;
    :cond_1
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 239
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 240
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 241
    :cond_2
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v3, :cond_3

    .line 242
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 243
    :cond_3
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 247
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 250
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_5

    .line 251
    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 254
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/meizu/media/camera/CameraActivity;->completeCapture(Lcom/meizu/media/camera/CaptureHandle;)V

    .line 255
    return-void
.end method

.method private onCaptureButtonPressed(Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;->setHandled()V

    .line 346
    :cond_0
    return-void
.end method

.method private onCaptureButtonReleased(Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;)V
    .locals 2
    .param p1, "e"    # Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 356
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isCaptureUIEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;->setHandled()V

    goto :goto_0

    .line 358
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonReleased() - Capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->capturePhoto()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    .line 362
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonReleased() - Fail to capture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;->setHandled()V

    goto :goto_0

    .line 365
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    if-eqz v0, :cond_4

    .line 367
    sget-object v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_IS_STOPPED_BY_USER:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->stopCapture(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 374
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;->setHandled()V

    throw v0

    .line 370
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonReleased() - Capture is not started in controller yet"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private onCaptureCompleted(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->completeCapture()V

    .line 384
    return-void
.end method

.method private onCaptureStarted(II)V
    .locals 11
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 393
    iput p2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_TargetWidth:I

    .line 394
    iput p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_TargetHeight:I

    .line 403
    :goto_0
    iget v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbHeight:I

    if-nez v4, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbHeight:I

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v2

    .line 406
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_TargetWidth:I

    iget v5, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_TargetHeight:I

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbHeight:I

    invoke-static {v4, v5, v6, v7, v9}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v3

    .line 409
    .local v3, "thumbSize":Landroid/util/Size;
    :try_start_0
    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureStarted() - Create preview thumbnail, size : "

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_1
    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 419
    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 420
    :cond_1
    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    invoke-virtual {p0, v4, v10}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 421
    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    invoke-virtual {p0, v4, v10}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 424
    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    if-nez v4, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v4

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Lcom/meizu/media/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    .line 426
    :cond_2
    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 427
    .local v1, "gyroscope":Landroid/hardware/Sensor;
    if-eqz v1, :cond_4

    .line 428
    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5, v1, v10}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 433
    :goto_2
    iput v9, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Displacement:I

    .line 434
    iput-boolean v9, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_IsMovingTooFast:Z

    .line 435
    const/4 v4, -0x1

    iput v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_LastFrameAddFailedResult:I

    .line 436
    sget-object v4, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 437
    sget-object v4, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_IS_STOPPED_BY_USER:Lcom/oneplus/base/PropertyKey;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 438
    sget-object v4, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_PANORAMA_CAPTURE_LENGTH:Lcom/oneplus/base/PropertyKey;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 439
    iput-boolean v10, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    .line 442
    invoke-direct {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->updateHint()V

    .line 443
    return-void

    .line 398
    .end local v1    # "gyroscope":Landroid/hardware/Sensor;
    .end local v2    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .end local v3    # "thumbSize":Landroid/util/Size;
    :cond_3
    iput p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_TargetWidth:I

    .line 399
    iput p2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_TargetHeight:I

    goto/16 :goto_0

    .line 412
    .restart local v2    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .restart local v3    # "thumbSize":Landroid/util/Size;
    :catch_0
    move-exception v0

    .line 414
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureStarted() - Fail to create preview thumbnail bitmap"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 430
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "gyroscope":Landroid/hardware/Sensor;
    :cond_4
    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v5, "onCaptureStarted() - No gyroscope on this device"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onDisplacementChanged(I)V
    .locals 7
    .param p1, "displacement"    # I

    .prologue
    .line 464
    iget v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Displacement:I

    if-eq v2, p1, :cond_2

    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v3, "onDisplacementChanged() - "

    iget v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Displacement:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " -> "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 468
    iput p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Displacement:I

    .line 469
    const/4 v1, 0x0

    .line 470
    .local v1, "rotation":I
    sparse-switch p1, :sswitch_data_0

    .line 479
    const/4 v1, 0x0

    .line 484
    :goto_0
    invoke-direct {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->updateHint()V

    .line 487
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 489
    if-nez v1, :cond_0

    .line 491
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 492
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 491
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 473
    .end local v0    # "i":I
    :sswitch_0
    const/16 v1, 0xa

    .line 474
    goto :goto_0

    .line 476
    :sswitch_1
    const/16 v1, -0xa

    .line 477
    goto :goto_0

    .line 496
    :cond_0
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_1

    .line 497
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorDrawableWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 496
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 499
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

    .line 500
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainerAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 504
    .end local v0    # "i":I
    .end local v1    # "rotation":I
    :cond_2
    return-void

    .line 470
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method private onFrameAddFailed(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 728
    iput p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_LastFrameAddFailedResult:I

    .line 729
    return-void
.end method

.method private onMovingSpeedChanged(Z)V
    .locals 2
    .param p1, "moveTooFast"    # Z

    .prologue
    .line 851
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v1, "onMovingSpeedChanged() - Not capturing"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_IsMovingTooFast:Z

    .line 859
    invoke-direct {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->updateHint()V

    goto :goto_0
.end method

.method private onPreviewFrameReceived(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "previewFrame"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 867
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 872
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 873
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 874
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 877
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method private onResultSizeChanged(IIFFLandroid/graphics/Bitmap;)V
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "corrX"    # F
    .param p4, "corrY"    # F
    .param p5, "newAddedFrame"    # Landroid/graphics/Bitmap;

    .prologue
    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 888
    move/from16 v15, p1

    .line 889
    .local v15, "temp":I
    move/from16 p1, p2

    .line 890
    move/from16 p2, v15

    .line 893
    .end local v15    # "temp":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v4, "onResultSizeChanged() - width : "

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ", target width : "

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_TargetWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 896
    const/4 v14, 0x0

    .line 897
    .local v14, "stopCapture":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    if-eqz p5, :cond_3

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_BlackSolidPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_1

    .line 901
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_BlackSolidPaint:Landroid/graphics/Paint;

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_BlackSolidPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 904
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 905
    .local v2, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Direction:I

    .line 910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_TargetWidth:I

    int-to-float v4, v4

    div-float v13, v3, v4

    .line 911
    .local v13, "scale":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 912
    .local v9, "frameWidth":I
    int-to-float v3, v9

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    div-float/2addr v3, v13

    float-to-int v3, v3

    add-int p1, p1, v3

    .line 913
    move/from16 v0, p1

    int-to-float v3, v0

    mul-float/2addr v3, v13

    float-to-int v3, v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 914
    .local v12, "right":I
    sub-int v10, v12, v9

    .line 917
    .local v10, "left":I
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 918
    .local v11, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 919
    int-to-float v3, v12

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p3

    float-to-int v4, v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 920
    int-to-float v3, v10

    const/4 v4, 0x0

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_BlackSolidPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 921
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CurrentFrameThickness:I

    sub-int v5, v10, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lt v12, v3, :cond_5

    const/4 v14, 0x1

    .line 924
    :goto_0
    sget-object v4, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_PANORAMA_CAPTURE_LENGTH:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v12, v3

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 930
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 934
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "frameWidth":I
    .end local v10    # "left":I
    .end local v11    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "right":I
    .end local v13    # "scale":F
    :cond_3
    if-eqz v14, :cond_4

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v4, "onResultSizeChanged() - Target size reached, stop capture"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/media/camera/panorama/PanoramaUI;->stopCapture(Z)V

    .line 940
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    return-void

    .line 923
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v9    # "frameWidth":I
    .restart local v10    # "left":I
    .restart local v11    # "matrix":Landroid/graphics/Matrix;
    .restart local v12    # "right":I
    .restart local v13    # "scale":F
    :cond_5
    const/4 v14, 0x0

    goto :goto_0

    .line 924
    :cond_6
    int-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    goto :goto_1
.end method

.method private onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x0

    .line 947
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    move-object v0, v1

    check-cast v0, [F

    .line 948
    .local v0, "values":[F
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getController()Lcom/meizu/media/camera/ModeController;

    move-result-object v1

    const/16 v2, 0x2724

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v6, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 949
    return-void
.end method

.method private onStitching(Z)V
    .locals 7
    .param p1, "causedByError"    # Z

    .prologue
    const/4 v6, 0x0

    .line 956
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 958
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v3, "onStitching() - Not entered"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    if-eqz p1, :cond_2

    .line 966
    iget-boolean v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_IsMovingTooFast:Z

    if-eqz v2, :cond_6

    .line 968
    const v0, 0x7f090023

    .line 969
    .local v0, "messageId":I
    sget-object v2, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;

    const/16 v3, -0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 990
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meizu/media/camera/CameraActivity;->showToast(I)V

    .line 994
    .end local v0    # "messageId":I
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    invoke-virtual {p0, v2, v6}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 997
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    .line 1000
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    .line 1003
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    if-eqz v2, :cond_3

    .line 1005
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    sget-object v3, Lcom/meizu/media/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/meizu/media/camera/ui/CaptureButtons$Button;

    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f020004

    invoke-virtual {v4, v5}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v3, v4, v6}, Lcom/meizu/media/camera/ui/CaptureButtons;->setButtonBackground(Lcom/meizu/media/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 1006
    .local v1, "newHandle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1007
    iput-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 1011
    .end local v1    # "newHandle":Lcom/oneplus/base/Handle;
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    if-nez v2, :cond_4

    .line 1012
    const-class v2, Lcom/meizu/media/camera/ui/ProcessingDialog;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/ui/ProcessingDialog;

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    .line 1013
    :cond_4
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    if-eqz v2, :cond_5

    .line 1014
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Lcom/meizu/media/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 1017
    :cond_5
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1018
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    const-string v3, "PanoramaStitch"

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 973
    :cond_6
    sget-object v2, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;

    iget v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_LastFrameAddFailedResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 974
    iget v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_LastFrameAddFailedResult:I

    packed-switch v2, :pswitch_data_0

    .line 986
    const v0, 0x7f09001f

    .restart local v0    # "messageId":I
    goto/16 :goto_1

    .line 977
    .end local v0    # "messageId":I
    :pswitch_0
    const v0, 0x7f09001d

    .line 978
    .restart local v0    # "messageId":I
    goto/16 :goto_1

    .line 980
    .end local v0    # "messageId":I
    :pswitch_1
    const v0, 0x7f090023

    .line 981
    .restart local v0    # "messageId":I
    goto/16 :goto_1

    .line 983
    .end local v0    # "messageId":I
    :pswitch_2
    const v0, 0x7f090026

    .line 984
    .restart local v0    # "messageId":I
    goto/16 :goto_1

    .line 974
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupCaptureButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1025
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureControlPanelStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureControlPanel:Lcom/meizu/media/camera/ui/CaptureControlPanel;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureControlPanel:Lcom/meizu/media/camera/ui/CaptureControlPanel;

    sget-object v1, Lcom/meizu/media/camera/ui/CaptureControlPanel$Style;->TRANSPARENT:Lcom/meizu/media/camera/ui/CaptureControlPanel$Style;

    invoke-interface {v0, v1, v4}, Lcom/meizu/media/camera/ui/CaptureControlPanel;->setPanelStyle(Lcom/meizu/media/camera/ui/CaptureControlPanel$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureControlPanelStyleHandle:Lcom/oneplus/base/Handle;

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    sget-object v1, Lcom/meizu/media/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/meizu/media/camera/ui/CaptureButtons$Button;

    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/meizu/media/camera/ui/CaptureButtons;->setButtonBackground(Lcom/meizu/media/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 1029
    :cond_1
    return-void
.end method

.method private setupUI()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 1036
    const/16 v1, 0x1388

    invoke-direct {p0, v3, v1, v3}, Lcom/meizu/media/camera/panorama/PanoramaUI;->updateStartHint(IIZ)V

    .line 1039
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_BaseView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1041
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_BaseView:Landroid/view/View;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1042
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v2, "setupUI()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_BaseView:Landroid/view/View;

    .line 1051
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_BaseView:Landroid/view/View;

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    .line 1052
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbView:Landroid/widget/ImageView;

    .line 1053
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    .line 1054
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CurrentFrame:Landroid/view/View;

    .line 1055
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewThumbContainer:Landroid/view/View;

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorsContainer:Landroid/view/ViewGroup;

    .line 1058
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 1059
    .local v0, "activity":Lcom/meizu/media/camera/CameraActivity;
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1060
    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_DirIndicatorDrawableWarning:Landroid/graphics/drawable/Drawable;

    .line 1063
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CurrentFrameThickness:I

    .line 1064
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private stopCapture(Z)V
    .locals 6
    .param p1, "stitch"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1073
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 1074
    .local v0, "activity":Lcom/meizu/media/camera/CameraActivity;
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1095
    :goto_0
    return-void

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1078
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v2, "stopCapture() - Not capturing"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->CAPTURING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-eq v1, v3, :cond_2

    .line 1083
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopCapture() - Photo capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopCapture() - Stitch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1091
    const-string v1, "PanoramaStop"

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 1094
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getController()Lcom/meizu/media/camera/ModeController;

    move-result-object v3

    const/16 v4, 0x2711

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v2, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private updateHint()V
    .locals 7

    .prologue
    const v6, 0x7f090020

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1101
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

    if-nez v2, :cond_0

    .line 1133
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 1105
    .local v0, "activity":Lcom/meizu/media/camera/CameraActivity;
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1106
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/meizu/media/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    .line 1108
    :cond_1
    iget-boolean v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    if-nez v2, :cond_2

    .line 1109
    const/16 v2, 0x1388

    invoke-direct {p0, v4, v2}, Lcom/meizu/media/camera/panorama/PanoramaUI;->updateStartHint(II)V

    goto :goto_0

    .line 1111
    :cond_2
    iget-boolean v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_IsMovingTooFast:Z

    if-eqz v2, :cond_3

    .line 1112
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    const v4, 0x7f090022

    invoke-virtual {v0, v4}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v5}, Lcom/meizu/media/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1113
    :cond_3
    iget v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Displacement:I

    if-eqz v2, :cond_4

    .line 1116
    iget v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Displacement:I

    sparse-switch v2, :sswitch_data_0

    .line 1125
    invoke-virtual {v0, v6}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1128
    .local v1, "hint":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v2, v3, v1, v5}, Lcom/meizu/media/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1119
    .end local v1    # "hint":Ljava/lang/String;
    :sswitch_0
    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1120
    .restart local v1    # "hint":Ljava/lang/String;
    goto :goto_1

    .line 1122
    .end local v1    # "hint":Ljava/lang/String;
    :sswitch_1
    const v2, 0x7f090024

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1123
    .restart local v1    # "hint":Ljava/lang/String;
    goto :goto_1

    .line 1131
    .end local v1    # "hint":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

    iget-object v3, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-virtual {v0, v6}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v5}, Lcom/meizu/media/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1116
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateStartHint(II)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 1138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->updateStartHint(IIZ)V

    .line 1139
    return-void
.end method

.method private updateStartHint(IIZ)V
    .locals 4
    .param p1, "func"    # I
    .param p2, "timeout"    # I
    .param p3, "isForced"    # Z

    .prologue
    const/16 v3, 0x2726

    .line 1143
    packed-switch p1, :pswitch_data_0

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1145
    :pswitch_0
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1146
    const-wide/16 v0, 0x0

    invoke-static {p0, v3, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 1150
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    .line 1152
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    if-nez v0, :cond_0

    .line 1153
    int-to-long v0, p2

    invoke-static {p0, v3, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 1143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 335
    :pswitch_0
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ModeUI;->handleMessage(Landroid/os/Message;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onCaptureCompleted(I)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onCaptureStarted(II)V

    goto :goto_0

    .line 273
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onDisplacementChanged(I)V

    goto :goto_0

    .line 277
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onFrameAddFailed(I)V

    goto :goto_0

    .line 281
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onMovingSpeedChanged(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 286
    :pswitch_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    .line 287
    .local v5, "frame":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 291
    :try_start_0
    invoke-direct {p0, v5}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onPreviewFrameReceived(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    invoke-virtual {v0, v5}, Lcom/meizu/media/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    if-eqz v1, :cond_2

    .line 296
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    invoke-virtual {v1, v5}, Lcom/meizu/media/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    throw v0

    .line 304
    .end local v5    # "frame":Landroid/graphics/Bitmap;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 305
    .local v6, "args":[Ljava/lang/Object;
    aget-object v5, v6, v1

    check-cast v5, Landroid/graphics/Bitmap;

    .line 306
    .restart local v5    # "frame":Landroid/graphics/Bitmap;
    aget-object v0, v6, v2

    check-cast v0, [F

    move-object v7, v0

    check-cast v7, [F

    .line 309
    .local v7, "corrections":[F
    :try_start_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v0, 0x0

    aget v3, v7, v0

    const/4 v0, 0x1

    aget v4, v7, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onResultSizeChanged(IIFFLandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 313
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    .line 314
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    invoke-virtual {v0, v5}, Lcom/meizu/media/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 313
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    .line 314
    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    invoke-virtual {v1, v5}, Lcom/meizu/media/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    throw v0

    .line 320
    .end local v5    # "frame":Landroid/graphics/Bitmap;
    .end local v6    # "args":[Ljava/lang/Object;
    .end local v7    # "corrections":[F
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    :goto_2
    invoke-direct {p0, v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onStitching(Z)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    .line 324
    :pswitch_9
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    goto/16 :goto_0

    .line 329
    :pswitch_a
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_IsControllerCaptureStarted:Z

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method protected bridge synthetic onControllerLinked(Lcom/meizu/media/camera/ModeController;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/media/camera/ModeController;

    .prologue
    .line 74
    check-cast p1, Lcom/meizu/media/camera/panorama/PanoramaController;

    .end local p1    # "x0":Lcom/meizu/media/camera/ModeController;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->onControllerLinked(Lcom/meizu/media/camera/panorama/PanoramaController;)V

    return-void
.end method

.method protected onControllerLinked(Lcom/meizu/media/camera/panorama/PanoramaController;)V
    .locals 4
    .param p1, "controller"    # Lcom/meizu/media/camera/panorama/PanoramaController;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x271a

    .line 450
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {p1, v2, v0, v1, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 457
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ModeUI;->onControllerLinked(Lcom/meizu/media/camera/ModeController;)V

    .line 458
    return-void

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p1, v2, v0, v1, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onEnter(I)Z
    .locals 9
    .param p1, "flags"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x271a

    const/4 v3, 0x0

    .line 512
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ModeUI;->onEnter(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 678
    :goto_0
    return v2

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 517
    .local v0, "activity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v2, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->setMediaType(Lcom/meizu/media/camera/media/MediaType;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v4, "onEnter() - Fail to change to photo mode"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 520
    goto :goto_0

    .line 524
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureControlPanel:Lcom/meizu/media/camera/ui/CaptureControlPanel;

    if-nez v2, :cond_2

    .line 526
    const-class v2, Lcom/meizu/media/camera/ui/CaptureControlPanel;

    new-instance v4, Lcom/meizu/media/camera/panorama/PanoramaUI$2;

    invoke-direct {v4, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$2;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    invoke-virtual {p0, v2, v4}, Lcom/meizu/media/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 537
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    if-nez v2, :cond_3

    .line 539
    const-class v2, Lcom/meizu/media/camera/ui/CaptureButtons;

    new-instance v4, Lcom/meizu/media/camera/panorama/PanoramaUI$3;

    invoke-direct {v4, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$3;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    invoke-virtual {p0, v2, v4}, Lcom/meizu/media/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 566
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    if-nez v2, :cond_4

    .line 567
    const-class v2, Lcom/meizu/media/camera/FlashController;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/FlashController;

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    .line 568
    :cond_4
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

    if-nez v2, :cond_5

    .line 569
    const-class v2, Lcom/meizu/media/camera/ui/OnScreenHint;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/ui/OnScreenHint;

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Hint:Lcom/meizu/media/camera/ui/OnScreenHint;

    .line 570
    :cond_5
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-nez v2, :cond_6

    .line 571
    const-class v2, Lcom/meizu/media/camera/scene/SceneManager;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/scene/SceneManager;

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    .line 572
    :cond_6
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    if-nez v2, :cond_7

    .line 573
    const-class v2, Lcom/meizu/media/camera/ZoomController;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/ZoomController;

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    .line 576
    :cond_7
    new-instance v2, Lcom/oneplus/base/HandleSet;

    new-array v4, v3, [Lcom/oneplus/base/Handle;

    invoke-direct {v2, v4}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 579
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-nez v2, :cond_8

    .line 581
    const-class v2, Lcom/meizu/media/camera/media/ResolutionManager;

    new-instance v4, Lcom/meizu/media/camera/panorama/PanoramaUI$4;

    invoke-direct {v4, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$4;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    invoke-virtual {p0, v2, v4}, Lcom/meizu/media/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 592
    :cond_8
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionSelector:Lcom/meizu/media/camera/panorama/PanoramaUI$ResolutionSelector;

    if-nez v2, :cond_9

    .line 593
    new-instance v2, Lcom/meizu/media/camera/panorama/PanoramaUI$ResolutionSelector;

    invoke-direct {v2, v0}, Lcom/meizu/media/camera/panorama/PanoramaUI$ResolutionSelector;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionSelector:Lcom/meizu/media/camera/panorama/PanoramaUI$ResolutionSelector;

    .line 594
    :cond_9
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-eqz v2, :cond_a

    .line 595
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    iget-object v5, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ResolutionSelector:Lcom/meizu/media/camera/panorama/PanoramaUI$ResolutionSelector;

    invoke-interface {v4, v5, v3}, Lcom/meizu/media/camera/media/ResolutionManager;->setResolutionSelector(Lcom/meizu/media/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 598
    :cond_a
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->disableSelfTimer()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 601
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    if-eqz v2, :cond_b

    .line 602
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v5, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    invoke-interface {v4, v5, v3}, Lcom/meizu/media/camera/FlashController;->disableFlash(Lcom/meizu/media/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 605
    :cond_b
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v2, :cond_c

    .line 606
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v5, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    const/4 v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/meizu/media/camera/scene/SceneManager;->setDefaultScene(Lcom/meizu/media/camera/scene/Scene;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 609
    :cond_c
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    sget-object v4, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-virtual {v0, v4}, Lcom/meizu/media/camera/CameraActivity;->lockCamera(Lcom/meizu/media/camera/Camera$LensFacing;)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 612
    sget-object v2, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;

    .line 615
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    if-eqz v2, :cond_d

    .line 616
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    invoke-interface {v4, v3}, Lcom/meizu/media/camera/ZoomController;->lockZoom(I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 619
    :cond_d
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->disableBurstPhotoCapture()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 622
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_OptionsPanelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 623
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    invoke-interface {v2, v4, v3}, Lcom/meizu/media/camera/ui/OptionsPanel;->closeOptionsPanel(Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_OptionsPanelHandle:Lcom/oneplus/base/Handle;

    .line 625
    :cond_e
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->requestPreCaptureFocusLock()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 628
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    if-eqz v2, :cond_f

    .line 629
    invoke-direct {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setupCaptureButton()V

    .line 632
    :cond_f
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_10

    .line 634
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 635
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f07004f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    .line 636
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->isControllerLinked()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 638
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 639
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getController()Lcom/meizu/media/camera/ModeController;

    move-result-object v2

    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v2, v7, v4, v5, v8}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 646
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_10
    :goto_1
    sget-object v2, Lcom/meizu/media/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 647
    invoke-direct {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setupUI()V

    .line 668
    :cond_11
    :goto_2
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_FaceTracker:Lcom/meizu/media/camera/FaceTracker;

    if-nez v2, :cond_12

    .line 669
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    const-class v4, Lcom/meizu/media/camera/FaceTracker;

    invoke-virtual {v2, v4}, Lcom/meizu/media/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/FaceTracker;

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_FaceTracker:Lcom/meizu/media/camera/FaceTracker;

    .line 672
    :cond_12
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_FaceTracker:Lcom/meizu/media/camera/FaceTracker;

    if-eqz v2, :cond_13

    .line 673
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_FaceTracker:Lcom/meizu/media/camera/FaceTracker;

    sget-object v4, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    invoke-interface {v2, v4, v3}, Lcom/meizu/media/camera/FaceTracker;->disableFaceDetection(Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_FaceDetectionHandle:Lcom/oneplus/base/Handle;

    .line 678
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 641
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_14
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getController()Lcom/meizu/media/camera/ModeController;

    move-result-object v2

    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v2, v7, v4, v5, v8}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_1

    .line 650
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_15
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->TAG:Ljava/lang/String;

    const-string v4, "onEnter() - Setup UI when capture UI inflated"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureUIInflatedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-nez v2, :cond_11

    .line 653
    new-instance v2, Lcom/meizu/media/camera/panorama/PanoramaUI$5;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$5;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureUIInflatedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 662
    sget-object v2, Lcom/meizu/media/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureUIInflatedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v2, v4}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_2
.end method

.method protected onExit(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 686
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_OptionsPanelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_OptionsPanelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureControlPanelStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureControlPanelStyleHandle:Lcom/oneplus/base/Handle;

    .line 690
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtonBgHandle:Lcom/oneplus/base/Handle;

    .line 693
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 696
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;

    .line 699
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 702
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_BaseView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 705
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    .line 708
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_StartHintHandle:Lcom/oneplus/base/Handle;

    .line 711
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    :cond_1
    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_PreviewFrameBitmap:Landroid/graphics/Bitmap;

    .line 714
    iput-object v2, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_YuvToBitmapWorker:Lcom/meizu/media/camera/media/YuvToBitmapWorker;

    .line 717
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_FaceDetectionHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI;->m_FaceDetectionHandle:Lcom/oneplus/base/Handle;

    .line 721
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ModeUI;->onExit(I)V

    .line 722
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 737
    invoke-super {p0}, Lcom/meizu/media/camera/ModeUI;->onInitialize()V

    .line 740
    const-class v1, Lcom/meizu/media/camera/ui/CameraGallery;

    new-instance v2, Lcom/meizu/media/camera/panorama/PanoramaUI$6;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$6;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 766
    const-class v1, Lcom/meizu/media/camera/ui/OptionsPanel;

    new-instance v2, Lcom/meizu/media/camera/panorama/PanoramaUI$7;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$7;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/panorama/PanoramaUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 778
    invoke-virtual {p0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 779
    .local v0, "activity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/panorama/PanoramaUI$8;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$8;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 792
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/panorama/PanoramaUI$9;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$9;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 801
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/panorama/PanoramaUI$10;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$10;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 825
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/panorama/PanoramaUI$11;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$11;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 844
    return-void
.end method
