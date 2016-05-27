.class public Landroid/widget/OppoMagnifierController;
.super Ljava/lang/Object;
.source "OppoMagnifierController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "OppoMagnifierController"


# instance fields
.field private mCurOffset:I

.field private mCurX:I

.field private mCurY:I

.field private mDownMotionEvent:Landroid/view/MotionEvent;

.field private mHasOnTouchListener:Z

.field private mMagnifier:Landroid/widget/OppoTextViewMagnifier;

.field private final mOppoEditor:Landroid/widget/OppoEditor;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/OppoEditor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editor"    # Landroid/widget/OppoEditor;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    .line 46
    invoke-virtual {p2}, Landroid/widget/OppoEditor;->textview()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    .line 47
    iput-object p2, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    .line 48
    return-void
.end method

.method private declared-synchronized getMagnifier()Landroid/widget/OppoTextViewMagnifier;
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/widget/OppoTextViewMagnifier;

    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/OppoTextViewMagnifier;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    .line 54
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isOutside(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 186
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 187
    .local v1, "y":F
    cmpg-float v2, v0, v3

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    cmpg-float v2, v1, v3

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private moveMagnifier(IIII)V
    .locals 8
    .param p1, "curX"    # I
    .param p2, "curY"    # I
    .param p3, "realX"    # I
    .param p4, "realY"    # I

    .prologue
    .line 107
    iget-object v3, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v3}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 111
    .local v0, "location":[I
    iget-object v3, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 112
    const/4 v3, 0x0

    aget v1, v0, v3

    .line 113
    .local v1, "lx":I
    const/4 v3, 0x1

    aget v2, v0, v3

    .line 114
    .local v2, "ly":I
    invoke-direct {p0}, Landroid/widget/OppoMagnifierController;->getMagnifier()Landroid/widget/OppoTextViewMagnifier;

    move-result-object v3

    add-int v4, p1, v1

    add-int v5, p4, v2

    add-int v6, p3, v1

    add-int v7, p4, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/OppoTextViewMagnifier;->move(IIII)V

    goto :goto_0
.end method

.method private positionCursor(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    if-nez v8, :cond_0

    .line 179
    :goto_0
    return-void

    .line 144
    :cond_0
    if-eqz p1, :cond_1

    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    if-nez v8, :cond_2

    .line 145
    :cond_1
    const-string v8, "OppoMagnifierController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mTextView=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v8, "OppoMagnifierController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "event=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_2
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-static {v8, v9}, Landroid/widget/OppoTextViewHelper;->getLineNumber(Landroid/widget/TextView;F)I

    move-result v3

    .line 150
    .local v3, "line":I
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-static {v8, v3, v9}, Landroid/widget/OppoTextViewHelper;->getOffsetByLine(Landroid/widget/TextView;IF)I

    move-result v5

    .line 151
    .local v5, "offset":I
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    if-gtz v8, :cond_4

    :cond_3
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    const/high16 v9, 0x10000

    invoke-static {v8, v9}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    if-nez v8, :cond_5

    .line 153
    :cond_4
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 159
    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/OppoMagnifierController;->isOutside(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 160
    .local v6, "outside":Z
    if-eqz v6, :cond_6

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Landroid/widget/OppoMagnifierController;->mCurY:I

    goto/16 :goto_0

    .line 156
    .end local v6    # "outside":Z
    :cond_5
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-static {v8, v9, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1

    .line 164
    .restart local v6    # "outside":Z
    :cond_6
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 165
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 166
    .local v2, "left":I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 167
    .local v7, "top":I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    .line 168
    .local v0, "bottom":I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float v4, v8, v9

    .line 170
    .local v4, "lineRight":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    cmpl-float v8, v8, v4

    if-lez v8, :cond_8

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    .line 176
    :cond_7
    :goto_2
    add-int v8, v7, v0

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/OppoMagnifierController;->mCurY:I

    goto/16 :goto_0

    .line 172
    :cond_8
    iget v8, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    if-eq v5, v8, :cond_7

    .line 173
    iget-object v8, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    .line 174
    iput v5, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    goto :goto_2
.end method

.method private showMagnifier(IIIIZ)Z
    .locals 10
    .param p1, "curX"    # I
    .param p2, "curY"    # I
    .param p3, "realX"    # I
    .param p4, "realY"    # I
    .param p5, "animated"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 81
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return v0

    .line 84
    :cond_0
    const/4 v1, 0x2

    new-array v6, v1, [I

    .line 85
    .local v6, "location":[I
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 86
    aget v7, v6, v0

    .line 87
    .local v7, "lx":I
    aget v8, v6, v9

    .line 88
    .local v8, "ly":I
    invoke-direct {p0}, Landroid/widget/OppoMagnifierController;->getMagnifier()Landroid/widget/OppoTextViewMagnifier;

    move-result-object v0

    add-int v1, p1, v7

    add-int v2, p4, v8

    add-int v3, p3, v7

    add-int v4, p4, v8

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoTextViewMagnifier;->show(IIIIZ)V

    .line 89
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v9

    .line 90
    goto :goto_0
.end method


# virtual methods
.method public hideMagnifier()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    invoke-virtual {v0}, Landroid/widget/OppoTextViewMagnifier;->hide()V

    goto :goto_0
.end method

.method public isMagnifierShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->isMagnifierEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    if-eqz v1, :cond_0

    .line 131
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mMagnifier:Landroid/widget/OppoTextViewMagnifier;

    invoke-virtual {v0}, Landroid/widget/OppoTextViewMagnifier;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    return v4

    .line 252
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->isMagnifierShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0, p2}, Landroid/widget/OppoMagnifierController;->positionCursor(Landroid/view/MotionEvent;)V

    .line 254
    iget v0, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    iget v1, p0, Landroid/widget/OppoMagnifierController;->mCurY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/OppoMagnifierController;->moveMagnifier(IIII)V

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->hideMagnifier()V

    .line 259
    iget-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 261
    iput-boolean v4, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    .line 263
    :cond_1
    iput v2, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    .line 264
    iput-object v1, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 268
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->hideMagnifier()V

    .line 269
    iget-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    iput-boolean v4, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    .line 273
    :cond_2
    iput v2, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, -0x1

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 210
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 213
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    .line 214
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mOppoEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->hasOnTouchListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    goto :goto_0

    .line 220
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->isMagnifierShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0, p1}, Landroid/widget/OppoMagnifierController;->positionCursor(Landroid/view/MotionEvent;)V

    .line 222
    iget v0, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    iget v1, p0, Landroid/widget/OppoMagnifierController;->mCurY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/OppoMagnifierController;->moveMagnifier(IIII)V

    goto :goto_0

    .line 226
    :pswitch_2
    iget-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->hideMagnifier()V

    .line 230
    iput v1, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 235
    :pswitch_3
    iget-boolean v0, p0, Landroid/widget/OppoMagnifierController;->mHasOnTouchListener:Z

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/widget/OppoMagnifierController;->hideMagnifier()V

    .line 239
    iput v1, p0, Landroid/widget/OppoMagnifierController;->mCurOffset:I

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 6

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/widget/OppoMagnifierController;->positionCursor(Landroid/view/MotionEvent;)V

    .line 62
    iget v1, p0, Landroid/widget/OppoMagnifierController;->mCurX:I

    iget v2, p0, Landroid/widget/OppoMagnifierController;->mCurY:I

    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v0, p0, Landroid/widget/OppoMagnifierController;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/OppoMagnifierController;->showMagnifier(IIIIZ)Z

    goto :goto_0
.end method
