.class public Landroid/widget/OppoEditor;
.super Landroid/widget/Editor;
.source "OppoEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoEditor$PastePanelOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEditor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursrOffset:I

.field private mFlag:I

.field private mHasOnTouchListener:Z

.field private mIsInTextSelectionMode:Z

.field private mIsInTextTranslationMode:Z

.field private mLongPressed:Z

.field private mMagnifierController:Landroid/widget/OppoMagnifierController;

.field mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

.field mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mTextView:Landroid/widget/TextView;

.field private mTranslateController:Landroid/widget/OppoTranslateController;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    .line 74
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    .line 78
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 86
    iput v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    .line 87
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    .line 88
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 93
    iput-object p1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    .line 95
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050431

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoEditor;->mCursrOffset:I

    .line 97
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OppoEditor;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoEditor;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/OppoEditor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoEditor;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/OppoEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/OppoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    return p1
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkInputMethodScreenMode()V
    .locals 4

    .prologue
    .line 971
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 972
    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 973
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 974
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 975
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 976
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 980
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "hintLayout"    # Landroid/text/Layout;
    .param p3, "offset"    # I

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 347
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0
.end method

.method private isPasswordTransformation()Z
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getButtonShowHides(ZI)Z
    .locals 5
    .param p1, "isTextEditable"    # Z
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 509
    :try_start_0
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v1, v4, Landroid/text/method/PasswordTransformationMethod;

    .line 510
    .local v1, "passwordTransformed":Z
    sparse-switch p2, :sswitch_data_0

    .line 559
    .end local v1    # "passwordTransformed":Z
    :cond_0
    :goto_0
    return v3

    .line 513
    .restart local v1    # "passwordTransformed":Z
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 519
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCutAndPasteEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 522
    if-eqz p1, :cond_2

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 533
    :sswitch_2
    iget-object v2, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->canCopy()Z

    move-result v3

    goto :goto_0

    .line 536
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCutAndPasteEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    if-eqz p1, :cond_3

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    .line 541
    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isImSwitcherEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 543
    goto :goto_0

    .line 548
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSearchEnabled()Z

    move-result v3

    goto :goto_0

    .line 553
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isTranslationEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 557
    .end local v1    # "passwordTransformed":Z
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "OppoEditor"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    :sswitch_data_0
    .sparse-switch
        0xc02044d -> :sswitch_2
        0xc02044e -> :sswitch_3
        0xc02044f -> :sswitch_1
        0xc020450 -> :sswitch_0
        0xc020451 -> :sswitch_0
        0xc020452 -> :sswitch_4
        0xc0204a7 -> :sswitch_5
        0xc0204b2 -> :sswitch_6
    .end sparse-switch
.end method

.method getFloatPanelShowHides([I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "buttons"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v5, "showHides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 471
    .local v3, "isTextEditable":Ljava/lang/Boolean;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v0, v2

    .line 472
    .local v1, "button":I
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v6, v1}, Landroid/widget/OppoEditor;->getButtonShowHides(ZI)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "button":I
    :cond_0
    return-object v5
.end method

.method getLastTapPositionWrap()I
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v0

    .line 304
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    .line 306
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 307
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 312
    .end local v0    # "lastTapPosition":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getLastTouchOffsetsWrap()J
    .locals 6

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v2

    .line 281
    .local v2, "selectionController":Landroid/widget/OppoCursorController;
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v1

    .line 282
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 283
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method public getLongPressed()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    return v0
.end method

.method getMagnifierController()Landroid/widget/OppoMagnifierController;
    .locals 3

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "controller":Landroid/widget/OppoMagnifierController;
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    iget-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    if-nez v1, :cond_0

    .line 792
    new-instance v1, Landroid/widget/OppoMagnifierController;

    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/widget/OppoMagnifierController;-><init>(Landroid/content/Context;Landroid/widget/OppoEditor;)V

    iput-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 794
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 796
    :cond_1
    return-object v0
.end method

.method getOppoInsertionController()Landroid/widget/OppoCursorController;
    .locals 3

    .prologue
    .line 395
    iget-boolean v1, p0, Landroid/widget/OppoEditor;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 396
    const/4 v1, 0x0

    .line 406
    :goto_0
    return-object v1

    .line 399
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-nez v1, :cond_1

    .line 400
    iget-object v1, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/OppoCursorController;->create(Landroid/widget/OppoEditor;Landroid/content/Context;I)Landroid/widget/OppoCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    .line 402
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 403
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 406
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    goto :goto_0
.end method

.method getOppoSelectionController()Landroid/widget/OppoCursorController;
    .locals 3

    .prologue
    .line 410
    iget-boolean v1, p0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 411
    const/4 v1, 0x0

    .line 421
    :goto_0
    return-object v1

    .line 414
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-nez v1, :cond_1

    .line 415
    iget-object v1, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/widget/OppoCursorController;->create(Landroid/widget/OppoEditor;Landroid/content/Context;I)Landroid/widget/OppoCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    .line 417
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 418
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 421
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    goto :goto_0
.end method

.method getSelectHandleCenterRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 449
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleLeftRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 457
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleRightRes()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v1, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 465
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSelectHandleWindowStyle()I
    .locals 1

    .prologue
    .line 437
    const v0, 0x10102c8

    return v0
.end method

.method handleFloatPanelClick(Landroid/view/View;Landroid/widget/OppoCursorController;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cc"    # Landroid/widget/OppoCursorController;

    .prologue
    .line 627
    const/4 v12, 0x0

    .line 628
    .local v12, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->length()I

    move-result v11

    .line 630
    .local v11, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->isFocused()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v16

    .line 632
    .local v16, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v15

    .line 634
    .local v15, "selEnd":I
    const/16 v17, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 635
    const/16 v17, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 638
    .end local v15    # "selEnd":I
    .end local v16    # "selStart":I
    :cond_0
    const/4 v5, 0x0

    .line 639
    .local v5, "data":Landroid/content/ClipData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "clipboard"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 642
    .local v4, "clip":Landroid/content/ClipboardManager;
    :try_start_0
    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 647
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 781
    .end local p2    # "cc":Landroid/widget/OppoCursorController;
    :cond_1
    :goto_1
    return-void

    .line 643
    .restart local p2    # "cc":Landroid/widget/OppoCursorController;
    :catch_0
    move-exception v7

    .line 644
    .local v7, "e":Ljava/lang/SecurityException;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    .end local v7    # "e":Ljava/lang/SecurityException;
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 650
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 651
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoCursorController;->show()V

    goto :goto_1

    .line 658
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spannable;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->length()I

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 661
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoCursorController;->show()V

    goto :goto_1

    .line 667
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    move-result v17

    if-nez v17, :cond_2

    if-nez v5, :cond_3

    .line 668
    :cond_2
    const-string v17, "OppoEditor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "***data=="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "***"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 672
    :cond_3
    const/4 v13, 0x0

    .line 673
    .local v13, "paste":Ljava/lang/CharSequence;
    const-string v17, "OppoEditor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-----data.getItemCount()="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v17

    if-lez v17, :cond_4

    .line 675
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 677
    :cond_4
    const-string v17, "OppoEditor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "=====paste===="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "****"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    if-eqz v13, :cond_1

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 681
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11, v13}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 683
    :catch_1
    move-exception v7

    .line 684
    .local v7, "e":Ljava/lang/Exception;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 697
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v13    # "paste":Ljava/lang/CharSequence;
    :sswitch_3
    check-cast p2, Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .end local p2    # "cc":Landroid/widget/OppoCursorController;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0xc040534

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 707
    .restart local p2    # "cc":Landroid/widget/OppoCursorController;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->isHandleEditAction(I)Z

    .line 708
    check-cast p2, Landroid/widget/OppoCursorController$SelectionModifierCursorController;

    .end local p2    # "cc":Landroid/widget/OppoCursorController;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/OppoCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    .line 710
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 712
    const/4 v6, 0x0

    .line 713
    .local v6, "delayedTime":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->isAllTextSelected()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 714
    const/16 v6, 0xc8

    .line 716
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/OppoEditor$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/OppoEditor$2;-><init>(Landroid/widget/OppoEditor;)V

    int-to-long v0, v6

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 727
    .end local v6    # "delayedTime":I
    .restart local p2    # "cc":Landroid/widget/OppoCursorController;
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 728
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v9, "intent":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 730
    .local v10, "intentTemp":Landroid/content/Intent;
    const-string v17, "new_search"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 732
    .local v14, "query":Ljava/lang/String;
    const-string v17, "query"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 736
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 737
    :catch_2
    move-exception v7

    .line 738
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v17, "OppoEditor"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intentTemp":Landroid/content/Intent;
    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .restart local v10    # "intentTemp":Landroid/content/Intent;
    const-string v17, "new_search"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    const-string v17, "query"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 750
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "intentTemp":Landroid/content/Intent;
    .end local v14    # "query":Ljava/lang/String;
    :sswitch_6
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoEditor;->mIsInTextTranslationMode:Z

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoCursorController;->hide()V

    .line 754
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 756
    new-instance v17, Landroid/widget/OppoTranslateController;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/OppoEditor$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/OppoEditor$3;-><init>(Landroid/widget/OppoEditor;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OppoTranslateController;-><init>(Landroid/widget/Editor;Landroid/widget/TextView;Landroid/widget/PopupWindow$OnDismissListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    .line 770
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoEditor;->mTranslateController:Landroid/widget/OppoTranslateController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OppoTranslateController;->show()V

    goto/16 :goto_1

    .line 775
    :sswitch_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 776
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_1

    .line 777
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_1

    .line 647
    :sswitch_data_0
    .sparse-switch
        0xc02044d -> :sswitch_3
        0xc02044e -> :sswitch_4
        0xc02044f -> :sswitch_2
        0xc020450 -> :sswitch_0
        0xc020451 -> :sswitch_1
        0xc020452 -> :sswitch_7
        0xc0204a7 -> :sswitch_5
        0xc0204b2 -> :sswitch_6
    .end sparse-switch
.end method

.method hasMagnifierController()Z
    .locals 1

    .prologue
    .line 784
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnTouchListener()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    return v0
.end method

.method hasPasswordTransformationMethodWrap()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isAllTextSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideInsertionPointCursorControllerWrap()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 165
    :cond_0
    return-void
.end method

.method hideSelectionModifierCursorController()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 158
    :cond_0
    return-void
.end method

.method public isAllTextSelected()Z
    .locals 2

    .prologue
    .line 919
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 921
    const/4 v0, 0x1

    .line 923
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCutAndPasteEnabled()Z
    .locals 2

    .prologue
    .line 927
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    .line 929
    const/4 v0, 0x0

    .line 931
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isImSwitcherEnabled()Z
    .locals 2

    .prologue
    .line 911
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 913
    const/4 v0, 0x0

    .line 915
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInsertToolbarEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 892
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    iget v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 899
    :cond_0
    :goto_0
    return v0

    .line 897
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMagnifierEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 865
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 869
    :cond_0
    return v2
.end method

.method public isPasswordType()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 984
    iget v6, p0, Landroid/widget/OppoEditor;->mInputType:I

    and-int/lit16 v2, v6, 0xfff

    .line 986
    .local v2, "variation":I
    const/16 v6, 0x81

    if-ne v2, v6, :cond_2

    move v1, v5

    .line 988
    .local v1, "passwordInputType":Z
    :goto_0
    const/16 v6, 0xe1

    if-ne v2, v6, :cond_3

    move v3, v5

    .line 990
    .local v3, "webPasswordInputType":Z
    :goto_1
    const/16 v6, 0x12

    if-ne v2, v6, :cond_4

    move v0, v5

    .line 992
    .local v0, "numberPasswordInputType":Z
    :goto_2
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v5

    .line 995
    :cond_1
    return v4

    .end local v0    # "numberPasswordInputType":Z
    .end local v1    # "passwordInputType":Z
    .end local v3    # "webPasswordInputType":Z
    :cond_2
    move v1, v4

    .line 986
    goto :goto_0

    .restart local v1    # "passwordInputType":Z
    :cond_3
    move v3, v4

    .line 988
    goto :goto_1

    .restart local v3    # "webPasswordInputType":Z
    :cond_4
    move v0, v4

    .line 990
    goto :goto_2
.end method

.method public isSearchEnabled()Z
    .locals 2

    .prologue
    .line 903
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 905
    const/4 v0, 0x0

    .line 907
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSelectionToolbarEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 881
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    iget v1, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v0

    .line 886
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isToolbarEnabled()Z
    .locals 2

    .prologue
    .line 873
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 875
    const/4 v0, 0x0

    .line 877
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTranslationEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 945
    iget v2, p0, Landroid/widget/OppoEditor;->mFlag:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    .line 966
    :cond_0
    :goto_0
    return v1

    .line 949
    :cond_1
    iget-object v2, p0, Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 950
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 962
    invoke-direct {p0}, Landroid/widget/OppoEditor;->isPasswordTransformation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 966
    const/4 v1, 0x1

    goto :goto_0
.end method

.method needInsertPanel()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isInsertToolbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 102
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 105
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 108
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->resetTouchOffsets()V

    .line 110
    iget-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 112
    :cond_2
    invoke-super {p0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 113
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 125
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 128
    :cond_2
    invoke-super {p0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 129
    return-void
.end method

.method onFocusChanged(ZI)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetSecondTapFlag()V

    .line 291
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    .line 292
    if-nez p1, :cond_1

    .line 293
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->resetTouchOffsets()V

    .line 297
    :cond_1
    return-void
.end method

.method onTapUpEvent()V
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    if-nez v0, :cond_0

    .line 565
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 567
    :cond_0
    return-void
.end method

.method onTouchEventWrap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/OppoCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    const/4 v0, 0x1

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 327
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 330
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/OppoEditor;->mLastDownPositionX:F

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/OppoEditor;->mLastDownPositionY:F

    .line 336
    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mTouchFocusSelected:Z

    .line 337
    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mIgnoreActionUpEvent:Z

    goto :goto_0
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 175
    iput-boolean v1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 176
    iget-boolean v3, p0, Landroid/widget/OppoEditor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 177
    .local v1, "selectAllGotFocus":Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideControllers()V

    .line 178
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 181
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-direct {p0}, Landroid/widget/OppoEditor;->checkInputMethodScreenMode()V

    .line 183
    if-nez v1, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ltz v3, :cond_2

    .line 185
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 186
    .local v0, "offset":I
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 187
    iget-object v3, p0, Landroid/widget/OppoEditor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Landroid/widget/OppoEditor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 191
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v3

    if-nez v3, :cond_2

    .line 192
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isCursorInsideEasyCorrectionSpanWrap()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    new-instance v3, Landroid/widget/OppoEditor$1;

    invoke-direct {v3, p0}, Landroid/widget/OppoEditor$1;-><init>(Landroid/widget/OppoEditor;)V

    iput-object v3, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 201
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/OppoEditor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    .end local v0    # "offset":I
    :cond_2
    :goto_0
    return-void

    .line 203
    .restart local v0    # "offset":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OppoCursorController;->show()V

    .line 205
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OppoCursorController;->setSecondTap()V

    goto :goto_0
.end method

.method public performLongClick(Z)Z
    .locals 4
    .param p1, "handled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 801
    const/4 p1, 0x0

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "vibrate":Z
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 805
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 807
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->hide()V

    .line 808
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->hide()V

    .line 809
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getMagnifierController()Landroid/widget/OppoMagnifierController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoMagnifierController;->show()V

    .line 810
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoInsertionController()Landroid/widget/OppoCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OppoCursorController;->show()V

    .line 811
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 812
    const/4 p1, 0x1

    .line 815
    :cond_0
    if-nez p1, :cond_1

    .line 816
    iget-boolean v1, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->touchPositionIsInSelectionWrap()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 817
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 818
    const/4 p1, 0x1

    .line 842
    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    .line 843
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 850
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 851
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 854
    :cond_3
    return p1

    .line 820
    :cond_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->stopTextSelectionMode()V

    .line 831
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isSelectionToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 832
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result p1

    move v0, p1

    .line 837
    :cond_5
    const/4 p1, 0x1

    goto :goto_0

    .line 844
    :cond_6
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->isInsertToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasInsertionController()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 846
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 847
    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    goto :goto_1
.end method

.method prepareCursorControllers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-super {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 135
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mInsertionControllerEnabled:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 138
    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoInsertionCursorController:Landroid/widget/OppoCursorController;

    .line 141
    :cond_0
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->onDetached()V

    .line 144
    iput-object v1, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasMagnifierController()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    iput-object v1, p0, Landroid/widget/OppoEditor;->mMagnifierController:Landroid/widget/OppoMagnifierController;

    .line 151
    :cond_2
    return-void
.end method

.method public setEditFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 858
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    .line 859
    iget v0, p0, Landroid/widget/OppoEditor;->mFlag:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 860
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hideControllers()V

    .line 862
    :cond_0
    return-void
.end method

.method public setHasOnTouchListener(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 935
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mHasOnTouchListener:Z

    .line 936
    return-void
.end method

.method public setLongPressed(Z)V
    .locals 0
    .param p1, "longPressed"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Landroid/widget/OppoEditor;->mLongPressed:Z

    .line 430
    return-void
.end method

.method setTextSelectionWrap(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 441
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 442
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-object v4, p0, Landroid/widget/OppoEditor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    move v1, v3

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    :cond_2
    const-string v4, "TextView"

    const-string v5, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 224
    goto :goto_0

    .line 227
    :cond_3
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_4

    .line 229
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->selectCurrentWordWrap()Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v3

    .line 231
    goto :goto_0

    .line 235
    :cond_4
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->extractedTextModeWillBeStartedWrap()Z

    move-result v2

    .line 239
    .local v2, "willExtract":Z
    if-nez v2, :cond_5

    .line 244
    :cond_5
    iget-object v4, p0, Landroid/widget/OppoEditor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 245
    .local v1, "selectionStarted":Z
    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/OppoEditor;->mShowSoftInputOnFocus:Z

    if-eqz v4, :cond_0

    .line 247
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 248
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 249
    iget-object v4, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "selectionStarted":Z
    :cond_7
    move v1, v3

    .line 244
    goto :goto_1
.end method

.method startTextSelectionMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 580
    iget-boolean v3, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-nez v3, :cond_0

    .line 581
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->hasSelectionController()Z

    move-result v3

    if-nez v3, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v1

    .line 585
    :cond_1
    invoke-direct {p0}, Landroid/widget/OppoEditor;->canSelectText()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    iget-object v3, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-nez v3, :cond_2

    .line 590
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->selectCurrentWordWrap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    .line 596
    .local v0, "mOppoSelectionCursorController":Landroid/widget/OppoCursorController;
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->show()V

    .line 598
    iput-boolean v2, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    move v1, v2

    .line 599
    goto :goto_0
.end method

.method startTextSelectionModeIfDouleTap(JFFFF)V
    .locals 11
    .param p1, "previousTapUpTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "previousX"    # F
    .param p6, "previousY"    # F

    .prologue
    .line 487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v4, v8, p1

    .line 488
    .local v4, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v8, v7

    cmp-long v7, v4, v8

    if-gtz v7, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/widget/OppoEditor;->isPositionOnTextWrap(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 489
    sub-float v0, p3, p5

    .line 490
    .local v0, "deltaX":F
    sub-float v1, p4, p6

    .line 491
    .local v1, "deltaY":F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 492
    .local v2, "distanceSquared":F
    iget-object v7, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 494
    .local v6, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 495
    .local v3, "touchSlop":I
    mul-int v7, v3, v3

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_0

    .line 496
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->startTextSelectionMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 497
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/OppoEditor;->mDiscardNextActionUp:Z

    .line 501
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v3    # "touchSlop":I
    .end local v6    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_0
    return-void
.end method

.method stopTextSelectionMode()V
    .locals 2

    .prologue
    .line 570
    iget-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 572
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Landroid/widget/OppoEditor;->mOppoSelectionCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->hide()V

    .line 575
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoEditor;->mIsInTextSelectionMode:Z

    .line 577
    :cond_1
    return-void
.end method

.method textview()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method touchPositionIsInSelectionWrap()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 258
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 259
    .local v4, "selectionStart":I
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 261
    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_0

    .line 275
    :goto_0
    return v7

    .line 265
    :cond_0
    if-le v4, v3, :cond_1

    .line 266
    move v5, v4

    .line 267
    .local v5, "tmp":I
    move v4, v3

    .line 268
    move v3, v5

    .line 269
    iget-object v6, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 271
    .end local v5    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v2

    .line 272
    .local v2, "selectionController":Landroid/widget/OppoCursorController;
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMinTouchOffset()I

    move-result v1

    .line 273
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/OppoCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 275
    .local v0, "maxOffset":I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method updateCursorsPositions()V
    .locals 13

    .prologue
    .line 352
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    iget v11, v11, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v11, :cond_1

    .line 353
    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 358
    .local v4, "layout":Landroid/text/Layout;
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v2

    .line 359
    .local v2, "hintLayout":Landroid/text/Layout;
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 360
    .local v7, "offset":I
    invoke-virtual {v4, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 361
    .local v5, "line":I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 362
    .local v10, "top":I
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v4, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 364
    .local v0, "bottom":I
    invoke-direct {p0, v4, v2, v7}, Landroid/widget/OppoEditor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F

    move-result v8

    .line 365
    .local v8, "primaryHorizontal":F
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v9, v11

    .line 366
    .local v9, "right":I
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    iget-object v12, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int v3, v11, v12

    .line 368
    .local v3, "hspace":I
    const/4 v1, 0x0

    .line 369
    .local v1, "cursorOffset":I
    sub-int v11, v9, v3

    if-lez v11, :cond_2

    float-to-int v11, v8

    if-ne v11, v9, :cond_2

    .line 370
    iget v1, p0, Landroid/widget/OppoEditor;->mCursrOffset:I

    .line 373
    :cond_2
    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getGravity()I

    move-result v11

    const/16 v12, 0x11

    if-eq v11, v12, :cond_3

    iget-object v11, p0, Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getGravity()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 375
    :cond_3
    const/4 v1, 0x0

    .line 378
    :cond_4
    invoke-virtual {v4, v7}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x2

    :goto_1
    iput v11, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    .line 380
    move v6, v0

    .line 381
    .local v6, "middle":I
    iget v11, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 383
    add-int v11, v10, v0

    shr-int/lit8 v6, v11, 0x1

    .line 387
    :cond_5
    const/4 v11, 0x0

    int-to-float v12, v1

    sub-float v12, v8, v12

    invoke-virtual {p0, v11, v10, v6, v12}, Landroid/widget/OppoEditor;->updateCursorPositionWrap(IIIF)V

    .line 389
    iget v11, p0, Landroid/widget/OppoEditor;->mCursorCount:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 390
    const/4 v11, 0x1

    invoke-virtual {v4, v7}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v12

    invoke-virtual {p0, v11, v6, v0, v12}, Landroid/widget/OppoEditor;->updateCursorPositionWrap(IIIF)V

    goto/16 :goto_0

    .line 378
    .end local v6    # "middle":I
    :cond_6
    const/4 v11, 0x1

    goto :goto_1
.end method
