.class public Landroid/widget/OppoCursorController$InsertionPointCursorController;
.super Landroid/widget/OppoCursorController;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mCoords:[I

.field private mDownScrollX:I

.field private mDownScrollY:I

.field private mFousedFlag:Z

.field private final mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

.field private mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

.field private mPreviousDownTime:J

.field mShowOnOneShot:Z

.field private mTextOffset:I


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V
    .locals 3
    .param p1, "editor"    # Landroid/widget/OppoEditor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Landroid/widget/OppoCursorController;-><init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V

    .line 196
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->initHandleView(Landroid/widget/OppoEditor;ILandroid/widget/OppoCursorController;)Landroid/widget/OppoCursorController$OppoHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    .line 197
    const v1, 0xc09042d

    invoke-virtual {p0, v1}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->createFloatPanelViewController(I)Landroid/widget/OppoCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    .line 198
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mCoords:[I

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 201
    new-instance v0, Landroid/widget/OppoCursorController$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController$1;-><init>(Landroid/widget/OppoCursorController$InsertionPointCursorController;)V

    .line 210
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020450

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 211
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020451

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 212
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc02044f

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 213
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    const v2, 0xc020452

    invoke-virtual {v1, v2, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OppoCursorController$InsertionPointCursorController;)Landroid/widget/OppoCursorController$FloatPanelViewController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoCursorController$InsertionPointCursorController;

    .prologue
    .line 182
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    return-object v0
.end method

.method private showInsertionPanel()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 325
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 326
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    iget v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController;->setMinMaxOffset(I)V

    .line 327
    return-void
.end method


# virtual methods
.method public computePanelPosition([I)V
    .locals 3
    .param p1, "postion"    # [I

    .prologue
    .line 232
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePositionXY(IZ)V

    .line 233
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 234
    return-void
.end method

.method public computePanelPositionOnBottom()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 237
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePositionXY(IZ)V

    .line 238
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotLocationOnScreen([I)V

    .line 239
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mCoords:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mCoords:[I

    aget v0, v0, v3

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 418
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->hide()V

    .line 421
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 425
    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    :cond_0
    const/4 v0, 0x1

    .line 430
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 428
    .end local v0    # "flag":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "flag":Z
    goto :goto_0
.end method

.method onClipBoardPancelClick()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public onHandleTouchEvent(Landroid/widget/OppoCursorController$OppoHandleView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "oppohandleview"    # Landroid/widget/OppoCursorController$OppoHandleView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 319
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 295
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 302
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$OppoHandleView;->onHandleMoved()V

    goto :goto_0

    .line 307
    :pswitch_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 310
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->needInsertPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->showInsertionPanel()V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return v4

    .line 249
    :pswitch_0
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    iput v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollX:I

    .line 250
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    iput v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollY:I

    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v3}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->hide()V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    .line 259
    .local v2, "upScrollY":I
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 260
    .local v1, "upScrollX":I
    const/4 v0, 0x1

    .line 261
    .local v0, "isScroll":Z
    iget v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollY:I

    if-ne v2, v3, :cond_1

    iget v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollX:I

    if-eq v1, v3, :cond_2

    .line 262
    :cond_1
    const/4 v0, 0x0

    .line 264
    :cond_2
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mFousedFlag:Z

    .line 273
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OppoCursorController;->isShowing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 274
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->needInsertPanel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 277
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->show()V

    .line 280
    :cond_3
    iget-object v3, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3, v4}, Landroid/widget/OppoEditor;->setLongPressed(Z)V

    .line 282
    iput v4, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollX:I

    .line 283
    iput v4, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mDownScrollY:I

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 353
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 355
    .local v3, "selectButton":[I
    const/4 v6, 0x3

    new-array v4, v6, [I

    fill-array-data v4, :array_1

    .line 358
    .local v4, "separatorButton":[I
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v6, v3}, Landroid/widget/OppoEditor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    .local v0, "arraylist":Ljava/util/ArrayList;
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v6, v3, v4, v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 360
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v6}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 364
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 365
    .local v5, "start":I
    iget v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-gtz v6, :cond_7

    .line 366
    :cond_0
    const/4 v1, 0x1

    .line 371
    .local v1, "canSelectFlag":Z
    :goto_0
    iput v5, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 372
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v6}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v6}, Landroid/widget/OppoEditor;->getMagnifierController()Landroid/widget/OppoMagnifierController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/OppoMagnifierController;->isMagnifierShowing()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 374
    move v2, v1

    .line 378
    .local v2, "magnifierFlag":Z
    :goto_1
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v6, v8}, Landroid/widget/OppoCursorController$OppoHandleView;->setVisibility(I)V

    .line 379
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v6}, Landroid/widget/OppoCursorController$OppoHandleView;->show()V

    .line 381
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 382
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v6, v7}, Landroid/widget/OppoCursorController$OppoHandleView;->setVisibility(I)V

    .line 384
    :cond_1
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v6}, Landroid/widget/OppoEditor;->getLongPressed()Z

    move-result v6

    if-ne v9, v6, :cond_9

    .line 385
    iput-boolean v9, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mFousedFlag:Z

    .line 391
    :cond_2
    if-nez v1, :cond_3

    .line 392
    # setter for: Landroid/widget/OppoCursorController;->mSecondTapFlag:Z
    invoke-static {v8}, Landroid/widget/OppoCursorController;->access$102(Z)Z

    .line 395
    :cond_3
    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    .line 396
    iget-boolean v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mFousedFlag:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v6}, Landroid/widget/OppoEditor;->needInsertPanel()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v6, :cond_a

    .line 397
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->showInsertionPanel()V

    .line 398
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->canPaste()Z

    move-result v6

    if-nez v6, :cond_4

    .line 399
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v6, v7}, Landroid/widget/OppoCursorController$OppoHandleView;->setVisibility(I)V

    .line 400
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v6}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 406
    :cond_4
    :goto_2
    iget-boolean v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v6, :cond_5

    .line 407
    iput-boolean v8, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 409
    :cond_5
    iput-boolean v9, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 412
    :cond_6
    :goto_3
    return-void

    .line 368
    .end local v1    # "canSelectFlag":Z
    .end local v2    # "magnifierFlag":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "canSelectFlag":Z
    goto :goto_0

    .line 376
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "magnifierFlag":Z
    goto :goto_1

    .line 386
    :cond_9
    # getter for: Landroid/widget/OppoCursorController;->mSecondTapFlag:Z
    invoke-static {}, Landroid/widget/OppoCursorController;->access$100()Z

    move-result v6

    if-nez v6, :cond_2

    .line 387
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v6}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    goto :goto_3

    .line 404
    :cond_a
    iget-object v6, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    invoke-virtual {v6, v7}, Landroid/widget/OppoCursorController$OppoHandleView;->setVisibility(I)V

    goto :goto_2

    .line 353
    :array_0
    .array-data 4
        0xc020450
        0xc020451
        0xc02044f
        0xc020452
    .end array-data

    .line 355
    :array_1
    .array-data 4
        0xc020453
        0xc020454
        0xc020455
    .end array-data
.end method

.method public updatePosition()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 218
    iget v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    if-gez v0, :cond_1

    .line 219
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->hide()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mHandle:Landroid/widget/OppoCursorController$OppoHandleView;

    iget v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mTextOffset:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 225
    :cond_2
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0
.end method
