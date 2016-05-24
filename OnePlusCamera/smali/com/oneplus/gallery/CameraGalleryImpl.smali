.class public Lcom/oneplus/gallery/CameraGalleryImpl;
.super Lcom/meizu/media/camera/UIComponent;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/meizu/media/camera/ui/CameraGallery;
.implements Lcom/meizu/media/camera/KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/CameraGalleryImpl$26;,
        Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;,
        Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;,
        Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;,
        Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;,
        Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    }
.end annotation


# static fields
.field private static final DISTANCE_ANIMATION_TRANSLATION:I = 0x32

.field private static final DISTANCE_SHOW_NO_PHOTO_TOAST:I = 0xc8

.field private static final DURATION_ANIMATION:J = 0x96L

.field private static final DURATION_ANIMATION_DELETION:J = 0x12cL

.field private static final DURATION_CLOSE_FILMSTRIP_DELAYED:J = 0x1f4L

.field private static final DURATION_COMMIT_DELETION:J = 0xbb8L

.field private static final DURATION_FILMSTRIP_TRANSLATION_ANIMATION:J = 0xc8L

.field private static final EXTRA_GALLERY3D_SECURE_MODE:Ljava/lang/String; = "SECURE_MODE"

.field private static final EXTRA_IS_READ_ONLY:Ljava/lang/String; = "IsReadOnly"

.field private static final EXTRA_IS_SECURE_MODE:Ljava/lang/String; = "IsSecureMode"

.field private static final FLAG_ANIM_FADE_IN:I = 0x1

.field private static final FLAG_ANIM_FADE_IN_FLY_IN_BOTTOM:I = 0x5

.field private static final FLAG_ANIM_FADE_IN_FLY_IN_TOP:I = 0x9

.field private static final FLAG_ANIM_FADE_OUT:I = 0x2

.field private static final FLAG_ANIM_FADE_OUT_FLY_OUT_BOTTOM:I = 0x12

.field private static final FLAG_ANIM_FADE_OUT_FLY_OUT_TOP:I = 0x22

.field private static final FLAG_ANIM_FLY_IN_BOTTOM:I = 0x4

.field private static final FLAG_ANIM_FLY_IN_TOP:I = 0x8

.field private static final FLAG_ANIM_FLY_OUT_BOTTOM:I = 0x10

.field private static final FLAG_ANIM_FLY_OUT_TOP:I = 0x20

.field private static final MINIMUM_ANIMATION_DURATION:J = 0x64L

.field private static final MSG_CLOSE_FILMSTRIP_DELAYED:I = 0x2724

.field private static final MSG_COMMIT_DELETION:I = 0x271a

.field private static final MSG_DECODE_THUMBS:I = 0x2710

.field private static final PRE_DECODE_THUMB_WINDOW_SIZE:I = 0x2

.field private static final PRE_DECODE_THUMB_WINDOW_SIZE_SMALL:I = 0x3

.field private static final PRINT_TRACE_LOGS:Z = false

.field private static final THRESHOLD_CLOSE_FILMSTRIP_RATIO:F = 0.8f

.field private static final THRESHOLD_DIFF_Y_TO_DELETE_IMAGE:F = 600.0f

.field private static final THRESHOLD_FAST_SCROLLING_TIME_MILLIS:J = 0x320L

.field private static final THRESHOLD_OPEN_FILMSTRIP_RATIO:F = 0.2f


# instance fields
.field private final m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

.field private m_BackButton:Landroid/view/View;

.field private m_BackgroundView:Landroid/view/View;

.field private m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

.field private m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

.field private m_DeleteButton:Landroid/view/View;

.field private m_DeleteContainer:Landroid/view/View;

.field private m_DeleteContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private m_DeletingPosition:Ljava/lang/Integer;

.field private m_DetailsButton:Landroid/view/View;

.field private m_DetailsContainer:Landroid/view/View;

.field private m_DetailsContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private final m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private m_EditButton:Landroid/view/View;

.field private m_EditContainer:Landroid/view/View;

.field private m_EditContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private m_FakePhotoSize:Landroid/util/Size;

.field private m_FakeVideoSize:Landroid/util/Size;

.field private m_FileManager:Lcom/meizu/media/camera/io/FileManager;

.field private m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

.field private m_FilmstripScrollMode:I

.field private m_FlashController:Lcom/meizu/media/camera/FlashController;

.field private m_FlashDisableHandle:Lcom/oneplus/base/Handle;

.field private m_FooterContainer:Landroid/view/View;

.field private final m_FreeThumbDecodeInfos:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_GalleryItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_GalleryState:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

.field private m_GalleryStateOnGestureStart:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

.field private m_GestureDetector:Lcom/meizu/media/camera/ui/GestureDetector;

.field private m_GestureHandler:Lcom/meizu/media/camera/ui/BaseGestureHandler;

.field private final m_HighResBitmapDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private m_HighResBitmapDecodeHandle:Lcom/oneplus/base/Handle;

.field private m_HighResBitmapPool:Lcom/oneplus/media/BitmapPool;

.field private m_InitTouchPagerX:F

.field private m_IsActionEditSupported:Z

.field private m_IsActivityPausedByAction:Z

.field private m_IsFilmstripOverscroll:Z

.field private m_IsFilmstripScrolling:Z

.field private m_IsFirstTouchEventAfterOverScroll:Z

.field private m_IsScaleImageOverScaledDown:Z

.field private m_IsSetupUI:Z

.field private m_IsToolbarVisible:Z

.field private m_IsUndoBarVisible:Z

.field private m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

.field private m_LatestFilmstripItemPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

.field private m_MaxItemHeight:I

.field private m_MaxItemHeightLandscape:I

.field private m_MaxItemHeightPortrait:I

.field private m_MaxItemWidth:I

.field private m_MaxItemWidthLandscape:I

.field private m_MaxItemWidthPortrait:I

.field private m_MediaChangeEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaList:Lcom/meizu/media/camera/media/MediaList;

.field private m_NavigationBarContainer:Landroid/view/View;

.field private m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private final m_OnFilmstripAnimationEndRunnable:Ljava/lang/Runnable;

.field private m_PreferredContentUri:Landroid/net/Uri;

.field private m_RecycledMediaInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/media/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_ShareButton:Landroid/view/View;

.field private m_ShareContainer:Landroid/view/View;

.field private m_ShareContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

.field private final m_SmallThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private final m_SmallThumbDecodeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_TakeScreenShotHandle:Lcom/oneplus/base/Handle;

.field private m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

.field private final m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private final m_ThumbDecodeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_TranslationXRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_UIStateOnDraggingStart:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

.field private m_UndoBarContainer:Landroid/view/View;

.field private m_UndoBarPhotoCountView:Landroid/widget/TextView;

.field private m_UndoBarRestoreButton:Landroid/view/View;

.field private m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;


# direct methods
.method protected constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 4
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    const/16 v3, 0x50

    const/4 v2, 0x1

    .line 1147
    const-string v0, "Camera Gallery Impl"

    invoke-direct {p0, v0, p1, v2}, Lcom/meizu/media/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Z)V

    .line 122
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 126
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 127
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xff

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 139
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    .line 141
    sget-object v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 144
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$1;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 159
    iput-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    .line 174
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$2;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeEventHandler:Lcom/oneplus/base/EventHandler;

    .line 183
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaInfos:Ljava/util/List;

    .line 188
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 190
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$3;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    .line 201
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$4;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    .line 215
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 317
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$5;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureHandler:Lcom/meizu/media/camera/ui/BaseGestureHandler;

    .line 514
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$6;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 1077
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$7;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnFilmstripAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1150
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1151
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1152
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onHighResImageDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateMediaList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/meizu/media/camera/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/media/MediaList;)Lcom/meizu/media/camera/media/MediaList;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/media/MediaList;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    return-object p1
.end method

.method static synthetic access$10100(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->restoreMediaInfoFromRecycler()V

    return-void
.end method

.method static synthetic access$10200(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/CameraGalleryImpl;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/meizu/media/camera/ui/CameraGallery$UIState;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingEnd()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripOverScrollState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/widget/FilmstripView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onThumbnailImageDecoded(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery/CameraGalleryImpl;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_InitTouchPagerX:F

    return v0
.end method

.method static synthetic access$2002(Lcom/oneplus/gallery/CameraGalleryImpl;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # F

    .prologue
    .line 80
    iput p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_InitTouchPagerX:F

    return p1
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingStart()V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Range;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getTranslationXRange()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery/CameraGalleryImpl;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingUpdate(FFF)V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery/CameraGalleryImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery/CameraGalleryImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidth:I

    return v0
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery/CameraGalleryImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeight:I

    return v0
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getScaleImageGestureReceiver()Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageGestureStart(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/oneplus/gallery/CameraGalleryImpl;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$4700(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripCurrentItem(Lcom/oneplus/widget/ScaleImageView;Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/oneplus/gallery/CameraGalleryImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripScrollMode:I

    return v0
.end method

.method static synthetic access$5300(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V

    return-void
.end method

.method static synthetic access$5700(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "x2"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "x3"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/oneplus/gallery/CameraGalleryImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->deletePage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    return-void
.end method

.method static synthetic access$6100(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageGestureEnd(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/media/MediaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/media/MediaInfo;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->playVideoPage(Lcom/meizu/media/camera/media/MediaInfo;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages()V

    return-void
.end method

.method static synthetic access$6500(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripState()V

    return-void
.end method

.method static synthetic access$6600(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/meizu/media/camera/FlashController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/FlashController;)Lcom/meizu/media/camera/FlashController;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/FlashController;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Class;)Lcom/oneplus/base/component/Component;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7000(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImages()V

    return-void
.end method

.method static synthetic access$7300(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->refreshThumbnailImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setPageToContentUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/io/FileManager;)Lcom/meizu/media/camera/io/FileManager;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/io/FileManager;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    return v0
.end method

.method static synthetic access$8002(Lcom/oneplus/gallery/CameraGalleryImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$8202(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$8300(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkActionEditSupported()V

    return-void
.end method

.method static synthetic access$8400(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    return-void
.end method

.method static synthetic access$8500(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeEventHandler:Lcom/oneplus/base/EventHandler;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripOverscroll(Z)V

    return-void
.end method

.method static synthetic access$8700(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripScrollStarted()V

    return-void
.end method

.method static synthetic access$8800(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripScrollStopped()V

    return-void
.end method

.method static synthetic access$8900(Lcom/oneplus/gallery/CameraGalleryImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripCurrentItemChanged(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripTouchReceived(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9100(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->navigateBack()V

    return-void
.end method

.method static synthetic access$9300(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->sharePage(I)V

    return-void
.end method

.method static synthetic access$9600(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->editPage(I)V

    return-void
.end method

.method static synthetic access$9800(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->showPageDetails(I)V

    return-void
.end method

.method private canDeleteButtonVisible()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1192
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    if-ne v3, v4, :cond_0

    move v0, v2

    .line 1193
    .local v0, "isBrowseFastMode":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1196
    :goto_1
    return v1

    .end local v0    # "isBrowseFastMode":Z
    :cond_0
    move v0, v1

    .line 1192
    goto :goto_0

    .restart local v0    # "isBrowseFastMode":Z
    :cond_1
    move v1, v2

    .line 1196
    goto :goto_1
.end method

.method private canDetailsButtonVisible()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1203
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    if-ne v3, v4, :cond_0

    move v0, v2

    .line 1204
    .local v0, "isBrowseFastMode":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1207
    :goto_1
    return v1

    .end local v0    # "isBrowseFastMode":Z
    :cond_0
    move v0, v1

    .line 1203
    goto :goto_0

    .restart local v0    # "isBrowseFastMode":Z
    :cond_1
    move v1, v2

    .line 1207
    goto :goto_1
.end method

.method private canEditButtonVisible()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1214
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v4}, Lcom/meizu/media/camera/media/MediaList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return v6

    .line 1216
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v4}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v3

    .line 1217
    .local v3, "position":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1219
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v4, v3}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v4}, Lcom/meizu/media/camera/media/MediaInfo;->isVideo()Z

    move-result v2

    .line 1220
    .local v2, "isVideo":Z
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    if-ne v4, v7, :cond_2

    move v0, v5

    .line 1221
    .local v0, "isBrowseFastMode":Z
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v4

    sget-object v7, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v7}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1222
    .local v1, "isSecureMode":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActionEditSupported:Z

    if-eqz v4, :cond_0

    move v6, v5

    .line 1225
    goto :goto_0

    .end local v0    # "isBrowseFastMode":Z
    .end local v1    # "isSecureMode":Z
    :cond_2
    move v0, v6

    .line 1220
    goto :goto_1
.end method

.method private canShareButtonVisible()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1232
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    if-ne v2, v5, :cond_2

    move v0, v3

    .line 1233
    .local v0, "isBrowseFastMode":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1234
    .local v1, "isSecureMode":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v4

    .line 1237
    :cond_1
    return v3

    .end local v0    # "isBrowseFastMode":Z
    .end local v1    # "isSecureMode":Z
    :cond_2
    move v0, v4

    .line 1232
    goto :goto_0
.end method

.method private cancelDecodingHighResolutionImage(Lcom/meizu/media/camera/media/MediaInfo;)V
    .locals 1
    .param p1, "mediaInfo"    # Lcom/meizu/media/camera/media/MediaInfo;

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeHandle:Lcom/oneplus/base/Handle;

    .line 1164
    :cond_0
    return-void
.end method

.method private cancelDecodingImages()V
    .locals 6

    .prologue
    .line 1170
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 1173
    .local v1, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 1174
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1170
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1176
    .end local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 1178
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 1179
    .restart local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 1180
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1176
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1182
    .end local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeHandle:Lcom/oneplus/base/Handle;

    .line 1183
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1184
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1185
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapPool:Lcom/oneplus/media/BitmapPool;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/media/BitmapPool;->shrink(J)V

    .line 1186
    return-void
.end method

.method private checkActionEditSupported()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1292
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/media/camera/CameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1293
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1296
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1297
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActionEditSupported:Z

    .line 1300
    :goto_0
    return-void

    .line 1299
    :cond_0
    iput-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActionEditSupported:Z

    goto :goto_0
.end method

.method private closeFilmstrip(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 1244
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(ZZ)V

    .line 1245
    return-void
.end method

.method private closeFilmstrip(ZZ)V
    .locals 2
    .param p1, "animation"    # Z
    .param p2, "clearRecycler"    # Z

    .prologue
    .line 1249
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$UIState:[I

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1257
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "closeFilmstrip()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 1263
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TakeScreenShotHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1266
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1269
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2724

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1272
    if-eqz p2, :cond_0

    .line 1273
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    .line 1279
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    .line 1285
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    .line 1286
    :pswitch_0
    return-void

    .line 1249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createDrawableForDisplay(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1306
    if-eqz p1, :cond_0

    .line 1308
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1309
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1312
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeHighResolutionImage(Lcom/meizu/media/camera/media/MediaInfo;)V
    .locals 7
    .param p1, "mediaInfo"    # Lcom/meizu/media/camera/media/MediaInfo;

    .prologue
    const/16 v2, 0x1000

    .line 1321
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeHandle:Lcom/oneplus/base/Handle;

    .line 1322
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapPool:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {p1}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeHandle:Lcom/oneplus/base/Handle;

    .line 1323
    return-void
.end method

.method private decodeThumbnailImage(Ljava/lang/String;ZZ)V
    .locals 12
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "urgent"    # Z
    .param p3, "smallOnly"    # Z

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x780

    const/16 v2, 0x200

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 1330
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1334
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v7

    .line 1335
    .local v7, "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    invoke-static {p1}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v7, :cond_2

    if-eqz p2, :cond_5

    .line 1337
    :cond_2
    if-nez v7, :cond_4

    .line 1339
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    check-cast v7, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 1340
    .restart local v7    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    if-nez v7, :cond_3

    .line 1341
    new-instance v7, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .end local v7    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    invoke-direct {v7, v11}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$1;)V

    .line 1342
    .restart local v7    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_3
    iput-object p1, v7, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->filePath:Ljava/lang/String;

    .line 1343
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    :cond_4
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    if-eqz p2, :cond_9

    move v4, v8

    :goto_1
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 1351
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v7

    .line 1352
    if-nez p3, :cond_0

    if-eqz v7, :cond_6

    if-eqz p2, :cond_0

    .line 1354
    :cond_6
    if-nez v7, :cond_8

    .line 1356
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    check-cast v7, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 1357
    .restart local v7    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    if-nez v7, :cond_7

    .line 1358
    new-instance v7, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .end local v7    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    invoke-direct {v7, v11}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$1;)V

    .line 1359
    .restart local v7    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_7
    iput-object p1, v7, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->filePath:Ljava/lang/String;

    .line 1360
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    :cond_8
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    if-eqz p2, :cond_a

    move v4, v8

    :goto_2
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p1

    move v2, v10

    move v3, v10

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    :cond_9
    move v4, v9

    .line 1345
    goto :goto_1

    :cond_a
    move v4, v9

    .line 1362
    goto :goto_2
.end method

.method private decodeThumbnailImages()V
    .locals 20

    .prologue
    .line 1373
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x2710

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1460
    :cond_0
    return-void

    .line 1378
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v17

    sget-object v18, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v17 .. v18}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/meizu/media/camera/media/MediaList;->size()I

    move-result v12

    .line 1381
    .local v12, "mediaCount":I
    add-int/lit8 v17, v12, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/widget/FilmstripView;->getFirstVisibltItem()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1382
    .local v16, "startPosition":I
    add-int/lit8 v17, v12, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/widget/FilmstripView;->getLastVisibltItem()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1383
    .local v6, "endPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v5

    .line 1384
    .local v5, "centerPosition":I
    if-ltz v16, :cond_0

    if-ltz v6, :cond_0

    .line 1388
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v17

    sget-object v18, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/meizu/media/camera/media/MediaList;->size()I

    move-result v17

    sub-int v17, v17, v16

    add-int/lit8 v13, v17, -0x1

    .line 1391
    .local v13, "newEndPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/meizu/media/camera/media/MediaList;->size()I

    move-result v17

    sub-int v17, v17, v6

    add-int/lit8 v16, v17, -0x1

    .line 1392
    move v6, v13

    .line 1395
    .end local v13    # "newEndPosition":I
    :cond_2
    sget-object v18, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$UIState:[I

    sget-object v17, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v17

    aget v17, v18, v17

    packed-switch v17, :pswitch_data_0

    .line 1404
    const/4 v14, 0x0

    .line 1405
    .local v14, "preDecodeWindowSize":I
    const/4 v15, 0x1

    .line 1408
    .local v15, "preDecodeWindowSizeSmall":I
    :goto_0
    const/16 v17, 0x0

    sub-int v18, v16, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1409
    add-int/lit8 v17, v12, -0x1

    add-int v18, v6, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1410
    const/16 v17, 0x0

    sub-int v18, v16, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1411
    .local v8, "extStartPosition":I
    add-int/lit8 v17, v12, -0x1

    add-int v18, v6, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1414
    .local v7, "extEndPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v9, v17, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_6

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 1417
    .local v10, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    const/4 v4, 0x1

    .line 1418
    .local v4, "cancel":Z
    move v11, v8

    .local v11, "j":I
    :goto_2
    if-gt v11, v7, :cond_3

    .line 1420
    iget-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->filePath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1422
    const/4 v4, 0x0

    .line 1426
    :cond_3
    if-eqz v4, :cond_4

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1430
    iget-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 1414
    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 1400
    .end local v4    # "cancel":Z
    .end local v7    # "extEndPosition":I
    .end local v8    # "extStartPosition":I
    .end local v9    # "i":I
    .end local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v11    # "j":I
    .end local v14    # "preDecodeWindowSize":I
    .end local v15    # "preDecodeWindowSizeSmall":I
    :pswitch_0
    const/4 v14, 0x2

    .line 1401
    .restart local v14    # "preDecodeWindowSize":I
    const/4 v15, 0x3

    .line 1402
    .restart local v15    # "preDecodeWindowSizeSmall":I
    goto/16 :goto_0

    .line 1418
    .restart local v4    # "cancel":Z
    .restart local v7    # "extEndPosition":I
    .restart local v8    # "extStartPosition":I
    .restart local v9    # "i":I
    .restart local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .restart local v11    # "j":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1433
    .end local v4    # "cancel":Z
    .end local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v11    # "j":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v9, v17, -0x1

    :goto_3
    if-ltz v9, :cond_a

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 1436
    .restart local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    const/4 v4, 0x1

    .line 1437
    .restart local v4    # "cancel":Z
    move/from16 v11, v16

    .restart local v11    # "j":I
    :goto_4
    if-gt v11, v6, :cond_7

    .line 1439
    iget-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->filePath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1441
    const/4 v4, 0x0

    .line 1445
    :cond_7
    if-eqz v4, :cond_8

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1449
    iget-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 1433
    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 1437
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1454
    .end local v4    # "cancel":Z
    .end local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v11    # "j":I
    :cond_a
    move v9, v7

    :goto_5
    if-le v9, v6, :cond_c

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v16

    if-lt v9, v0, :cond_b

    if-gt v9, v6, :cond_b

    const/16 v17, 0x1

    :goto_6
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Ljava/lang/String;ZZ)V

    .line 1454
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 1455
    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    .line 1456
    :cond_c
    move v9, v8

    :goto_7
    move/from16 v0, v16

    if-ge v9, v0, :cond_e

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v16

    if-lt v9, v0, :cond_d

    if-gt v9, v6, :cond_d

    const/16 v17, 0x1

    :goto_8
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Ljava/lang/String;ZZ)V

    .line 1456
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1457
    :cond_d
    const/16 v17, 0x0

    goto :goto_8

    .line 1458
    :cond_e
    move/from16 v9, v16

    :goto_9
    if-gt v9, v6, :cond_0

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v18

    if-ne v9, v5, :cond_f

    const/16 v17, 0x1

    :goto_a
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Ljava/lang/String;ZZ)V

    .line 1458
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 1459
    :cond_f
    const/16 v17, 0x0

    goto :goto_a

    .line 1395
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private deleteMediaInfoFromRecycler()V
    .locals 5

    .prologue
    .line 1467
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    if-eqz v3, :cond_1

    .line 1469
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/media/MediaInfo;

    .line 1471
    .local v2, "media":Lcom/meizu/media/camera/media/MediaInfo;
    invoke-virtual {v2}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, "file":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;

    invoke-interface {v3, v0}, Lcom/meizu/media/camera/io/FileManager;->deleteFile(Ljava/lang/String;)V

    .line 1473
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v4, "deleteMediaInfoFromRecycler() - Delete file: "

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1475
    .end local v0    # "file":Ljava/lang/String;
    .end local v2    # "media":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1479
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x271a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1480
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setUndoBarVisibility(ZZ)V

    .line 1481
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v3}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 1490
    :goto_1
    return-void

    .line 1485
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    goto :goto_1

    .line 1481
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private deletePage(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 1498
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v5}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1546
    :cond_0
    :goto_0
    return v4

    .line 1502
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 1505
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 1506
    .local v3, "state":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    invoke-virtual {v3}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1513
    :pswitch_0
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deletePage() - Cannot delete page in current state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1516
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1519
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v6, "deletePage() - Pos: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1522
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v5}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1523
    .local v0, "currentPosition":I
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v5}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 1524
    .local v1, "maxPosition":I
    move v2, v0

    .line 1525
    .local v2, "newPosition":I
    if-ge p1, v0, :cond_2

    .line 1526
    add-int/lit8 v2, v2, -0x1

    .line 1527
    :cond_2
    if-gez v2, :cond_5

    .line 1528
    const/4 v2, 0x0

    .line 1531
    :cond_3
    :goto_1
    if-eq v2, v0, :cond_4

    .line 1532
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v5, v2, v4}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 1535
    :cond_4
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    invoke-virtual {v3}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 1543
    :goto_2
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->movePageToRecycler(I)V

    .line 1546
    const/4 v4, 0x1

    goto :goto_0

    .line 1529
    :cond_5
    if-le v2, v1, :cond_3

    .line 1530
    move v2, v1

    goto :goto_1

    .line 1538
    :pswitch_2
    sget-object v4, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_2

    .line 1506
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1535
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch
.end method

.method private editPage(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1554
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1558
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 1561
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 1562
    .local v0, "state":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1568
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editPage() - Cannot edit page in current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1571
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1575
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->editPageDirectly(I)V

    goto :goto_0

    .line 1562
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private editPageDirectly(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 1583
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v1, "editIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v4, p1}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/media/MediaInfo;

    .line 1585
    .local v3, "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    invoke-virtual {v3}, Lcom/meizu/media/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "image/*"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1588
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/OPCameraActivity;

    .line 1589
    .local v0, "activity":Lcom/meizu/media/camera/OPCameraActivity;
    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$8;

    invoke-direct {v4, p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$8;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/media/MediaInfo;)V

    invoke-virtual {v0, v1, v4}, Lcom/meizu/media/camera/OPCameraActivity;->startActivityForResultByAgent(Landroid/content/Intent;Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v2

    .line 1642
    .local v2, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1643
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    .line 1644
    :cond_0
    return-void
.end method

.method private findThumbDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .locals 4
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;>;"
    const/4 v2, 0x0

    .line 1650
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v1, v2

    .line 1658
    :cond_1
    :goto_0
    return-object v1

    .line 1652
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 1654
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 1655
    .local v1, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    iget-object v3, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1652
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_3
    move-object v1, v2

    .line 1658
    goto :goto_0
.end method

.method private getHideTranslationX()F
    .locals 3

    .prologue
    .line 1676
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getTranslationXRange()Landroid/util/Range;

    move-result-object v0

    .line 1677
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1678
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1680
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method private getRotateMediaListIndex(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1687
    move v0, p1

    .line 1688
    .local v0, "mediaListIndex":I
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1696
    :goto_0
    return v0

    .line 1691
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v0

    .line 1692
    goto :goto_0

    .line 1688
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private getRotatePosition(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1703
    move v0, p1

    .line 1704
    .local v0, "position":I
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1712
    :goto_0
    return v0

    .line 1707
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v0

    .line 1708
    goto :goto_0

    .line 1704
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private getScaleImageGestureReceiver()Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    return-object v0
.end method

.method private getTranslationXRange()Landroid/util/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1726
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TranslationXRange:Landroid/util/Range;

    if-eqz v3, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TranslationXRange:Landroid/util/Range;

    .line 1746
    :goto_0
    return-object v0

    .line 1728
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/ScreenSize;

    .line 1729
    .local v1, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    .line 1731
    .local v2, "uiRotation":Lcom/oneplus/base/Rotation;
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1743
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTranslationXRange() - Rotation is not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 1734
    :pswitch_0
    new-instance v0, Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1735
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    goto :goto_0

    .line 1737
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :pswitch_1
    new-instance v0, Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1738
    .restart local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    goto :goto_0

    .line 1740
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :pswitch_2
    new-instance v0, Landroid/util/Range;

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1741
    .restart local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    goto :goto_0

    .line 1731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getViewVisibilityState(Landroid/view/View;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 1768
    :goto_0
    return-object v0

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 1756
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 1757
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 1758
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 1759
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 1760
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 1761
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 1762
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 1763
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 1764
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 1767
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "getViewVisibilityState() - Unknow view"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0
.end method

.method private isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z
    .locals 4
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    const/4 v1, 0x0

    .line 1801
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1802
    .local v0, "tag":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1803
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1805
    :cond_0
    return v1
.end method

.method private movePageToRecycler(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x1

    .line 1813
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v1, p1}, Lcom/meizu/media/camera/media/MediaList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/MediaInfo;

    .line 1814
    .local v0, "media":Lcom/meizu/media/camera/media/MediaInfo;
    if-eqz v0, :cond_0

    .line 1815
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1816
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v2, "movePageToRecycler() - Media: "

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1819
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1821
    invoke-direct {p0, v4, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setUndoBarVisibility(ZZ)V

    .line 1822
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1836
    :goto_0
    const/16 v1, 0x271a

    const-wide/16 v2, 0xbb8

    invoke-static {p0, v1, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1839
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v1}, Lcom/meizu/media/camera/media/MediaList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1841
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v2, "movePageToRecycler() - Last media"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const/4 v1, 0x0

    invoke-direct {p0, v4, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(ZZ)V

    .line 1844
    :cond_1
    return-void

    .line 1826
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    goto :goto_0

    .line 1833
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movePageToRecycler() - Cannot remove media info, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1822
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private navigateBack()V
    .locals 2

    .prologue
    .line 1851
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1861
    :goto_0
    :pswitch_0
    return-void

    .line 1855
    :pswitch_1
    sget-object v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_0

    .line 1858
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    goto :goto_0

    .line 1851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onFilmstripCurrentItemChanged(II)V
    .locals 11
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 1884
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1887
    .local v0, "nowTimeMillis":J
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 1888
    .local v4, "size":I
    sget-object v6, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v5}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 1952
    if-le v4, v7, :cond_0

    .line 1953
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1958
    :cond_0
    :goto_0
    invoke-direct {p0, v10}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateToolbarVisibility(Z)V

    .line 1961
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 1962
    return-void

    .line 1892
    :pswitch_0
    if-nez v4, :cond_1

    .line 1896
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    sub-int v6, p2, p1

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    float-to-long v6, v6

    mul-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1900
    :cond_1
    if-ne v4, v7, :cond_3

    .line 1904
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    sub-int v6, p2, p1

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    float-to-long v6, v6

    mul-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1907
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1908
    .local v2, "prevTimeMillisWithSignNum":J
    sub-int v5, p2, p1

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    long-to-float v6, v2

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1909
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1913
    .end local v2    # "prevTimeMillisWithSignNum":J
    :cond_3
    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 1916
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1917
    .restart local v2    # "prevTimeMillisWithSignNum":J
    sub-int v5, p2, p1

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    long-to-float v6, v2

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    .line 1919
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide/16 v8, 0x320

    cmp-long v5, v6, v8

    if-gtz v5, :cond_4

    .line 1921
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v6, "onFilmstripCurrentItemChanged() - Fast scroll"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    sget-object v5, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    .line 1923
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 1929
    :cond_4
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1937
    :cond_5
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1938
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    sub-int v6, p2, p1

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    float-to-long v6, v6

    mul-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1945
    .end local v2    # "prevTimeMillisWithSignNum":J
    :cond_6
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v6, "onFilmstripCurrentItemChanged() - Unknown size, reset"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 1888
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private onFilmstripDraggingEnd()V
    .locals 6

    .prologue
    .line 1969
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v0

    .line 1970
    .local v0, "hideTranslationX":F
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView;->getTranslationX()F

    move-result v2

    .line 1971
    .local v2, "x":F
    sub-float v3, v2, v0

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1972
    .local v1, "visibleRatio":F
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v4, "onFilmstripDraggingEnd() - Visible ratio: "

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1973
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$UIState:[I

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {v4}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1990
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFilmstripDraggingEnd() - Invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Illegal UI State"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1977
    :pswitch_1
    const v3, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 1978
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1995
    :goto_0
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->OPENING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    if-ne v3, v4, :cond_2

    .line 1996
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V

    .line 1999
    :goto_1
    return-void

    .line 1980
    :cond_0
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->OPENING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1984
    :pswitch_2
    const v3, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 1985
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->OPENING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1987
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1998
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    goto :goto_1

    .line 1973
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onFilmstripDraggingStart()V
    .locals 2

    .prologue
    .line 2006
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    .line 2009
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 2012
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    .line 2015
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2018
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2019
    return-void
.end method

.method private onFilmstripDraggingUpdate(FFF)V
    .locals 1
    .param p1, "newX"    # F
    .param p2, "newY"    # F
    .param p3, "alpha"    # F

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/FilmstripView;->setX(F)V

    .line 2026
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, p2}, Lcom/oneplus/widget/FilmstripView;->setY(F)V

    .line 2027
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setAlpha(F)V

    .line 2028
    return-void
.end method

.method private onFilmstripOverscroll(Z)V
    .locals 2
    .param p1, "atFirstItem"    # Z

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "onFilmstripOverscroll()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    if-ne v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    if-ne v0, v1, :cond_2

    .line 2037
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripOverScrollState()V

    .line 2038
    :cond_2
    return-void
.end method

.method private onFilmstripScrollStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2044
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z

    .line 2045
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2047
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2048
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    if-eqz v0, :cond_0

    .line 2049
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setScrollingState(Z)V

    .line 2045
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2051
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_1
    return-void
.end method

.method private onFilmstripScrollStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2057
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z

    .line 2058
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2060
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2061
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    if-eqz v0, :cond_0

    .line 2062
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setScrollingState(Z)V

    .line 2058
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2064
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_1
    return-void
.end method

.method private onFilmstripTouchReceived(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 2070
    iget-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    if-eqz v2, :cond_2

    .line 2072
    iget-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    if-eqz v2, :cond_0

    .line 2074
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2075
    iput-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    .line 2079
    :cond_0
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 2080
    .local v0, "galleryState":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2099
    .end local v0    # "galleryState":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 2086
    .restart local v0    # "galleryState":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/meizu/media/camera/ui/GestureDetector;

    invoke-interface {v1, p1}, Lcom/meizu/media/camera/ui/GestureDetector;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 2087
    const/4 v1, 0x1

    goto :goto_0

    .line 2096
    .end local v0    # "galleryState":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 2097
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    goto :goto_0

    .line 2080
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onHighResImageDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2107
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isRunningOrInitializing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2152
    :cond_0
    :goto_0
    return-void

    .line 2109
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeHandle:Lcom/oneplus/base/Handle;

    if-ne v4, p1, :cond_0

    .line 2117
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDecodeHandle:Lcom/oneplus/base/Handle;

    .line 2118
    if-nez p3, :cond_2

    .line 2120
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v5, "onHighResImageDecoded() - Fail to decode bitmap"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2125
    :cond_2
    const/4 v2, 0x0

    .line 2126
    .local v2, "isItemFound":Z
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 2128
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 2129
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-nez v4, :cond_4

    .line 2126
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 2131
    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2132
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v4}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2134
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v4

    sget-object v5, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v4, v5, :cond_5

    .line 2136
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 2137
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->createDrawableForDisplay(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2146
    :cond_5
    const/4 v2, 0x1

    .line 2147
    goto :goto_0
.end method

.method private onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 5
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2405
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2406
    .local v1, "position":I
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2409
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    if-eqz v2, :cond_1

    .line 2411
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v3}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2418
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v3, "onScaleImageBoundsChanged() - State is not support to set over scale: "

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2442
    :cond_0
    :goto_0
    return-void

    .line 2424
    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getFitToScreenShortSideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2425
    .local v0, "fitBounds":Landroid/graphics/Rect;
    iget-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    if-nez v2, :cond_3

    .line 2427
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v3, p4, p2

    if-gt v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v3, p5, p3

    if-le v2, v3, :cond_0

    .line 2429
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v3, "onScaleImageBoundsChanged() - Over scaled"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    goto :goto_0

    .line 2435
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v3, p4, p2

    if-gt v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v3, p5, p3

    if-gt v2, v3, :cond_0

    .line 2437
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v3, "onScaleImageBoundsChanged() - Over scaled cancel"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    goto :goto_0

    .line 2411
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onScaleImageBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 11
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "oldType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    const/4 v10, 0x0

    .line 2449
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2493
    :cond_0
    :goto_0
    return-void

    .line 2452
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "onScaleImageBoundsTypeChanged() - Old: "

    const-string v3, ", new: "

    const-string v5, ", scale image view: "

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2455
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2456
    .local v9, "position":I
    sget-object v0, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne p2, v0, :cond_2

    .line 2459
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-direct {p0, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/media/camera/media/MediaInfo;

    .line 2460
    .local v8, "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    invoke-direct {p0, v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeHighResolutionImage(Lcom/meizu/media/camera/media/MediaInfo;)V

    .line 2463
    iput-boolean v10, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    goto :goto_0

    .line 2465
    .end local v8    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_2
    sget-object v0, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne p3, v0, :cond_4

    .line 2468
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-direct {p0, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/media/camera/media/MediaInfo;

    .line 2469
    .restart local v8    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    invoke-direct {p0, v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingHighResolutionImage(Lcom/meizu/media/camera/media/MediaInfo;)V

    .line 2472
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2473
    .local v7, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    if-eqz v7, :cond_3

    .line 2475
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v0, v7, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 2476
    invoke-virtual {v8}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v10}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Ljava/lang/String;ZZ)V

    .line 2482
    :goto_1
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    if-eqz v0, :cond_0

    .line 2484
    iput-boolean v10, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    .line 2485
    sget-object v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_0

    .line 2479
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "onScaleImageBoundsTypeChanged() - No gallery item"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2491
    .end local v7    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v8    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_4
    iput-boolean v10, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    goto :goto_0
.end method

.method private onScaleImageGestureEnd(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-ne v0, p1, :cond_0

    .line 2500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2501
    :cond_0
    return-void
.end method

.method private onScaleImageGestureStart(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2508
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2510
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 2514
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-nez v0, :cond_1

    .line 2515
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2516
    :cond_1
    return-void
.end method

.method private onThumbnailImageDecoded(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;
    .param p3, "isSmall"    # Z

    .prologue
    .line 2524
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isRunningOrInitializing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2591
    :cond_0
    :goto_0
    return-void

    .line 2528
    :cond_1
    if-eqz p3, :cond_3

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    :goto_1
    invoke-direct {p0, v5, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v2

    .line 2529
    .local v2, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    if-eqz v2, :cond_0

    .line 2535
    if-eqz p3, :cond_4

    .line 2536
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2539
    :goto_2
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v5, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2542
    const/4 v3, 0x0

    .line 2543
    .local v3, "isItemFound":Z
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_0

    .line 2545
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 2546
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-nez v5, :cond_5

    .line 2543
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2528
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v3    # "isItemFound":Z
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    goto :goto_1

    .line 2538
    .restart local v2    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_4
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .restart local v1    # "i":I
    .restart local v3    # "isItemFound":Z
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_5
    move-object v0, v4

    .line 2548
    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2549
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v5}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2551
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$gallery$CameraGalleryImpl$ImageDecodeState:[I

    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    invoke-virtual {v6}, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2585
    :cond_6
    :goto_4
    const/4 v3, 0x1

    .line 2586
    goto :goto_0

    .line 2554
    :pswitch_0
    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v5, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 2555
    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v5, v6}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2556
    if-eqz p3, :cond_7

    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    :goto_5
    iput-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    goto :goto_4

    :cond_7
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    goto :goto_5

    .line 2561
    :pswitch_1
    if-nez p3, :cond_6

    .line 2563
    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v6}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    .line 2564
    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v5, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 2565
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    goto :goto_4

    .line 2576
    :pswitch_2
    if-eqz p3, :cond_6

    .line 2577
    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v5, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 2551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private openFilmstrip()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2620
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "openFilmstrip()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2624
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const-string v1, "CameraGallery"

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 2626
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TakeScreenShotHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2627
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->takeScreenShot()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TakeScreenShotHandle:Lcom/oneplus/base/Handle;

    .line 2630
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2724

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2633
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->OPENING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2636
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/meizu/media/camera/ui/GestureDetector;

    if-eqz v0, :cond_2

    .line 2637
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/meizu/media/camera/ui/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureHandler:Lcom/meizu/media/camera/ui/BaseGestureHandler;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ui/GestureDetector;->setGestureHandler(Lcom/meizu/media/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    .line 2640
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/media/camera/CameraActivity;->setKeyEventHandler(Lcom/meizu/media/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    .line 2643
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkActionEditSupported()V

    .line 2646
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    .line 2647
    return-void
.end method

.method private playVideoPage(Lcom/meizu/media/camera/media/MediaInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/meizu/media/camera/media/MediaInfo;

    .prologue
    .line 2654
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 2657
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 2658
    .local v0, "state":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2664
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideoPage() - Cannot play video page in current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    :cond_0
    :goto_0
    return-void

    .line 2667
    :pswitch_1
    if-eqz p1, :cond_0

    .line 2671
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->playVideoPageDirectly(Lcom/meizu/media/camera/media/MediaInfo;)V

    goto :goto_0

    .line 2658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private playVideoPageDirectly(Lcom/meizu/media/camera/media/MediaInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/meizu/media/camera/media/MediaInfo;

    .prologue
    const/4 v5, 0x1

    .line 2679
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/OPCameraActivity;

    .line 2680
    .local v0, "activity":Lcom/meizu/media/camera/OPCameraActivity;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2681
    .local v2, "playIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/meizu/media/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2682
    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2683
    invoke-virtual {v0}, Lcom/meizu/media/camera/OPCameraActivity;->isSecurePhotoMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2685
    const-string v3, "IsSecureMode"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2686
    const-string v3, "SECURE_MODE"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2690
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/meizu/media/camera/OPCameraActivity;->startActivityForResultByAgent(Landroid/content/Intent;Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 2691
    .local v1, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2692
    iput-boolean v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    .line 2693
    :cond_1
    return-void
.end method

.method private refreshThumbnailImage(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2699
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v4, "refreshThumbnailImage() - Clear cache: "

    invoke-static {v3, v4, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2702
    sget-object v3, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 2703
    sget-object v3, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 2704
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapPool:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 2707
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    if-eqz v3, :cond_2

    .line 2709
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2711
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 2712
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-nez v3, :cond_1

    .line 2709
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 2714
    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2715
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v3}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2718
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 2725
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v1    # "i":I
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Ljava/lang/String;ZZ)V

    .line 2726
    return-void
.end method

.method private resetFilmstripOverScrollState()V
    .locals 2

    .prologue
    .line 2761
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    if-eqz v0, :cond_0

    .line 2763
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "resetFilmstripOverScrollState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    .line 2765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    .line 2766
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 2768
    :cond_0
    return-void
.end method

.method private resetFilmstripState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2732
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v2, "resetFilmstripState()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    .line 2738
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 2739
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2749
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetFilmstripState() - Current rotation is not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2743
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1, v3, v3}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 2754
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripOverScrollState()V

    .line 2755
    return-void

    .line 2746
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v2}, Lcom/meizu/media/camera/media/MediaList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    goto :goto_0

    .line 2739
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restoreMediaInfoFromRecycler()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2775
    const/4 v2, 0x0

    .line 2776
    .local v2, "lastMedia":Lcom/meizu/media/camera/media/MediaInfo;
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/media/MediaInfo;

    .line 2778
    .local v3, "media":Lcom/meizu/media/camera/media/MediaInfo;
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v5, "restoreMediaInfoFromRecycler() - Restore: "

    invoke-static {v4, v5, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2779
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v4, v3}, Lcom/meizu/media/camera/media/MediaList;->add(Ljava/lang/Object;)Z

    .line 2780
    move-object v2, v3

    .line 2781
    goto :goto_0

    .line 2782
    .end local v3    # "media":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2785
    if-eqz v2, :cond_1

    .line 2787
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v4, v2}, Lcom/meizu/media/camera/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2788
    .local v1, "index":I
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 2792
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x271a

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2793
    const/4 v4, 0x1

    invoke-direct {p0, v6, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setUndoBarVisibility(ZZ)V

    .line 2794
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v4}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 2803
    :goto_1
    return-void

    .line 2798
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    goto :goto_1

    .line 2794
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private revertPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v0}, Lcom/meizu/media/camera/media/MediaList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private searchMediaListIndex(Landroid/net/Uri;)I
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, -0x1

    .line 2816
    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->searchMediaListIndex(Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method private searchMediaListIndex(Landroid/net/Uri;II)I
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2820
    if-nez p1, :cond_0

    move v1, v2

    .line 2835
    :goto_0
    return v1

    .line 2822
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v1}, Lcom/meizu/media/camera/media/MediaList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v2

    .line 2823
    goto :goto_0

    .line 2824
    :cond_2
    if-ne p2, v2, :cond_3

    .line 2825
    const/4 p2, 0x0

    .line 2826
    :cond_3
    if-ne p3, v2, :cond_4

    .line 2827
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v1}, Lcom/meizu/media/camera/media/MediaList;->size()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    .line 2828
    :cond_4
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-lt v0, p2, :cond_6

    .line 2830
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v1, v0}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v1}, Lcom/meizu/media/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2832
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v1

    goto :goto_0

    .line 2828
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    move v1, v2

    .line 2835
    goto :goto_0
.end method

.method private setFilmstripCurrentItem(Lcom/oneplus/widget/ScaleImageView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "smoothly"    # Z

    .prologue
    .line 2842
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2843
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 2845
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2846
    .local v0, "selectedPosition":I
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v0, p2}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 2848
    .end local v0    # "selectedPosition":I
    :cond_0
    return-void
.end method

.method private setFilmstripOverScrollState()V
    .locals 2

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "setFilmstripOverScrollState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    .line 2856
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 2857
    return-void
.end method

.method private setFilmstripScrollMode(I)V
    .locals 3
    .param p1, "scrollMode"    # I

    .prologue
    .line 2864
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripScrollMode:I

    if-ne v0, p1, :cond_0

    .line 2871
    :goto_0
    return-void

    .line 2868
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "setFilmstripScrollMode() - Scroll mode: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2869
    iput p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripScrollMode:I

    .line 2870
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    goto :goto_0
.end method

.method private setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z
    .locals 8
    .param p1, "state"    # Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 2878
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 2879
    .local v3, "oldState":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    if-ne v3, p1, :cond_0

    .line 2918
    :goto_0
    return v4

    .line 2883
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 2886
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2916
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 2918
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v3, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 2890
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    .line 2891
    sget-object v5, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    if-ne v3, v5, :cond_2

    .line 2892
    invoke-direct {p0, v4, v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    goto :goto_1

    .line 2894
    :cond_2
    iget-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    invoke-direct {p0, v4, v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    goto :goto_1

    .line 2898
    :pswitch_1
    sget-object v5, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    if-ne p1, v5, :cond_4

    .line 2899
    invoke-direct {p0, v7, v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    .line 2902
    :goto_2
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_1

    .line 2904
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 2905
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-eqz v4, :cond_3

    move-object v1, v2

    .line 2907
    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2908
    .local v1, "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v4, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    if-eqz v4, :cond_3

    .line 2909
    iget-object v4, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v5, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 2902
    .end local v1    # "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 2901
    .end local v0    # "i":I
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-direct {p0, v4, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    goto :goto_2

    .line 2886
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setPageToContentUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2925
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v0

    .line 2926
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2927
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 2930
    :goto_0
    return-void

    .line 2929
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private setToolbarVisibility(ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 2937
    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    .line 2940
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateToolbarVisibility(Z)V

    .line 2941
    return-void
.end method

.method private setUndoBarVisibility(ZZ)V
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 2948
    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsUndoBarVisible:Z

    .line 2951
    if-eqz p1, :cond_0

    .line 2953
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v6

    .line 2954
    .local v6, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarPhotoCountView:Landroid/widget/TextView;

    const v1, 0x7f090071

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v6, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2958
    .end local v6    # "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    :cond_0
    const/4 v3, 0x0

    .line 2959
    .local v3, "animFlags":I
    if-eqz p2, :cond_1

    .line 2960
    if-eqz p1, :cond_2

    const/4 v3, 0x5

    .line 2961
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    const-wide/16 v4, 0x96

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 2962
    return-void

    .line 2960
    :cond_2
    const/16 v3, 0x12

    goto :goto_0
.end method

.method private setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2969
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 2982
    :goto_0
    return-void

    .line 2970
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 2971
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 2972
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 2973
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 2974
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 2975
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 2976
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 2977
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 2978
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 2979
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 2981
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "setViewVisibilityState() - Unknow view"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupUI()V
    .locals 5

    .prologue
    .line 2988
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsSetupUI:Z

    if-eqz v1, :cond_0

    .line 3122
    :goto_0
    return-void

    .line 2991
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v2, "setupUI()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 2995
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthPortrait:I

    .line 2996
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightPortrait:I

    .line 2997
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthLandscape:I

    .line 2998
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightLandscape:I

    .line 2999
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateMaxItemWidthHeight()V

    .line 3000
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;

    .line 3002
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;

    .line 3006
    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    .line 3007
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    .line 3008
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/FilmstripView;->setX(F)V

    .line 3009
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 3010
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 3011
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$16;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$16;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 3034
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$17;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$17;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/FilmstripView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3042
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    .line 3043
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 3046
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    .line 3047
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainer:Landroid/view/View;

    .line 3048
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackButton:Landroid/view/View;

    .line 3049
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackButton:Landroid/view/View;

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$18;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$18;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3058
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b0020

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    .line 3059
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteButton:Landroid/view/View;

    .line 3060
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteButton:Landroid/view/View;

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$19;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$19;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3069
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b001a

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    .line 3070
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareButton:Landroid/view/View;

    .line 3071
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareButton:Landroid/view/View;

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$20;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$20;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3080
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    .line 3081
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditButton:Landroid/view/View;

    .line 3082
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditButton:Landroid/view/View;

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$21;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$21;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3091
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    .line 3092
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsButton:Landroid/view/View;

    .line 3093
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsButton:Landroid/view/View;

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$22;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$22;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3104
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    .line 3105
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    const v2, 0x7f0b0023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarPhotoCountView:Landroid/widget/TextView;

    .line 3106
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarRestoreButton:Landroid/view/View;

    .line 3107
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarRestoreButton:Landroid/view/View;

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$23;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$23;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3118
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateNavigationBarContainerMarginTop()V

    .line 3119
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    .line 3121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsSetupUI:Z

    goto/16 :goto_0
.end method

.method private sharPageDirectly(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 3158
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3159
    .local v3, "sharingIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v5, p1}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/media/MediaInfo;

    .line 3160
    .local v2, "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    invoke-virtual {v2}, Lcom/meizu/media/camera/media/MediaInfo;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3162
    const-string v5, "video/*"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3172
    :goto_0
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v2}, Lcom/meizu/media/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3173
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f09006b

    invoke-virtual {v5, v6}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 3176
    .local v4, "targetIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/OPCameraActivity;

    .line 3177
    .local v0, "activity":Lcom/meizu/media/camera/OPCameraActivity;
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/meizu/media/camera/OPCameraActivity;->startActivityForResultByAgent(Landroid/content/Intent;Lcom/meizu/media/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 3178
    .local v1, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3179
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    .line 3180
    :cond_0
    return-void

    .line 3164
    .end local v0    # "activity":Lcom/meizu/media/camera/OPCameraActivity;
    .end local v1    # "handle":Lcom/oneplus/base/Handle;
    .end local v4    # "targetIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v2}, Lcom/meizu/media/camera/media/MediaInfo;->isPhoto()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3166
    const-string v5, "image/*"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3170
    :cond_2
    const-string v5, "file/*"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sharePage(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 3129
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3151
    :cond_0
    :goto_0
    return-void

    .line 3133
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 3136
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 3137
    .local v0, "state":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3143
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sharePage() - Cannot share page in current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3146
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3150
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->sharPageDirectly(I)V

    goto :goto_0

    .line 3137
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showPageDetails(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 3187
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3209
    :cond_0
    :goto_0
    return-void

    .line 3191
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 3194
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 3195
    .local v0, "state":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3201
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPageDetails() - Cannot show page details in current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3204
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3208
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->showPageDetailsDirectly(I)V

    goto :goto_0

    .line 3195
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showPageDetailsDirectly(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 3215
    new-instance v0, Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v1, p1}, Lcom/meizu/media/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/media/MediaInfo;

    invoke-direct {v0, v2, v1}, Lcom/oneplus/gallery/MediaDetailsDialog;-><init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/media/MediaInfo;)V

    .line 3216
    .local v0, "dialog":Lcom/oneplus/gallery/MediaDetailsDialog;
    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->show()V

    .line 3217
    return-void
.end method

.method private updateFilmstripScrollMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 3224
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    if-eqz v1, :cond_0

    .line 3226
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 3254
    :goto_0
    return-void

    .line 3230
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 3232
    .local v0, "state":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3235
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 3236
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    goto :goto_0

    .line 3240
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 3241
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    goto :goto_0

    .line 3245
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 3246
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    goto :goto_0

    .line 3250
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 3251
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    goto :goto_0

    .line 3232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateFilmstripViewTranslation(Z)V
    .locals 11
    .param p1, "animation"    # Z

    .prologue
    const/high16 v10, 0x43480000    # 200.0f

    .line 3261
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v1

    .line 3262
    .local v1, "hideTranslationX":F
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView;->getTranslationX()F

    move-result v7

    .line 3263
    .local v7, "x":F
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 3264
    .local v0, "alpha":F
    sub-float v8, v7, v1

    div-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 3267
    .local v6, "visibleRatio":F
    const-wide/16 v2, 0x0

    .line 3268
    .local v2, "duration":J
    move v5, v7

    .line 3269
    .local v5, "newX":F
    move v4, v0

    .line 3270
    .local v4, "newAlpha":F
    sget-object v9, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$UIState:[I

    sget-object v8, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {v8}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    .line 3289
    :goto_0
    if-eqz p1, :cond_0

    const-wide/16 v8, 0x64

    cmp-long v8, v2, v8

    if-gez v8, :cond_0

    .line 3290
    const-wide/16 v2, 0x64

    .line 3293
    :cond_0
    if-eqz p1, :cond_1

    .line 3295
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3296
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnFilmstripAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3297
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3298
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3306
    :goto_1
    :pswitch_0
    return-void

    .line 3274
    :pswitch_1
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v6

    mul-float/2addr v8, v10

    float-to-long v2, v8

    .line 3275
    const/4 v5, 0x0

    .line 3276
    const/high16 v4, 0x3f800000    # 1.0f

    .line 3277
    goto :goto_0

    .line 3280
    :pswitch_2
    mul-float v8, v10, v6

    float-to-long v2, v8

    .line 3281
    move v5, v1

    .line 3282
    const/4 v4, 0x0

    .line 3283
    goto :goto_0

    .line 3302
    :cond_1
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v8, v5}, Lcom/oneplus/widget/FilmstripView;->setTranslationX(F)V

    .line 3303
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setAlpha(F)V

    .line 3304
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnFilmstripAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 3270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateFooterContainerMarginBottom()V
    .locals 6

    .prologue
    .line 3312
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    .line 3313
    .local v2, "newRotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 3314
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    const/4 v1, 0x0

    .line 3315
    .local v1, "marginBottom":I
    sget-object v4, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne v2, v4, :cond_1

    .line 3316
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3319
    :goto_0
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$gallery$CameraGalleryImpl$ViewVisibilityState:[I

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->getViewVisibilityState(Landroid/view/View;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 3328
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3329
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3330
    return-void

    .line 3318
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 3323
    :pswitch_0
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3324
    goto :goto_1

    .line 3319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateMaxItemWidthHeight()V
    .locals 1

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3339
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthLandscape:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidth:I

    .line 3340
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightLandscape:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeight:I

    .line 3349
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    .line 3350
    return-void

    .line 3344
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthPortrait:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidth:I

    .line 3345
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightPortrait:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeight:I

    goto :goto_0
.end method

.method private updateMediaList()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3357
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 3359
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateMediaList() - Set current media to preferred content Uri: "

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3360
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v0

    .line 3361
    .local v0, "index":I
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 3362
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1, v0, v4}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 3363
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    .line 3384
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 3368
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateMediaList()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3369
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 3372
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v1}, Lcom/meizu/media/camera/media/MediaList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3374
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateMediaList() - media list is empty"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3375
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3376
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    goto :goto_0

    .line 3379
    :cond_2
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3382
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    if-ne v1, v2, :cond_0

    .line 3383
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripState()V

    goto :goto_0
.end method

.method private updateNavigationBarContainerMarginTop()V
    .locals 6

    .prologue
    .line 3390
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    .line 3391
    .local v2, "newRotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 3392
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    const/4 v1, 0x0

    .line 3393
    .local v1, "marginTop":I
    sget-object v4, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne v2, v4, :cond_1

    .line 3394
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3397
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3398
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3399
    return-void

    .line 3396
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private updateToolbarVisibility(Z)V
    .locals 25
    .param p1, "animation"    # Z

    .prologue
    .line 3407
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 3408
    .local v24, "state":Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;
    sget-object v2, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_0

    .line 3409
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    .line 3410
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canShareButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v8, 0x1

    .line 3411
    .local v8, "shareVisible":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canEditButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v12, 0x1

    .line 3412
    .local v12, "editVisible":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canDetailsButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v16, 0x1

    .line 3413
    .local v16, "detailsVisible":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canDeleteButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v20, 0x1

    .line 3414
    .local v20, "deleteVisible":Z
    :goto_3
    const/4 v5, 0x0

    .line 3415
    .local v5, "navFlags":I
    const/4 v9, 0x0

    .line 3416
    .local v9, "shareFlags":I
    const/4 v13, 0x0

    .line 3417
    .local v13, "editFlags":I
    const/16 v17, 0x0

    .line 3418
    .local v17, "detailsFlags":I
    const/16 v21, 0x0

    .line 3419
    .local v21, "deleteFlags":I
    if-eqz p1, :cond_1

    .line 3421
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3431
    :goto_4
    :pswitch_0
    if-eqz v8, :cond_8

    const/4 v9, 0x5

    .line 3432
    :goto_5
    if-eqz v12, :cond_9

    const/4 v13, 0x5

    .line 3433
    :goto_6
    if-eqz v16, :cond_a

    const/16 v17, 0x5

    .line 3434
    :goto_7
    if-eqz v20, :cond_b

    const/16 v21, 0x5

    .line 3438
    :cond_1
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    const-wide/16 v6, 0x96

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 3439
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    const-wide/16 v10, 0x96

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 3440
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    const-wide/16 v14, 0x96

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 3441
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    const-wide/16 v18, 0x96

    move-object/from16 v14, p0

    invoke-direct/range {v14 .. v19}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 3442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    move-object/from16 v19, v0

    const-wide/16 v22, 0x96

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v23}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 3443
    return-void

    .line 3410
    .end local v5    # "navFlags":I
    .end local v8    # "shareVisible":Z
    .end local v9    # "shareFlags":I
    .end local v12    # "editVisible":Z
    .end local v13    # "editFlags":I
    .end local v16    # "detailsVisible":Z
    .end local v17    # "detailsFlags":I
    .end local v20    # "deleteVisible":Z
    .end local v21    # "deleteFlags":I
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3411
    .restart local v8    # "shareVisible":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 3412
    .restart local v12    # "editVisible":Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 3413
    .restart local v16    # "detailsVisible":Z
    :cond_5
    const/16 v20, 0x0

    goto :goto_3

    .line 3425
    .restart local v5    # "navFlags":I
    .restart local v9    # "shareFlags":I
    .restart local v13    # "editFlags":I
    .restart local v17    # "detailsFlags":I
    .restart local v20    # "deleteVisible":Z
    .restart local v21    # "deleteFlags":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_6

    const/16 v5, 0x9

    .line 3426
    :goto_9
    goto :goto_4

    .line 3425
    :cond_6
    const/16 v5, 0x22

    goto :goto_9

    .line 3428
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_7

    const/4 v5, 0x1

    :goto_a
    goto :goto_4

    :cond_7
    const/4 v5, 0x2

    goto :goto_a

    .line 3431
    :cond_8
    const/16 v9, 0x12

    goto :goto_5

    .line 3432
    :cond_9
    const/16 v13, 0x12

    goto :goto_6

    .line 3433
    :cond_a
    const/16 v17, 0x12

    goto :goto_7

    .line 3434
    :cond_b
    const/16 v21, 0x12

    goto :goto_8

    .line 3421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateViewVisibility(Landroid/view/View;ZIJ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z
    .param p3, "animFlags"    # I
    .param p4, "duration"    # J

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v5, -0x3db80000    # -50.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 3450
    if-nez p1, :cond_0

    .line 3572
    :goto_0
    :pswitch_0
    return-void

    .line 3452
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getViewVisibilityState(Landroid/view/View;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    move-result-object v0

    .line 3458
    .local v0, "visibilityState":Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;
    if-eqz p2, :cond_8

    .line 3460
    if-eqz p3, :cond_7

    .line 3462
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$gallery$CameraGalleryImpl$ViewVisibilityState:[I

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3490
    :goto_1
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 3491
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 3492
    :cond_1
    and-int/lit8 v1, p3, 0xc

    if-eqz v1, :cond_2

    .line 3493
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 3494
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_3

    .line 3495
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3496
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$24;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$24;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3506
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    goto :goto_0

    .line 3466
    :pswitch_1
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3467
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_4

    .line 3468
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3471
    :goto_2
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_5

    .line 3472
    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 3470
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 3473
    :cond_5
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_6

    .line 3474
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 3476
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 3481
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_1

    .line 3511
    :cond_7
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3512
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 3513
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3516
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    goto/16 :goto_0

    .line 3521
    :cond_8
    if-eqz p3, :cond_d

    .line 3523
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$gallery$CameraGalleryImpl$ViewVisibilityState:[I

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 3542
    :goto_3
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_9

    .line 3543
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 3544
    :cond_9
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_c

    .line 3545
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 3548
    :cond_a
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_b

    .line 3549
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3550
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$25;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$25;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3561
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    goto/16 :goto_0

    .line 3527
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 3528
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    .line 3533
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_3

    .line 3546
    :cond_c
    and-int/lit8 v1, p3, 0x10

    if-eqz v1, :cond_a

    .line 3547
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    .line 3566
    :cond_d
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3569
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    goto/16 :goto_0

    .line 3462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3523
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private validatePosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3578
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v0}, Lcom/meizu/media/camera/media/MediaList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3579
    const/4 v0, 0x1

    .line 3580
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
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
    .line 1667
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    .line 1669
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/meizu/media/camera/UIComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1777
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1792
    invoke-super {p0, p1}, Lcom/meizu/media/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 1795
    :goto_0
    return-void

    .line 1780
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    goto :goto_0

    .line 1784
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    goto :goto_0

    .line 1788
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImages()V

    goto :goto_0

    .line 1777
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_2
        0x271a -> :sswitch_1
        0x2724 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    invoke-interface {v0}, Lcom/meizu/media/camera/media/MediaList;->release()V

    .line 1873
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages()V

    .line 1876
    invoke-super {p0}, Lcom/meizu/media/camera/UIComponent;->onDeinitialize()V

    .line 1877
    return-void
.end method

.method protected onInitialize()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2160
    invoke-super {p0}, Lcom/meizu/media/camera/UIComponent;->onInitialize()V

    .line 2161
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v6

    .line 2164
    .local v6, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraThread()Lcom/meizu/media/camera/CameraThread;

    move-result-object v0

    const-class v1, Lcom/meizu/media/camera/io/FileManager;

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$9;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$9;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-static {v0, v1, p0, v2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 2175
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string v1, "HighResolutionBitmapPool"

    const-wide/32 v2, 0x100000

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;I)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapPool:Lcom/oneplus/media/BitmapPool;

    .line 2178
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    invoke-static {v6, v5}, Lcom/meizu/media/camera/media/MediaListManager;->createMediaList(Landroid/content/Context;I)Lcom/meizu/media/camera/media/MediaList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    .line 2181
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setupUI()V

    .line 2184
    const-class v0, Lcom/meizu/media/camera/ui/GestureDetector;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/GestureDetector;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/meizu/media/camera/ui/GestureDetector;

    .line 2185
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/meizu/media/camera/ui/GestureDetector;

    if-eqz v0, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/meizu/media/camera/ui/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureHandler:Lcom/meizu/media/camera/ui/BaseGestureHandler;

    invoke-interface {v0, v1, v7}, Lcom/meizu/media/camera/ui/GestureDetector;->setGestureHandler(Lcom/meizu/media/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2190
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v0}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    .line 2191
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2192
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v0}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    .line 2195
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$10;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$10;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v6, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2211
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$11;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$11;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v6, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2229
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$12;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$12;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v6, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2273
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$13;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$13;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v6, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2287
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$14;

    invoke-direct {v1, p0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$14;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/CameraActivity;)V

    invoke-virtual {v6, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2304
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    if-eqz v0, :cond_3

    .line 2306
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/meizu/media/camera/media/MediaList;

    sget-object v1, Lcom/meizu/media/camera/media/MediaList;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2308
    :cond_3
    return-void

    :cond_4
    move v5, v7

    .line 2178
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Lcom/meizu/media/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2314
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 2315
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/meizu/media/camera/KeyEventHandler$KeyResult;

    .line 2317
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/meizu/media/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/meizu/media/camera/KeyEventHandler$KeyResult;

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Lcom/meizu/media/camera/KeyEventHandler$KeyResult;
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2324
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2326
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->OPENED:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    if-ne v0, v1, :cond_2

    .line 2328
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->navigateBack()V

    .line 2329
    sget-object v0, Lcom/meizu/media/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/meizu/media/camera/KeyEventHandler$KeyResult;

    .line 2334
    :goto_0
    return-object v0

    .line 2332
    :cond_0
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 2333
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/meizu/media/camera/KeyEventHandler$KeyResult;

    goto :goto_0

    .line 2334
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/meizu/media/camera/KeyEventHandler$KeyResult;

    goto :goto_0
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v3, 0x0

    .line 2344
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 2347
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TranslationXRange:Landroid/util/Range;

    .line 2348
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    .line 2351
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    if-ne p1, v1, :cond_1

    .line 2354
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v0

    .line 2355
    .local v0, "newPosition":I
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1, v0, v3}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 2358
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2359
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    .line 2363
    .end local v0    # "newPosition":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    if-eqz v1, :cond_2

    .line 2364
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    invoke-virtual {v1, p2}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 2367
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateNavigationBarContainerMarginTop()V

    .line 2370
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    .line 2373
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$UIState:[I

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2381
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    .line 2385
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateMaxItemWidthHeight()V

    .line 2388
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 2396
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-eqz v1, :cond_3

    .line 2397
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->onGestureEnd()V
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3400(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 2398
    :cond_3
    return-void

    .line 2378
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    goto :goto_0

    .line 2391
    :pswitch_2
    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_1

    .line 2373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2388
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch
.end method

.method public openFilmstripDirectly()V
    .locals 2

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "openFilmstripDirectly()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    sget-object v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    .line 2599
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2601
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$15;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$15;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2610
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string v1, "openFilmstrip() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    :cond_0
    :goto_0
    return-void

    .line 2614
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V

    goto :goto_0
.end method
