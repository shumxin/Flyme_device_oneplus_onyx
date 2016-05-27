.class public Lcom/oppo/util/OppoListBackToTopUtils;
.super Lcom/color/screenshot/IColorLongshotListener$Stub;
.source "OppoListBackToTopUtils.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field private static final DISSMISS_TIMEOUT:I = 0x3e8


# instance fields
.field private BTN_LOC_X:I

.field private BTN_LOC_Y:I

.field dissmissAuto:Ljava/lang/Runnable;

.field handler:Landroid/os/Handler;

.field private mBackToTop:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mList:Landroid/widget/AbsListView;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .param p1, "list"    # Landroid/widget/AbsListView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/color/screenshot/IColorLongshotListener$Stub;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->handler:Landroid/os/Handler;

    .line 51
    new-instance v1, Lcom/oppo/util/OppoListBackToTopUtils$1;

    invoke-direct {v1, p0}, Lcom/oppo/util/OppoListBackToTopUtils$1;-><init>(Lcom/oppo/util/OppoListBackToTopUtils;)V

    iput-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->dissmissAuto:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    .line 62
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mContext:Landroid/content/Context;

    .line 63
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 64
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x55

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_X:I

    .line 65
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_Y:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/util/OppoListBackToTopUtils;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/util/OppoListBackToTopUtils;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/util/OppoListBackToTopUtils;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/util/OppoListBackToTopUtils;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    return-object v0
.end method

.method private initBackToTopWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 69
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v2, 0xc09044d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 74
    .local v1, "mPopupContent":Landroid/view/ViewGroup;
    const v2, 0xc0204a5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mBackToTop:Landroid/widget/Button;

    .line 75
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mBackToTop:Landroid/widget/Button;

    new-instance v3, Lcom/oppo/util/OppoListBackToTopUtils$2;

    invoke-direct {v3, p0}, Lcom/oppo/util/OppoListBackToTopUtils$2;-><init>(Lcom/oppo/util/OppoListBackToTopUtils;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 85
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 86
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0xc030404

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 87
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 88
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 90
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 92
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 120
    return-void
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mContext:Landroid/content/Context;

    const-string v2, "color_screenshot"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/screenshot/ColorScreenshotManager;

    .line 148
    .local v0, "shotMgr":Lcom/color/screenshot/ColorScreenshotManager;
    invoke-virtual {v0, p0}, Lcom/color/screenshot/ColorScreenshotManager;->unregisterLongshotListener(Lcom/color/screenshot/IColorLongshotListener;)V

    .line 149
    return-void
.end method

.method public onMove()V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/oppo/util/OppoListBackToTopUtils;->dismiss()V

    .line 142
    return-void
.end method

.method public setBtnHorizontalPos(I)V
    .locals 0
    .param p1, "xPos"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_X:I

    .line 124
    return-void
.end method

.method public setBtnVerticalPos(I)V
    .locals 0
    .param p1, "yPos"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_Y:I

    .line 128
    return-void
.end method

.method public showBackToTop(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    .line 95
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->dissmissAuto:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    if-eqz p1, :cond_4

    .line 97
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mContext:Landroid/content/Context;

    const-string v2, "color_screenshot"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/screenshot/ColorScreenshotManager;

    .line 99
    .local v0, "shotMgr":Lcom/color/screenshot/ColorScreenshotManager;
    invoke-virtual {v0}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotMoveState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    .end local v0    # "shotMgr":Lcom/color/screenshot/ColorScreenshotManager;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v0    # "shotMgr":Lcom/color/screenshot/ColorScreenshotManager;
    :cond_1
    invoke-virtual {v0, p0}, Lcom/color/screenshot/ColorScreenshotManager;->registerLongshotListener(Lcom/color/screenshot/IColorLongshotListener;)V

    .line 103
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/oppo/util/OppoListBackToTopUtils;->initBackToTopWindow()V

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mBackToTop:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    iget v4, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_X:I

    iget v5, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_Y:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->dissmissAuto:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 113
    .end local v0    # "shotMgr":Lcom/color/screenshot/ColorScreenshotManager;
    :cond_4
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public updateBtnPosition()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 132
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x55

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_X:I

    .line 133
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->BTN_LOC_Y:I

    .line 134
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/oppo/util/OppoListBackToTopUtils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/util/OppoListBackToTopUtils;->dissmissAuto:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    :cond_0
    return-void
.end method
