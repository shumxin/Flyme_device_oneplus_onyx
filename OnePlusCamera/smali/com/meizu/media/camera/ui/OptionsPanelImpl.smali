.class final Lcom/meizu/media/camera/ui/OptionsPanelImpl;
.super Lcom/meizu/media/camera/UIComponent;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/meizu/media/camera/ui/OptionsPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;,
        Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;,
        Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;,
        Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;,
        Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;,
        Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    }
.end annotation


# static fields
.field private static final CLOSE_ANIMATION_DECELERATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final CONTAINER_ANIMATION_CLOSE_DURATION:I = 0x12c

.field private static final CONTAINER_ANIMATION_OPEN_DURATION:I = 0x12c

.field private static final DISABLE_CAPTURE_UI:Ljava/lang/String; = "PhotoResolutionChange"

.field private static final FLASH_BUTTON_AUTO_ON_ANIMATION_DURATION:I = 0xc8

.field private static final OPEN_ANIMATION_DECELERATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static PHOTO_DEFAULT_TIER_FIRST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
            ">;"
        }
    .end annotation
.end field

.field private static PHOTO_DEFAULT_TIER_SECOND:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
            ">;"
        }
    .end annotation
.end field

.field private static VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_Button_height:I

.field private m_Button_marginEnd:I

.field private m_Button_width:I

.field private m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

.field private m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

.field private m_ExposureController:Lcom/meizu/media/camera/ExposureController;

.field private m_FirstTierContainer:Landroid/view/ViewGroup;

.field private m_FlashButtonAutoOnDrawable:Lcom/oneplus/drawable/RepeatTransitionDrawable;

.field private m_FlashButtonResId:I

.field private m_FlashController:Lcom/meizu/media/camera/FlashController;

.field private m_FlashDisabledHintHandle:Lcom/oneplus/base/Handle;

.field private m_FlashToastShowed:Z

.field private m_IsOptionsPanelVisible:Ljava/lang/Boolean;

.field private m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

.field private m_OptionsButtonTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private m_OptionsPanel:Landroid/view/View;

.field private final m_OptionsPanelCloseHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_OptionsPanelOpenHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PanelCloseReviewingHandle:Lcom/oneplus/base/Handle;

.field private m_PanelCloseSelfTimerHandle:Lcom/oneplus/base/Handle;

.field private m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

.field private m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

.field private m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

.field private final m_SceneItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneItemsContainer:Landroid/view/ViewGroup;

.field private m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

.field private m_SecondTierContainer:Landroid/view/ViewGroup;

.field private m_SecondTierEntryView:Landroid/view/View;

.field private final m_VideoResolutionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;",
            ">;"
        }
    .end annotation
.end field

.field private m_ViewGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->OPEN_ANIMATION_DECELERATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 65
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->CLOSE_ANIMATION_DECELERATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v9, [Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v5

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v6

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->LENS_SWITCHING:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v7

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_FIRST:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v9, [Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->PHOTO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v5

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v6

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v7

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->BACK:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_SECOND:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v9, [Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v5

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v6

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->LENS_SWITCHING:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v7

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 162
    const-string v0, "Options Panel"

    invoke-direct {p0, v0, p1, v2}, Lcom/meizu/media/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Z)V

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelCloseHandles:Ljava/util/LinkedList;

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelOpenHandles:Ljava/util/LinkedList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    .line 100
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_IsOptionsPanelVisible:Ljava/lang/Boolean;

    .line 101
    iput-boolean v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashToastShowed:Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ViewGroupList:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    .line 163
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 164
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 165
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_HAS_ITEMS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onItemClicked(Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;)V

    return-void
.end method

.method static synthetic access$100()Landroid/view/animation/PathInterpolator;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->CLOSE_ANIMATION_DECELERATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/scene/Scene;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onSceneAdded(Lcom/meizu/media/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSceneButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/scene/Scene;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onSceneRemoved(Lcom/meizu/media/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSwitchCameraButton(Lcom/meizu/media/camera/Camera;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSwitchCameraButton()V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PanelCloseSelfTimerHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PanelCloseSelfTimerHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PanelCloseReviewingHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PanelCloseReviewingHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_FIRST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelOpenHandles:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateButtonState(Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSelfTimerButton()V

    return-void
.end method

.method static synthetic access$2300(Lcom/meizu/media/camera/ui/OptionsPanelImpl;J)V
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSelfTimerButton(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->removeAndResetAllViews()V

    return-void
.end method

.method static synthetic access$2800(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Lcom/meizu/media/camera/media/MediaType;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupContainerVisibility(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/PathInterpolator;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->OPEN_ANIMATION_DECELERATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/media/Resolution;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/media/Resolution;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onVideoResolutionChanged(Lcom/meizu/media/camera/media/Resolution;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onVideoResolutionListChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/scene/Scene;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/scene/Scene;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onSceneChanged(Lcom/meizu/media/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)Lcom/meizu/media/camera/FlashController;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateFlashButton()V

    return-void
.end method

.method static synthetic access$3500(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->changePhotoResolution()V

    return-void
.end method

.method static synthetic access$3600(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updatePhotoResolutionButtonRes()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->closeOptionsPanelByRequest(Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onGridButtonClicked()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onOptionsBackButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onPhotoResolutionButtonClicked()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onVideoResolutionButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method private animateCloseContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V
    .locals 8
    .param p1, "groupFadeOut"    # Landroid/view/ViewGroup;
    .param p2, "groupFadeIn"    # Landroid/view/ViewGroup;
    .param p3, "pivotx"    # I

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    .line 177
    iget v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_Button_marginEnd:I

    iget v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_Button_width:I

    add-int v2, v3, v4

    .line 178
    .local v2, "viewgap":I
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 179
    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;

    invoke-direct {v4, p0, p2, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 200
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 202
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    mul-int v4, v2, v1

    sub-int v4, p3, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 200
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 206
    .end local v0    # "button":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private animateOpenContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V
    .locals 12
    .param p1, "groupFadeOut"    # Landroid/view/ViewGroup;
    .param p2, "groupFadeIn"    # Landroid/view/ViewGroup;
    .param p3, "pivotx"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x12c

    const/4 v2, 0x0

    .line 218
    iget v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_Button_marginEnd:I

    iget v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_Button_width:I

    add-int v4, v0, v1

    .line 219
    .local v4, "viewgap":I
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 222
    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;IILandroid/view/ViewGroup;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 259
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 245
    invoke-virtual {p2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->OPEN_ANIMATION_DECELERATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 246
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 248
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 250
    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 251
    .local v6, "button":Landroid/view/View;
    mul-int v0, v8, v4

    sub-int v0, p3, v0

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 253
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 248
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 255
    .end local v6    # "button":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private changePhotoResolution()V
    .locals 8

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v5

    sget-object v6, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/OperationState;

    .line 430
    .local v4, "state":Lcom/meizu/media/camera/OperationState;
    sget-object v5, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v4, v5, :cond_0

    .line 432
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-nez v5, :cond_1

    .line 433
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v6, "OptionsPanelImpl() - No resolutionManager! Could not change photo resolution"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v6, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 438
    .local v3, "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/Resolution;>;"
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v6, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/media/Resolution;

    .line 439
    .local v2, "resolution":Lcom/meizu/media/camera/media/Resolution;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 441
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 442
    .local v0, "index":I
    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    rem-int v1, v5, v6

    .line 443
    .local v1, "next":I
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v6, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/meizu/media/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private changeVideoResolution()V
    .locals 8

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v5

    sget-object v6, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/OperationState;

    .line 410
    .local v4, "state":Lcom/meizu/media/camera/OperationState;
    sget-object v5, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v4, v5, :cond_0

    .line 412
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-eqz v5, :cond_0

    .line 413
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v6, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 414
    .local v3, "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/Resolution;>;"
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v6, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/media/Resolution;

    .line 415
    .local v2, "resolution":Lcom/meizu/media/camera/media/Resolution;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 417
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 418
    .local v0, "index":I
    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    rem-int v1, v5, v6

    .line 419
    .local v1, "next":I
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v6, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/meizu/media/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 424
    .end local v0    # "index":I
    .end local v1    # "next":I
    .end local v2    # "resolution":Lcom/meizu/media/camera/media/Resolution;
    .end local v3    # "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/Resolution;>;"
    :cond_0
    return-void
.end method

.method private checkItemCount()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "hasItems":Z
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 267
    const/4 v0, 0x1

    .line 270
    :cond_0
    :goto_0
    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_HAS_ITEMS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 272
    if-nez v0, :cond_1

    .line 273
    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 274
    :cond_1
    return-void

    .line 268
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private closeOptionsPanelByRequest(Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;I)V
    .locals 2
    .param p1, "openOptionsPanelHandle"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;
    .param p2, "flags"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelOpenHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelOpenHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 331
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method private closeOptionsPanelInternal(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->verifyAccess()V

    .line 366
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v1, "closeOptionsPanelInternal() - Component is not running"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    if-nez v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v1, "closeOptionsPanelInternal() - No options panel layout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private createResolutionItem(Lcom/meizu/media/camera/media/Resolution;)Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    .locals 5
    .param p1, "resolution"    # Lcom/meizu/media/camera/media/Resolution;

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 390
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    new-instance v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    invoke-direct {v1, p0, v0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/CameraActivity;Ljava/lang/Object;)V

    .line 393
    .local v1, "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findResolutionButtonResId(Lcom/meizu/media/camera/media/Resolution;)Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;

    move-result-object v2

    .line 395
    .local v2, "resolutionItemResource":Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;
    iget v3, v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    iget v4, v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 397
    :cond_0
    iget v3, v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    if-eqz v3, :cond_1

    .line 398
    iget-object v3, v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    iget v4, v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 403
    :goto_0
    return-object v1

    .line 400
    :cond_1
    iget-object v3, v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meizu/media/camera/media/Resolution;->getMegaPixelsDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private findResolutionButtonResId(Lcom/meizu/media/camera/media/Resolution;)Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;
    .locals 2
    .param p1, "resolution"    # Lcom/meizu/media/camera/media/Resolution;

    .prologue
    .line 452
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;)V

    .line 453
    .local v0, "resolutionItemResource":Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;
    invoke-virtual {p1}, Lcom/meizu/media/camera/media/Resolution;->is4kVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    const v1, 0x7f020073

    iput v1, v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    .line 456
    const v1, 0x7f090029

    iput v1, v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    .line 469
    :cond_0
    :goto_0
    return-object v0

    .line 458
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/media/camera/media/Resolution;->is1080pVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    const v1, 0x7f020072

    iput v1, v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    .line 461
    const v1, 0x7f090028

    iput v1, v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    goto :goto_0

    .line 463
    :cond_2
    invoke-virtual {p1}, Lcom/meizu/media/camera/media/Resolution;->is720pVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const v1, 0x7f020074

    iput v1, v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    .line 466
    const v1, 0x7f09002a

    iput v1, v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    goto :goto_0
.end method

.method private getFlashDisabledMessageText(Lcom/meizu/media/camera/FlashController$FlashDisabledReason;)I
    .locals 3
    .param p1, "reason"    # Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .prologue
    .line 1463
    const/4 v0, 0x0

    .line 1464
    .local v0, "resId":I
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v2, Lcom/meizu/media/camera/FlashController;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v2, Lcom/meizu/media/camera/FlashController;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$FlashController$FlashDisabledReason:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1491
    :cond_0
    :goto_0
    return v0

    .line 1472
    :pswitch_0
    const v0, 0x7f090014

    .line 1473
    goto :goto_0

    .line 1475
    :pswitch_1
    const v0, 0x7f090015

    .line 1476
    goto :goto_0

    .line 1478
    :pswitch_2
    const v0, 0x7f090016

    .line 1479
    goto :goto_0

    .line 1481
    :pswitch_3
    const v0, 0x7f090017

    .line 1482
    goto :goto_0

    .line 1484
    :pswitch_4
    const v0, 0x7f090018

    .line 1485
    goto :goto_0

    .line 1469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onGridButtonClicked()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v4

    sget-object v7, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v4, v7, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v4

    sget-object v7, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v7}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v4, v7, :cond_0

    .line 725
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v4

    sget-object v7, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v7}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    .line 726
    .local v3, "settings":Lcom/oneplus/base/Settings;
    const-string v4, "Grid.IsVisible"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 728
    .local v0, "isGridVisible":Z
    const-string v7, "Grid.IsVisible"

    if-nez v0, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 730
    const-class v4, Lcom/meizu/media/camera/ui/CameraPreviewGrid;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/CameraPreviewGrid;

    .line 731
    .local v1, "previewGrid":Lcom/meizu/media/camera/ui/CameraPreviewGrid;
    sget-object v7, Lcom/meizu/media/camera/ui/CameraPreviewGrid;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-nez v0, :cond_4

    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v7, v4}, Lcom/meizu/media/camera/ui/CameraPreviewGrid;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 733
    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v7, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 735
    const-class v4, Lcom/meizu/media/camera/ui/CameraPreviewOverlay;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/ui/CameraPreviewOverlay;

    .line 736
    .local v2, "previewOverlay":Lcom/meizu/media/camera/ui/CameraPreviewOverlay;
    invoke-interface {v2}, Lcom/meizu/media/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    goto :goto_0

    .end local v1    # "previewGrid":Lcom/meizu/media/camera/ui/CameraPreviewGrid;
    .end local v2    # "previewOverlay":Lcom/meizu/media/camera/ui/CameraPreviewOverlay;
    :cond_3
    move v4, v6

    .line 728
    goto :goto_1

    .restart local v1    # "previewGrid":Lcom/meizu/media/camera/ui/CameraPreviewGrid;
    :cond_4
    move v4, v6

    .line 731
    goto :goto_2

    :cond_5
    move v5, v6

    .line 733
    goto :goto_3
.end method

.method private onItemClicked(Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;)V
    .locals 5
    .param p1, "item"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_0

    .line 844
    :cond_2
    iget-object v0, p1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    .line 845
    .local v0, "obj":Ljava/lang/Object;
    instance-of v2, v0, Lcom/meizu/media/camera/scene/Scene;

    if-eqz v2, :cond_6

    move-object v1, v0

    .line 847
    check-cast v1, Lcom/meizu/media/camera/scene/Scene;

    .line 848
    .local v1, "scene":Lcom/meizu/media/camera/scene/Scene;
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v2, :cond_5

    .line 850
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_0

    .line 854
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v3, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    .line 855
    sget-object v1, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    .line 856
    :cond_4
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/meizu/media/camera/scene/SceneManager;->setScene(Lcom/meizu/media/camera/scene/Scene;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClicked() - Fail to change scene to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :cond_5
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v3, "onItemClicked() - No SceneManager"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 865
    .end local v1    # "scene":Lcom/meizu/media/camera/scene/Scene;
    :cond_6
    instance-of v2, v0, Lcom/meizu/media/camera/media/Resolution;

    if-eqz v2, :cond_0

    .line 867
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-eqz v2, :cond_0

    .line 868
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v3, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    check-cast v0, Lcom/meizu/media/camera/media/Resolution;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-interface {v2, v3, v0}, Lcom/meizu/media/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private onOptionsBackButtonClicked(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 576
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_0

    .line 583
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelOpenHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    :cond_3
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelOpenHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 587
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->animateCloseContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V

    .line 592
    :goto_1
    iget-boolean v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashToastShowed:Z

    if-nez v1, :cond_5

    .line 593
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v2, Lcom/meizu/media/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getFlashDisabledMessageText(Lcom/meizu/media/camera/FlashController$FlashDisabledReason;)I

    move-result v0

    .line 594
    .local v0, "resId":I
    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 595
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/media/camera/CameraActivity;->showToast(I)V

    .line 597
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashToastShowed:Z

    .line 601
    .end local v0    # "resId":I
    :cond_5
    iput-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    goto :goto_0

    .line 589
    :cond_6
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v4, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->animateCloseContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V

    goto :goto_1
.end method

.method private onPhotoResolutionButtonClicked()V
    .locals 5

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 713
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 687
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_0

    .line 692
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 693
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    const-string v2, "PhotoResolutionChange"

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_DisalbeCaptureUI:Lcom/oneplus/base/Handle;

    .line 695
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    if-eqz v2, :cond_0

    .line 697
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 698
    .local v1, "oldHandle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    sget-object v3, Lcom/meizu/media/camera/ui/PreviewCover$Style;->PREVIEW_BLUR:Lcom/meizu/media/camera/ui/PreviewCover$Style;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/meizu/media/camera/ui/PreviewCover;->showPreviewCover(Lcom/meizu/media/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    .line 699
    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 701
    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$ui$PreviewCover$UIState:[I

    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    sget-object v4, Lcom/meizu/media/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/meizu/media/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onSceneAdded(Lcom/meizu/media/camera/scene/Scene;)V
    .locals 4
    .param p1, "scene"    # Lcom/meizu/media/camera/scene/Scene;

    .prologue
    .line 878
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v3, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 879
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 897
    :goto_0
    return-void

    .line 883
    :cond_0
    new-instance v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/CameraActivity;Ljava/lang/Object;)V

    .line 886
    .local v1, "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    iget-object v2, v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    sget-object v3, Lcom/meizu/media/camera/scene/Scene$ImageUsage;->OPTIONS_PANEL_ICON:Lcom/meizu/media/camera/scene/Scene$ImageUsage;

    invoke-interface {p1, v3}, Lcom/meizu/media/camera/scene/Scene;->getImage(Lcom/meizu/media/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 889
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v3, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateItem(Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 892
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 893
    iget-object v2, v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 896
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->checkItemCount()V

    goto :goto_0

    .line 889
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onSceneChanged(Lcom/meizu/media/camera/scene/Scene;)V
    .locals 6
    .param p1, "scene"    # Lcom/meizu/media/camera/scene/Scene;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 903
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 905
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    .line 906
    .local v1, "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    iget-object v2, v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    move v2, v3

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateItem(Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 903
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 906
    goto :goto_1

    .line 908
    .end local v1    # "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    :cond_1
    sget-object v5, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    if-ne p1, v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 909
    sget-object v2, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    if-eq p1, v2, :cond_3

    :goto_3
    iput-boolean v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashToastShowed:Z

    .line 910
    return-void

    :cond_2
    move v2, v4

    .line 908
    goto :goto_2

    :cond_3
    move v4, v3

    .line 909
    goto :goto_3
.end method

.method private onSceneRemoved(Lcom/meizu/media/camera/scene/Scene;)V
    .locals 4
    .param p1, "scene"    # Lcom/meizu/media/camera/scene/Scene;

    .prologue
    .line 916
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 918
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    .line 919
    .local v1, "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    iget-object v2, v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    .line 922
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 923
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItemsContainer:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 924
    iget-object v2, v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->removeAutoRotateView(Landroid/view/View;)V

    .line 927
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->checkItemCount()V

    .line 931
    .end local v1    # "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    :cond_0
    return-void

    .line 916
    .restart local v1    # "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private onVideoResolutionButtonClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 677
    :cond_2
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->changeVideoResolution()V

    .line 678
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateVideoResolutionButtonRes()V

    goto :goto_0
.end method

.method private onVideoResolutionChanged(Lcom/meizu/media/camera/media/Resolution;)V
    .locals 3
    .param p1, "resolution"    # Lcom/meizu/media/camera/media/Resolution;

    .prologue
    .line 937
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 939
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    .line 940
    .local v1, "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    iget-object v2, v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateItem(Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 937
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 943
    .end local v1    # "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateVideoResolutionButtonRes(Lcom/meizu/media/camera/media/Resolution;)V

    .line 945
    return-void
.end method

.method private onVideoResolutionListChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/media/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 952
    .local p1, "resolutions":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/Resolution;>;"
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 954
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    .line 955
    .local v3, "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    iget-object v5, v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->removeAutoRotateView(Landroid/view/View;)V

    .line 952
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 957
    .end local v3    # "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    :cond_0
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 960
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v6, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/media/Resolution;

    .line 961
    .local v4, "resolution":Lcom/meizu/media/camera/media/Resolution;
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 963
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/media/Resolution;

    invoke-direct {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->createResolutionItem(Lcom/meizu/media/camera/media/Resolution;)Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    move-result-object v3

    .line 964
    .restart local v3    # "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 965
    .local v2, "index":I
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_VideoResolutionItems:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v5, v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateItem(Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;Z)V

    .line 967
    iget-object v5, v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 971
    .end local v2    # "index":I
    .end local v3    # "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    :cond_1
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->checkItemCount()V

    .line 972
    return-void
.end method

.method private removeAndResetAllViews()V
    .locals 4

    .prologue
    .line 1510
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ViewGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1512
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1513
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0

    .line 1516
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1518
    .local v0, "button":Landroid/widget/ImageButton;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setTranslationX(F)V

    goto :goto_1

    .line 1520
    .end local v0    # "button":Landroid/widget/ImageButton;
    :cond_1
    return-void
.end method

.method private setupButtons()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f020002

    .line 1037
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070048

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_Button_width:I

    .line 1038
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07003f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_Button_height:I

    .line 1039
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_Button_marginEnd:I

    .line 1041
    invoke-static {}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->values()[Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    move-result-object v0

    .local v0, "arr$":[Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v0, v3

    .line 1043
    .local v4, "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030017

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1044
    .local v1, "button":Landroid/widget/ImageButton;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_Button_width:I

    iget v8, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_Button_height:I

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1045
    .local v2, "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_Button_marginEnd:I

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1047
    sget-object v7, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$ui$OptionsPanelImpl$OptionsPanelButton:[I

    invoke-virtual {v4}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1146
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    iget-object v7, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    invoke-virtual {v7, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 1041
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1049
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1050
    new-instance v7, Lcom/meizu/media/camera/ui/OptionsPanelImpl$3;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$3;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1059
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1060
    new-instance v7, Lcom/meizu/media/camera/ui/OptionsPanelImpl$4;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$4;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1069
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1070
    new-instance v7, Lcom/meizu/media/camera/ui/OptionsPanelImpl$5;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$5;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1079
    :pswitch_3
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1080
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    new-instance v7, Lcom/meizu/media/camera/ui/OptionsPanelImpl$6;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$6;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1090
    :pswitch_4
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    const v8, 0x7f020082

    invoke-virtual {v7, v8}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1091
    new-instance v7, Lcom/meizu/media/camera/ui/OptionsPanelImpl$7;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$7;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1100
    :pswitch_5
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1101
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    const v8, 0x7f020075

    invoke-virtual {v7, v8}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1102
    new-instance v7, Lcom/meizu/media/camera/ui/OptionsPanelImpl$8;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$8;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1112
    :pswitch_6
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    const v8, 0x7f020086

    invoke-virtual {v7, v8}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    new-instance v7, Lcom/meizu/media/camera/ui/OptionsPanelImpl$9;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$9;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1122
    :pswitch_7
    iget-object v7, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v8, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/media/camera/media/Resolution;

    invoke-direct {p0, v7}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findResolutionButtonResId(Lcom/meizu/media/camera/media/Resolution;)Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;

    move-result-object v6

    .line 1123
    .local v6, "resource":Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;
    iget v7, v6, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1124
    new-instance v7, Lcom/meizu/media/camera/ui/OptionsPanelImpl$10;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$10;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1133
    .end local v6    # "resource":Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;
    :pswitch_8
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v7

    const v8, 0x7f020087

    invoke-virtual {v7, v8}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1134
    new-instance v7, Lcom/meizu/media/camera/ui/OptionsPanelImpl$11;

    invoke-direct {v7, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$11;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1150
    .end local v1    # "button":Landroid/widget/ImageButton;
    .end local v2    # "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    :cond_0
    return-void

    .line 1047
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 3
    .param p1, "group"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 553
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 555
    .local v1, "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    invoke-direct {p0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateButtonState(Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V

    .line 556
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 561
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    :cond_0
    return-void
.end method

.method private setupContainerVisibility(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 565
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ViewGroupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 567
    .local v1, "viewgroup":Landroid/view/ViewGroup;
    if-ne v1, p1, :cond_0

    .line 568
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 570
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 572
    .end local v1    # "viewgroup":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private setupEventHandler()V
    .locals 3

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v1, Lcom/meizu/media/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$12;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$12;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1165
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v1, Lcom/meizu/media/camera/scene/SceneManager;->EVENT_SCENE_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$13;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$13;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1175
    :cond_0
    return-void
.end method

.method private setupPropertyChangedCallback()V
    .locals 6

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 1183
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    new-instance v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$14;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$14;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    .line 1192
    .local v2, "updateSwitchCameraButtonCallback":Lcom/oneplus/base/PropertyChangedCallback;
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1193
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1195
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$15;

    invoke-direct {v4, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$15;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1203
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$16;

    invoke-direct {v4, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$16;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1226
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$17;

    invoke-direct {v4, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$17;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1275
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$18;

    invoke-direct {v4, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$18;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1284
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$19;

    invoke-direct {v4, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$19;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1293
    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$20;

    invoke-direct {v4, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$20;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1307
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    if-eqz v3, :cond_3

    .line 1309
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/ui/OptionsPanelImpl$21;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$21;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1334
    :goto_0
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-eqz v3, :cond_4

    .line 1336
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v4, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/ui/OptionsPanelImpl$22;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$22;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1345
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v4, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/ui/OptionsPanelImpl$23;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$23;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/media/ResolutionManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1357
    :goto_1
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v3, :cond_5

    .line 1359
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v4, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/ui/OptionsPanelImpl$24;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$24;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1373
    :goto_2
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    if-eqz v3, :cond_0

    .line 1375
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v4, Lcom/meizu/media/camera/ExposureController;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/ui/OptionsPanelImpl$25;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$25;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1393
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    if-eqz v3, :cond_1

    .line 1395
    new-instance v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$26;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$26;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    .line 1403
    .local v1, "flashContollercallback":Lcom/oneplus/base/PropertyChangedCallback;
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v4, Lcom/meizu/media/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4, v1}, Lcom/meizu/media/camera/FlashController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1404
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v4, Lcom/meizu/media/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4, v1}, Lcom/meizu/media/camera/FlashController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1405
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v4, Lcom/meizu/media/camera/FlashController;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4, v1}, Lcom/meizu/media/camera/FlashController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1406
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v4, Lcom/meizu/media/camera/FlashController;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4, v1}, Lcom/meizu/media/camera/FlashController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1409
    .end local v1    # "flashContollercallback":Lcom/oneplus/base/PropertyChangedCallback;
    :cond_1
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    if-eqz v3, :cond_2

    .line 1410
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    sget-object v4, Lcom/meizu/media/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/ui/OptionsPanelImpl$27;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$27;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/ui/PreviewCover;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1429
    :cond_2
    return-void

    .line 1332
    :cond_3
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v4, "onInitialize() - No CaptureModeManager"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1355
    :cond_4
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v4, "onInitialize() - No ResolutionManager"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1371
    :cond_5
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v4, "onInitialize() - No SceneManager"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private showFlashDisabledMessage()V
    .locals 2

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v1, Lcom/meizu/media/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->showFlashDisabledMessage(Lcom/meizu/media/camera/FlashController$FlashDisabledReason;)V

    .line 1436
    :cond_0
    return-void
.end method

.method private showFlashDisabledMessage(Lcom/meizu/media/camera/FlashController$FlashDisabledReason;)V
    .locals 5
    .param p1, "reason"    # Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .prologue
    const/4 v4, 0x0

    .line 1442
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getFlashDisabledMessageText(Lcom/meizu/media/camera/FlashController$FlashDisabledReason;)I

    move-result v0

    .line 1444
    .local v0, "resId":I
    if-lez v0, :cond_3

    .line 1446
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    if-nez v1, :cond_0

    .line 1447
    const-class v1, Lcom/meizu/media/camera/ui/OnScreenHint;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/OnScreenHint;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    .line 1448
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    if-eqz v1, :cond_1

    .line 1450
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashDisabledHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1451
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/meizu/media/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashDisabledHintHandle:Lcom/oneplus/base/Handle;

    .line 1458
    :cond_1
    :goto_0
    return-void

    .line 1453
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashDisabledHintHandle:Lcom/oneplus/base/Handle;

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v4}, Lcom/meizu/media/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1457
    :cond_3
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashDisabledHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashDisabledHintHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private updateButtonState(Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;)V
    .locals 2
    .param p1, "item"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .prologue
    .line 1841
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$ui$OptionsPanelImpl$OptionsPanelButton:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1864
    :goto_0
    :pswitch_0
    return-void

    .line 1843
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updatePhotoResolutionButtonRes()V

    goto :goto_0

    .line 1846
    :pswitch_2
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSceneButton()V

    goto :goto_0

    .line 1849
    :pswitch_3
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSwitchCameraButton()V

    goto :goto_0

    .line 1852
    :pswitch_4
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateVideoResolutionButton()V

    goto :goto_0

    .line 1855
    :pswitch_5
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSelfTimerButton()V

    goto :goto_0

    .line 1858
    :pswitch_6
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateGridButton()V

    goto :goto_0

    .line 1841
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateFlashButton()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 1525
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1526
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v4, "updateFlashButton() - No flash button"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    :cond_0
    :goto_0
    return-void

    .line 1530
    :cond_1
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    if-nez v3, :cond_2

    .line 1532
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v4, "updateFlashButton() - No flash controller"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1536
    :cond_2
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    if-nez v3, :cond_3

    .line 1538
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v4, "updateFlashButton() - No exposure controller"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1544
    :cond_3
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v4, Lcom/meizu/media/camera/FlashController;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1545
    .local v1, "isDisabled":Z
    const/4 v0, 0x1

    .line 1546
    .local v0, "isButtonVisible":Z
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v4, Lcom/meizu/media/camera/FlashController;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1547
    const/4 v0, 0x0

    .line 1560
    :cond_4
    :goto_1
    if-nez v0, :cond_6

    .line 1562
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1548
    :cond_5
    if-eqz v1, :cond_4

    .line 1550
    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$FlashController$FlashDisabledReason:[I

    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v5, Lcom/meizu/media/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v5}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v3}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1553
    :pswitch_0
    const/4 v0, 0x0

    .line 1554
    goto :goto_1

    .line 1565
    :cond_6
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1568
    const/4 v2, 0x0

    .line 1569
    .local v2, "resId":I
    if-nez v1, :cond_8

    .line 1571
    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v5, Lcom/meizu/media/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v5}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/FlashMode;

    invoke-virtual {v3}, Lcom/meizu/media/camera/FlashMode;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    .line 1584
    :pswitch_1
    const v2, 0x7f02002b

    .line 1593
    :goto_2
    iget v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashButtonResId:I

    if-eq v3, v2, :cond_0

    .line 1595
    const v3, 0x7f020029

    if-ne v2, v3, :cond_9

    .line 1597
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashButtonAutoOnDrawable:Lcom/oneplus/drawable/RepeatTransitionDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1598
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashButtonAutoOnDrawable:Lcom/oneplus/drawable/RepeatTransitionDrawable;

    invoke-virtual {v3}, Lcom/oneplus/drawable/RepeatTransitionDrawable;->startRepeatTransition()V

    .line 1603
    :goto_3
    iput v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashButtonResId:I

    goto/16 :goto_0

    .line 1574
    :pswitch_2
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v4, Lcom/meizu/media/camera/ExposureController;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/meizu/media/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/meizu/media/camera/AutoExposureState;

    if-ne v3, v4, :cond_7

    .line 1575
    const v2, 0x7f020029

    goto :goto_2

    .line 1577
    :cond_7
    const v2, 0x7f020028

    .line 1578
    goto :goto_2

    .line 1581
    :pswitch_3
    const v2, 0x7f02002c

    .line 1582
    goto :goto_2

    .line 1589
    :cond_8
    const v2, 0x7f02002a

    goto :goto_2

    .line 1601
    :cond_9
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    .line 1550
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    .line 1571
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateGridButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1611
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1612
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v3, v4, :cond_0

    .line 1613
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1618
    :goto_0
    const-class v3, Lcom/meizu/media/camera/ui/CameraPreviewGrid;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/ui/CameraPreviewGrid;

    .line 1619
    .local v2, "previewGrid":Lcom/meizu/media/camera/ui/CameraPreviewGrid;
    sget-object v3, Lcom/meizu/media/camera/ui/CameraPreviewGrid;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/ui/CameraPreviewGrid;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1621
    .local v0, "isVisible":Z
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1622
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1623
    return-void

    .line 1615
    .end local v0    # "isVisible":Z
    .end local v2    # "previewGrid":Lcom/meizu/media/camera/ui/CameraPreviewGrid;
    :cond_0
    iget v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_Button_marginEnd:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private updateItem(Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;Z)V
    .locals 3
    .param p1, "item"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    .param p2, "isSelected"    # Z

    .prologue
    .line 1629
    if-eqz p2, :cond_0

    .line 1631
    iget-object v0, p1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1632
    iget-object v0, p1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1639
    :goto_0
    return-void

    .line 1636
    :cond_0
    iget-object v0, p1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1637
    iget-object v0, p1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private updateMoreOptionsButton()V
    .locals 2

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1767
    :goto_0
    return-void

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1765
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private updatePhotoResolutionButtonRes()V
    .locals 2

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v1, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/Resolution;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updatePhotoResolutionButtonRes(Lcom/meizu/media/camera/media/Resolution;)V

    .line 1776
    :goto_0
    return-void

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v1, "updatePhotoResolutionButtonRes() - m_ResolutionManager is null, can not update photo resolution button resource"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePhotoResolutionButtonRes(Lcom/meizu/media/camera/media/Resolution;)V
    .locals 4
    .param p1, "resolution"    # Lcom/meizu/media/camera/media/Resolution;

    .prologue
    .line 1780
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->PHOTO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1794
    :goto_0
    return-void

    .line 1784
    :cond_0
    const v1, 0x7f020086

    .line 1785
    .local v1, "resId":I
    invoke-virtual {p1}, Lcom/meizu/media/camera/media/Resolution;->getAspectRatio()Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    .line 1786
    .local v0, "photoRatio":Lcom/oneplus/util/AspectRatio;
    sget-object v2, Lcom/oneplus/util/AspectRatio;->RATIO_4x3:Lcom/oneplus/util/AspectRatio;

    if-ne v0, v2, :cond_2

    .line 1787
    const v1, 0x7f020086

    .line 1793
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->PHOTO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1788
    :cond_2
    sget-object v2, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    if-ne v0, v2, :cond_3

    .line 1789
    const v1, 0x7f020084

    goto :goto_1

    .line 1790
    :cond_3
    sget-object v2, Lcom/oneplus/util/AspectRatio;->RATIO_1x1:Lcom/oneplus/util/AspectRatio;

    if-ne v0, v2, :cond_1

    .line 1791
    const v1, 0x7f020085

    goto :goto_1
.end method

.method private updateSceneButton()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1644
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1682
    :goto_0
    return-void

    .line 1647
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1649
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateSceneButton() - m_SceneItems is empty."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1654
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanel;->PROP_HAS_ITEMS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1656
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1659
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1660
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v2, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/meizu/media/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/scene/Scene;

    .line 1661
    .local v0, "scene":Lcom/meizu/media/camera/scene/Scene;
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v2, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/meizu/media/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    if-eq v1, v2, :cond_3

    .line 1664
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sget-object v2, Lcom/meizu/media/camera/scene/Scene$ImageUsage;->OPTIONS_PANEL_ICON:Lcom/meizu/media/camera/scene/Scene$ImageUsage;

    invoke-interface {v0, v2}, Lcom/meizu/media/camera/scene/Scene;->getImage(Lcom/meizu/media/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1665
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1668
    :cond_3
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 1671
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sget-object v2, Lcom/meizu/media/camera/scene/Scene$ImageUsage;->OPTIONS_PANEL_ICON:Lcom/meizu/media/camera/scene/Scene$ImageUsage;

    invoke-interface {v0, v2}, Lcom/meizu/media/camera/scene/Scene;->getImage(Lcom/meizu/media/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1672
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f02007e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 1675
    :cond_4
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    iget-object v2, v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    check-cast v2, Lcom/meizu/media/camera/scene/Scene;

    sget-object v3, Lcom/meizu/media/camera/scene/Scene$ImageUsage;->OPTIONS_PANEL_ICON:Lcom/meizu/media/camera/scene/Scene$ImageUsage;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/scene/Scene;->getImage(Lcom/meizu/media/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1676
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_0
.end method

.method private updateSelfTimerButton()V
    .locals 2

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSelfTimerButton(J)V

    .line 1726
    return-void
.end method

.method private updateSelfTimerButton(J)V
    .locals 5
    .param p1, "seconds"    # J

    .prologue
    .line 1732
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1755
    :goto_0
    return-void

    .line 1736
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 1737
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_USABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1738
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1741
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1744
    const-wide/16 v2, 0x3

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 1745
    const v1, 0x7f020096

    .line 1752
    .local v1, "resId":I
    :goto_1
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1746
    .end local v1    # "resId":I
    :cond_2
    const-wide/16 v2, 0x5

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    .line 1747
    const v1, 0x7f020097

    .restart local v1    # "resId":I
    goto :goto_1

    .line 1748
    .end local v1    # "resId":I
    :cond_3
    const-wide/16 v2, 0xa

    cmp-long v2, p1, v2

    if-nez v2, :cond_4

    .line 1749
    const v1, 0x7f020095

    .restart local v1    # "resId":I
    goto :goto_1

    .line 1751
    .end local v1    # "resId":I
    :cond_4
    const v1, 0x7f020087

    .restart local v1    # "resId":I
    goto :goto_1
.end method

.method private updateSwitchCameraButton()V
    .locals 1

    .prologue
    .line 1688
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSwitchCameraButton(Lcom/meizu/media/camera/Camera;)V

    .line 1689
    return-void
.end method

.method private updateSwitchCameraButton(Lcom/meizu/media/camera/Camera;)V
    .locals 4
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 1693
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->LENS_SWITCHING:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1720
    :goto_0
    return-void

    .line 1698
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 1699
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1706
    const/4 v1, 0x1

    .line 1709
    .local v1, "isCapturing":Z
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 1710
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->LENS_SWITCHING:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1703
    .end local v1    # "isCapturing":Z
    :pswitch_0
    const/4 v1, 0x0

    .line 1704
    .restart local v1    # "isCapturing":Z
    goto :goto_1

    .line 1712
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->LENS_SWITCHING:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1714
    if-eqz p1, :cond_3

    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_4

    .line 1715
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->LENS_SWITCHING:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f020089

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1717
    :cond_4
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->LENS_SWITCHING:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f020088

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVideoResolutionButton()V
    .locals 4

    .prologue
    .line 1799
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1822
    :goto_0
    return-void

    .line 1802
    :cond_0
    const/4 v1, 0x0

    .line 1803
    .local v1, "isCapturing":Z
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 1804
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1811
    const/4 v1, 0x1

    .line 1815
    :goto_1
    if-eqz v1, :cond_1

    .line 1816
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1808
    :pswitch_0
    const/4 v1, 0x0

    .line 1809
    goto :goto_1

    .line 1818
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1819
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateVideoResolutionButtonRes()V

    goto :goto_0

    .line 1804
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVideoResolutionButtonRes()V
    .locals 3

    .prologue
    .line 1827
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-eqz v1, :cond_0

    .line 1828
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v2, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/Resolution;

    .line 1829
    .local v0, "resolution":Lcom/meizu/media/camera/media/Resolution;
    invoke-direct {p0, v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateVideoResolutionButtonRes(Lcom/meizu/media/camera/media/Resolution;)V

    .line 1833
    .end local v0    # "resolution":Lcom/meizu/media/camera/media/Resolution;
    :goto_0
    return-void

    .line 1831
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateVideoResolutionButtonRes() - m_ResolutionManager is null, can not update video resolution button resource"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateVideoResolutionButtonRes(Lcom/meizu/media/camera/media/Resolution;)V
    .locals 3
    .param p1, "resolution"    # Lcom/meizu/media/camera/media/Resolution;

    .prologue
    .line 1836
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findResolutionButtonResId(Lcom/meizu/media/camera/media/Resolution;)Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;

    move-result-object v0

    .line 1837
    .local v0, "resource":Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iget v2, v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1838
    return-void
.end method


# virtual methods
.method public closeOptionsPanel(Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;I)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "reason"    # Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;
    .param p2, "flags"    # I

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->verifyAccess()V

    .line 341
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v2, "disableFlash() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 348
    :cond_0
    if-nez p1, :cond_1

    .line 349
    sget-object p1, Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;->UNKNOWN:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    .line 352
    :cond_1
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;)V

    .line 353
    .local v0, "handle":Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelCloseHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-direct {p0, p2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->closeOptionsPanelInternal(I)V

    goto :goto_0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_IsOptionsPanelVisible:Ljava/lang/Boolean;

    .line 477
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/meizu/media/camera/UIComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected onFlashButtonClicked()V
    .locals 5

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_0

    .line 794
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    if-nez v2, :cond_3

    .line 795
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v3, "onFlashButtonClicked() - No flash controller"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 800
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v3, Lcom/meizu/media/camera/FlashController;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 801
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v3, Lcom/meizu/media/camera/FlashController;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .line 802
    .local v1, "reason":Lcom/meizu/media/camera/FlashController$FlashDisabledReason;
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFlashButtonClicked() - Flash is disabled, reason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 808
    .end local v1    # "reason":Lcom/meizu/media/camera/FlashController$FlashDisabledReason;
    :cond_4
    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$28;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v4, Lcom/meizu/media/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/FlashMode;

    invoke-virtual {v2}, Lcom/meizu/media/camera/FlashMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 823
    sget-object v0, Lcom/meizu/media/camera/FlashMode;->OFF:Lcom/meizu/media/camera/FlashMode;

    .line 826
    .local v0, "flashMode":Lcom/meizu/media/camera/FlashMode;
    :goto_1
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v3, Lcom/meizu/media/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3, v0}, Lcom/meizu/media/camera/FlashController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 811
    .end local v0    # "flashMode":Lcom/meizu/media/camera/FlashMode;
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v2, v3, :cond_5

    .line 812
    sget-object v0, Lcom/meizu/media/camera/FlashMode;->ON:Lcom/meizu/media/camera/FlashMode;

    .restart local v0    # "flashMode":Lcom/meizu/media/camera/FlashMode;
    goto :goto_1

    .line 814
    .end local v0    # "flashMode":Lcom/meizu/media/camera/FlashMode;
    :cond_5
    sget-object v0, Lcom/meizu/media/camera/FlashMode;->TORCH:Lcom/meizu/media/camera/FlashMode;

    .line 815
    .restart local v0    # "flashMode":Lcom/meizu/media/camera/FlashMode;
    goto :goto_1

    .line 817
    .end local v0    # "flashMode":Lcom/meizu/media/camera/FlashMode;
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v2, v3, :cond_6

    .line 818
    sget-object v0, Lcom/meizu/media/camera/FlashMode;->AUTO:Lcom/meizu/media/camera/FlashMode;

    .restart local v0    # "flashMode":Lcom/meizu/media/camera/FlashMode;
    goto :goto_1

    .line 820
    .end local v0    # "flashMode":Lcom/meizu/media/camera/FlashMode;
    :cond_6
    sget-object v0, Lcom/meizu/media/camera/FlashMode;->TORCH:Lcom/meizu/media/camera/FlashMode;

    .line 821
    .restart local v0    # "flashMode":Lcom/meizu/media/camera/FlashMode;
    goto :goto_1

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 487
    invoke-super {p0}, Lcom/meizu/media/camera/UIComponent;->onInitialize()V

    .line 490
    const-class v5, Lcom/meizu/media/camera/media/ResolutionManager;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/media/ResolutionManager;

    iput-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    .line 491
    const-class v5, Lcom/meizu/media/camera/scene/SceneManager;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/scene/SceneManager;

    iput-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    .line 492
    const-class v5, Lcom/meizu/media/camera/ExposureController;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/ExposureController;

    iput-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    .line 493
    const-class v5, Lcom/meizu/media/camera/FlashController;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/FlashController;

    iput-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    .line 494
    const-class v5, Lcom/meizu/media/camera/ui/PreviewCover;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/ui/PreviewCover;

    iput-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_PreviewCover:Lcom/meizu/media/camera/ui/PreviewCover;

    .line 495
    const-class v5, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    iput-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    .line 498
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    move-object v5, v0

    .line 499
    check-cast v5, Lcom/meizu/media/camera/OPCameraActivity;

    invoke-virtual {v5}, Lcom/meizu/media/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v5

    const v8, 0x7f0b0052

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    .line 500
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    const v8, 0x7f0b0053

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;

    .line 501
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    const v8, 0x7f0b0054

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    .line 502
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    const v8, 0x7f0b0055

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItemsContainer:Landroid/view/ViewGroup;

    .line 504
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ViewGroupList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ViewGroupList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ViewGroupList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    const/4 v5, 0x2

    new-array v2, v5, [Landroid/graphics/drawable/Drawable;

    const v5, 0x7f020028

    invoke-virtual {v0, v5}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v2, v7

    const v5, 0x7f020029

    invoke-virtual {v0, v5}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v2, v6

    .line 509
    .local v2, "flashAutoOnDrawables":[Landroid/graphics/drawable/Drawable;
    new-instance v5, Lcom/oneplus/drawable/RepeatTransitionDrawable;

    const/16 v8, 0xc8

    const/4 v9, 0x3

    invoke-direct {v5, v2, v8, v9}, Lcom/oneplus/drawable/RepeatTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;II)V

    iput-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashButtonAutoOnDrawable:Lcom/oneplus/drawable/RepeatTransitionDrawable;

    .line 510
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FlashButtonAutoOnDrawable:Lcom/oneplus/drawable/RepeatTransitionDrawable;

    invoke-virtual {v5, v6}, Lcom/oneplus/drawable/RepeatTransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 512
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->addNavBarAlignedView(Landroid/view/View;)V

    .line 515
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v5, :cond_0

    .line 516
    sget-object v8, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_IS_DEFAULT_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v9, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v9}, Lcom/meizu/media/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    if-ne v5, v9, :cond_1

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v8, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 518
    :cond_0
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v6, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v4, v5

    .line 519
    .local v4, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/scene/Scene;>;"
    :goto_1
    if-eqz v4, :cond_3

    .line 521
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 522
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/scene/Scene;

    invoke-direct {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onSceneAdded(Lcom/meizu/media/camera/scene/Scene;)V

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/scene/Scene;>;"
    :cond_1
    move v5, v7

    .line 516
    goto :goto_0

    .line 518
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 526
    .restart local v4    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/scene/Scene;>;"
    :cond_3
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    if-eqz v5, :cond_4

    .line 527
    :cond_4
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;

    sget-object v6, Lcom/meizu/media/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onVideoResolutionListChanged(Ljava/util/List;)V

    .line 529
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupButtons()V

    .line 530
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupPropertyChangedCallback()V

    .line 531
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupEventHandler()V

    .line 535
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v5

    sget-object v6, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v5, v6, :cond_5

    .line 536
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;

    sget-object v6, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_FIRST:Ljava/util/List;

    invoke-direct {p0, v5, v6}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 541
    :goto_3
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateFlashButton()V

    .line 542
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateMoreOptionsButton()V

    .line 543
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSwitchCameraButton()V

    .line 544
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSceneButton()V

    .line 545
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateVideoResolutionButton()V

    .line 547
    return-void

    .line 538
    :cond_5
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;

    sget-object v6, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->VIDEO_DEFAULT_TIER_FIRST:Ljava/util/List;

    invoke-direct {p0, v5, v6}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_3
.end method

.method protected onMoreOptionsButtonClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_0

    .line 615
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 616
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_SECOND:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 619
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 620
    .local v0, "pivotx":I
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->animateOpenContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V

    .line 623
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    .line 624
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onSceneButtonClicked(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v4, v5, :cond_0

    .line 637
    :cond_2
    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_4

    .line 639
    sget-object v3, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    .line 640
    .local v3, "scene":Lcom/meizu/media/camera/scene/Scene;
    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v5, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/meizu/media/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    if-eq v4, v5, :cond_3

    .line 641
    sget-object v3, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    .line 647
    :goto_1
    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    invoke-interface {v4, v3, v6}, Lcom/meizu/media/camera/scene/SceneManager;->setScene(Lcom/meizu/media/camera/scene/Scene;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 648
    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClicked() - Fail to change scene to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_3
    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    iget-object v3, v4, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    .end local v3    # "scene":Lcom/meizu/media/camera/scene/Scene;
    check-cast v3, Lcom/meizu/media/camera/scene/Scene;

    .restart local v3    # "scene":Lcom/meizu/media/camera/scene/Scene;
    goto :goto_1

    .line 653
    .end local v3    # "scene":Lcom/meizu/media/camera/scene/Scene;
    :cond_4
    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 654
    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    .line 655
    .local v1, "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    iget-object v5, v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    iget-object v6, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SceneItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 657
    .end local v1    # "item":Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
    :cond_5
    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsButtonTable:Ljava/util/Hashtable;

    sget-object v6, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->BACK:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 661
    .local v2, "pivotx":I
    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_FirstTierContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v5, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->animateOpenContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V

    .line 663
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    .line 664
    iget-object v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected onSelfTimerButtonClicked()V
    .locals 5

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v2, v3, :cond_0

    .line 751
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 752
    .local v0, "seconds":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 753
    const-wide/16 v0, 0x3

    .line 760
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/media/camera/CameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 754
    :cond_3
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 755
    const-wide/16 v0, 0x5

    goto :goto_1

    .line 756
    :cond_4
    const-wide/16 v2, 0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 757
    const-wide/16 v0, 0xa

    goto :goto_1

    .line 759
    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected onSwitchCameraButtonClicked()V
    .locals 2

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isCaptureUIEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-ne v0, v1, :cond_0

    .line 774
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 778
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->switchCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v1, "onSwitchCameraButtonClicked() - Fail to switch camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openOptionsPanel(Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "reason"    # Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;
    .param p2, "pivotx"    # I

    .prologue
    const/4 v1, 0x0

    .line 998
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->verifyAccess()V

    .line 999
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->isRunningOrInitializing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1001
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v3, "disableFlash() - Component is not running"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1031
    :goto_0
    return-object v0

    .line 1006
    :cond_0
    if-nez p1, :cond_1

    .line 1007
    sget-object p1, Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;->OTHERS:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;

    .line 1010
    :cond_1
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;)V

    .line 1011
    .local v0, "handle":Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelOpenHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1014
    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;->PHOTO_DEFAULT_TIER_SECOND:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;

    if-ne p1, v2, :cond_3

    .line 1016
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1017
    iput-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierEntryView:Landroid/view/View;

    .line 1019
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    sget-object v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PHOTO_DEFAULT_TIER_SECOND:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupContainerButtons(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 1020
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupContainerVisibility(Landroid/view/ViewGroup;)V

    .line 1022
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2, p2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->animateOpenContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V

    .line 1024
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_SecondTierContainer:Landroid/view/ViewGroup;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1028
    :cond_3
    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public openOptionsPanel(Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;I)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;
    .param p2, "flags"    # I

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->verifyAccess()V

    .line 980
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelCloseHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    const-string v1, "openOptionsPanel remove handle success"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :goto_0
    return-void

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelCloseHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 987
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 989
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openOptionsPanel() - m_OptionsPanelCloseHandles is not empty, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanelCloseHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". OptionsPanel will remain closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
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
    .line 1497
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    .line 1498
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_IsOptionsPanelVisible:Ljava/lang/Boolean;

    .line 1499
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_IsOptionsPanelVisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1504
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/UIComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->m_OptionsPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
