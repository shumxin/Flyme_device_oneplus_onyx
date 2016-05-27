.class public Landroid/widget/OppoCursorController$SelectionModifierCursorController;
.super Landroid/widget/OppoCursorController;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mCoords:[I

.field private mCoords1:[I

.field private mCoords2:[I

.field private mDownScrollX:I

.field private mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

.field mHideInvisiblePanel:Z

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mNotShow:Z

.field private mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

.field private mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V
    .locals 5
    .param p1, "editor"    # Landroid/widget/OppoEditor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    .line 463
    invoke-direct {p0, p1, p2}, Landroid/widget/OppoCursorController;-><init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V

    .line 442
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 464
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    .line 465
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    .line 466
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    .line 467
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    .line 468
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/OppoEditor;ILandroid/widget/OppoCursorController;)Landroid/widget/OppoCursorController$OppoHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 469
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {p0, v1, v4, p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/OppoEditor;ILandroid/widget/OppoCursorController;)Landroid/widget/OppoCursorController$OppoHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 470
    const v1, 0xc09042c

    invoke-virtual {p0, v1}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->createFloatPanelViewController(I)Landroid/widget/OppoCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    .line 471
    new-instance v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController$1;-><init>(Landroid/widget/OppoCursorController$SelectionModifierCursorController;)V

    .line 481
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044d

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 482
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044e

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 483
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044f

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 484
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020452

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 485
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc0204a7

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 488
    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc0204b2

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 491
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 492
    return-void
.end method

.method static synthetic access$200(Landroid/widget/OppoCursorController$SelectionModifierCursorController;)Landroid/widget/OppoCursorController$FloatPanelViewController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .prologue
    .line 437
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    return-object v0
.end method


# virtual methods
.method public addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "clipboardmanager"    # Landroid/content/ClipboardManager;
    .param p2, "clipdata"    # Landroid/content/ClipData;
    .param p3, "charsequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 496
    if-nez p2, :cond_0

    .line 497
    invoke-static {v3, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 506
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-static {v3, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 500
    .local v0, "clipdata1":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 501
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 502
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 504
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method public computePanelPosition([I)V
    .locals 4
    .param p1, "pos"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 735
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    iget-boolean v0, v0, Landroid/widget/OppoEditor;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_1

    .line 736
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 737
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 740
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 741
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->resetHotspot([I)V

    .line 743
    :cond_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    aput v0, p1, v3

    .line 744
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_3

    .line 745
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v2

    .line 750
    :goto_0
    return-void

    .line 747
    :cond_3
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 748
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v2

    goto :goto_0
.end method

.method public computePanelPositionOnBottom()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 722
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v4, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v3, v4}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 723
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 724
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 725
    .local v0, "i":I
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc05040e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 727
    .local v1, "j":I
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v3, v3, v5

    add-int v2, v1, v3

    .line 728
    .local v2, "k":I
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 731
    :cond_0
    return v0
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->hide()V

    .line 708
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->hide()V

    .line 709
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 711
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onHandleTouchEvent(Landroid/widget/OppoCursorController$OppoHandleView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "oppohandleview"    # Landroid/widget/OppoCursorController$OppoHandleView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 579
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 593
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 583
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 589
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 598
    .local v2, "action":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v3, :cond_5

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/OppoCursorController$OppoHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 600
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 601
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 637
    :cond_1
    :goto_0
    const/4 v10, 0x0

    .line 638
    .local v10, "handle":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->getMagnifierController()Landroid/widget/OppoMagnifierController;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/OppoMagnifierController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 641
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/OppoCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 644
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 698
    :cond_4
    :goto_1
    :pswitch_0
    return v10

    .line 608
    .end local v10    # "handle":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 609
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 610
    .local v6, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 611
    .local v7, "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3, v6, v7}, Landroid/widget/OppoCursorController$OppoHandleView;->inRecRange(FF)Z

    move-result v12

    .line 612
    .local v12, "inStart":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3, v6, v7}, Landroid/widget/OppoCursorController$OppoHandleView;->inRecRange(FF)Z

    move-result v11

    .line 613
    .local v11, "inEnd":Z
    if-eqz v12, :cond_9

    if-eqz v11, :cond_9

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3, v6, v7}, Landroid/widget/OppoCursorController$OppoHandleView;->distance(FF)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v4, v6, v7}, Landroid/widget/OppoCursorController$OppoHandleView;->distance(FF)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 616
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 620
    .local v15, "oppohandleview":Landroid/widget/OppoCursorController$OppoHandleView;
    :goto_2
    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 627
    .end local v15    # "oppohandleview":Landroid/widget/OppoCursorController$OppoHandleView;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v3, :cond_1

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 631
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/OppoCursorController$OppoHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 618
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .restart local v15    # "oppohandleview":Landroid/widget/OppoCursorController$OppoHandleView;
    goto :goto_2

    .line 621
    .end local v15    # "oppohandleview":Landroid/widget/OppoCursorController$OppoHandleView;
    :cond_9
    if-eqz v12, :cond_a

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    goto :goto_3

    .line 623
    :cond_a
    if-eqz v11, :cond_6

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    goto :goto_3

    .line 646
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v11    # "inEnd":Z
    .end local v12    # "inStart":Z
    .restart local v10    # "handle":Z
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 647
    .restart local v6    # "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 648
    .restart local v7    # "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mDownScrollX:I

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OppoEditor;->startTextSelectionModeIfDouleTap(JFFFF)V

    .line 654
    :cond_b
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 655
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto/16 :goto_1

    .line 666
    .end local v6    # "x":F
    .end local v7    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 669
    .local v16, "pointerCount":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    .line 672
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v14, v3, :cond_c

    .line 673
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 675
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v14, v3, :cond_d

    .line 676
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 669
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 684
    .end local v13    # "index":I
    .end local v14    # "offset":I
    .end local v16    # "pointerCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v17

    .line 685
    .local v17, "upScrollX":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mDownScrollX:I

    move/from16 v0, v17

    if-ne v0, v3, :cond_e

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->onTapUpEvent()V

    .line 688
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto/16 :goto_1

    .line 644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 753
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 754
    return-void
.end method

.method public setMinMaxOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 757
    iput p1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 758
    iput p1, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 759
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 545
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 546
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 547
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 548
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$OppoHandleView;->show()V

    .line 549
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$OppoHandleView;->show()V

    .line 550
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->updatePosition()V

    .line 551
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 552
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->hideInsertionPointCursorControllerWrap()V

    .line 553
    const/4 v3, 0x6

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 561
    .local v1, "selectButton":[I
    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    .line 569
    .local v2, "separatorButton":[I
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3, v1}, Landroid/widget/OppoEditor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v0

    .line 570
    .local v0, "arraylist":Ljava/util/ArrayList;
    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v3, v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 572
    .end local v0    # "arraylist":Ljava/util/ArrayList;
    .end local v1    # "selectButton":[I
    .end local v2    # "separatorButton":[I
    :cond_0
    return-void

    .line 553
    nop

    :array_0
    .array-data 4
        0xc02044d
        0xc02044e
        0xc02044f
        0xc0204a7
        0xc0204b2
        0xc020452
    .end array-data

    .line 561
    :array_1
    .array-data 4
        0xc020453
        0xc020454
        0xc020455
        0xc0204a6
        0xc0204be
    .end array-data
.end method

.method public updatePosition()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 509
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 510
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 511
    .local v5, "start":I
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 512
    .local v0, "end":I
    if-ltz v5, :cond_0

    if-gez v0, :cond_2

    .line 513
    :cond_0
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->hide()V

    .line 542
    .end local v0    # "end":I
    .end local v5    # "start":I
    :cond_1
    :goto_0
    return-void

    .line 514
    .restart local v0    # "end":I
    .restart local v5    # "start":I
    :cond_2
    if-ne v5, v0, :cond_3

    .line 515
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 517
    :cond_3
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7, v5, v8}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 518
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7, v0, v8}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 520
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 521
    .local v2, "line":I
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 522
    .local v3, "mPositionY":I
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 523
    .local v6, "viewParent":Landroid/view/ViewParent;
    instance-of v7, v6, Landroid/widget/ScrollView;

    if-eqz v7, :cond_4

    move-object v4, v6

    .line 524
    check-cast v4, Landroid/widget/ScrollView;

    .line 525
    .local v4, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 526
    .local v1, "height":I
    if-ge v1, v3, :cond_4

    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 527
    iput-boolean v8, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mNotShow:Z

    .line 530
    .end local v1    # "height":I
    .end local v4    # "scrollView":Landroid/widget/ScrollView;
    :cond_4
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_5
    iget-boolean v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mNotShow:Z

    if-nez v7, :cond_8

    .line 531
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    if-eqz v7, :cond_7

    .line 532
    :cond_6
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 533
    iput-boolean v9, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    .line 539
    :cond_7
    :goto_1
    iput-boolean v9, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mNotShow:Z

    goto :goto_0

    .line 535
    :cond_8
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 536
    iget-object v7, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v7}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 537
    iput-boolean v8, p0, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_1
.end method
