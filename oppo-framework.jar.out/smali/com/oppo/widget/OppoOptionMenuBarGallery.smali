.class public Lcom/oppo/widget/OppoOptionMenuBarGallery;
.super Landroid/widget/Gallery;
.source "OppoOptionMenuBarGallery.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OppoOptionMenuBarGallery"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private bFristScroll:Z

.field private mActivePointerId:I

.field private mLastMotionX:F

.field private mLeftArrow:Landroid/view/View;

.field private mRightArrow:Landroid/view/View;

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mTouchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mActivePointerId:I

    .line 46
    iput v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mTouchState:I

    .line 49
    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLeftArrow:Landroid/view/View;

    .line 50
    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mRightArrow:Landroid/view/View;

    .line 88
    iput-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->bFristScroll:Z

    .line 62
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->findLeftAndRightArrow()V

    .line 63
    invoke-virtual {p0, p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 64
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 65
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mTouchSlop:I

    .line 66
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mScroller:Landroid/widget/Scroller;

    .line 67
    return-void
.end method

.method private findLeftAndRightArrow()V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 164
    .local v0, "parentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 165
    const v1, 0xc020497

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLeftArrow:Landroid/view/View;

    .line 166
    const v1, 0xc020498

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mRightArrow:Landroid/view/View;

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public SrcollToChild(II)V
    .locals 1
    .param p1, "curpos"    # I
    .param p2, "newpos"    # I

    .prologue
    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->setSelection(IZ)V

    .line 152
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGalleryScrolling()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mTouchState:I

    if-ne v1, v0, :cond_0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 81
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 82
    const/16 v0, 0x15

    invoke-super {p0, v0, v1}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16

    invoke-super {p0, v0, v1}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 107
    .local v0, "action":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    iget v6, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mTouchState:I

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->getCount()I

    move-result v6

    if-le v6, v8, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v8

    .line 112
    :cond_1
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 147
    :cond_2
    :goto_1
    iget v6, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mTouchState:I

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->getCount()I

    move-result v6

    if-gt v6, v8, :cond_0

    :cond_3
    move v8, v7

    goto :goto_0

    .line 114
    :pswitch_0
    iget v6, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 115
    .local v1, "pointerIndex":I
    if-eq v1, v9, :cond_2

    .line 118
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 119
    .local v3, "x":F
    iget v6, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLastMotionX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v4, v6

    .line 120
    .local v4, "xDiff":I
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mTouchSlop:I

    .line 121
    .local v2, "touchSlop":I
    div-int/lit8 v6, v2, 0x2

    if-le v4, v6, :cond_4

    move v5, v8

    .line 122
    .local v5, "xMoved":Z
    :goto_2
    if-eqz v5, :cond_2

    .line 123
    iput-boolean v8, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->bFristScroll:Z

    .line 124
    iput v8, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mTouchState:I

    .line 125
    iput v3, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLastMotionX:F

    goto :goto_1

    .end local v5    # "xMoved":Z
    :cond_4
    move v5, v7

    .line 121
    goto :goto_2

    .line 131
    .end local v1    # "pointerIndex":I
    .end local v2    # "touchSlop":I
    .end local v3    # "x":F
    .end local v4    # "xDiff":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 132
    .restart local v3    # "x":F
    iput v3, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLastMotionX:F

    .line 133
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mActivePointerId:I

    .line 134
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_3
    iput v6, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mTouchState:I

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_3

    .line 140
    .end local v3    # "x":F
    :pswitch_2
    iput v7, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mTouchState:I

    .line 141
    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mActivePointerId:I

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 172
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLeftArrow:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mRightArrow:Landroid/view/View;

    if-nez v1, :cond_1

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->findLeftAndRightArrow()V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->getCount()I

    move-result v0

    .line 176
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLeftArrow:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mRightArrow:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 178
    if-nez p3, :cond_2

    .line 179
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mRightArrow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :goto_0
    return-void

    .line 181
    :cond_2
    add-int/lit8 v1, v0, -0x1

    if-ne v1, p3, :cond_3

    .line 182
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mRightArrow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mRightArrow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mRightArrow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->bFristScroll:Z

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->bFristScroll:Z

    .line 97
    invoke-super {p0, p2}, Landroid/widget/Gallery;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v6, 0x1

    .line 232
    .local v6, "sameSelected":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 233
    if-eqz v6, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->getSelectedItemId()J

    move-result-wide v4

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 237
    :cond_0
    return-void

    .line 231
    .end local v6    # "sameSelected":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x4

    .line 200
    if-eqz p1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mRightArrow:Landroid/view/View;

    if-nez v0, :cond_1

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBarGallery;->findLeftAndRightArrow()V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGallery;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 210
    return-void
.end method
