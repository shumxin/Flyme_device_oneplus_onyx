.class public Lcom/oppo/widget/OppoSwitch;
.super Landroid/widget/CompoundButton;
.source "OppoSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoSwitch$1;,
        Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DEBUG:Z = false

.field private static final DURATION_SCROLL_END:I = 0xc8

.field private static final DURATION_SCROLL_START:I = 0x64

.field private static final TAG:Ljava/lang/String; = "OppoSwitch"

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final VELOCITY_FLING_FAST:I = 0x708


# instance fields
.field private mFastFlingVelocity:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mPlaySound:Z

.field private mScrollEnd:Z

.field private mScrollStart:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumbCross:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbInner:I

.field private mThumbOffset:I

.field private mThumbOuter:I

.field private mThumbPadding:I

.field private mThumbPosition:F

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackWidth:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/oppo/widget/OppoSwitch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 163
    const v0, 0xc010405

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 134
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    .line 137
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSwitch;->mScrollStart:Z

    .line 138
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSwitch;->mScrollEnd:Z

    .line 139
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSwitch;->mScrolling:Z

    .line 140
    iput-boolean v6, p0, Lcom/oppo/widget/OppoSwitch;->mPlaySound:Z

    .line 141
    iput-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    .line 142
    iput-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 178
    sget-object v3, Landroid/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 181
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 182
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchMinWidth:I

    .line 184
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchPadding:I

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    sget-object v3, Loppo/R$styleable;->OppoSwitch:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 190
    .local v1, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    .line 191
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    .line 192
    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbCross:I

    .line 193
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPadding:I

    .line 195
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 198
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x44e10000    # 1800.0f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mFastFlingVelocity:F

    .line 202
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    .line 203
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;

    invoke-direct {v4, p0, v5}, Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;-><init>(Lcom/oppo/widget/OppoSwitch;Lcom/oppo/widget/OppoSwitch$1;)V

    invoke-direct {v3, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/oppo/widget/OppoSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 206
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->refreshDrawableState()V

    .line 207
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoSwitch;->setChecked(Z)V

    .line 208
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoSwitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSwitch;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbChangeCheckedState()V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoSwitch;)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSwitch;

    .prologue
    .line 56
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mFastFlingVelocity:F

    return v0
.end method

.method private animateThumbChangeCheckedState()V
    .locals 3

    .prologue
    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mScrollStart:Z

    .line 571
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbPos()I

    move-result v0

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getMinPosition()I

    move-result v1

    const/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/widget/OppoSwitch;->smoothScrollTo(III)V

    .line 572
    return-void
.end method

.method private animateThumbRestoreCheckedState()V
    .locals 3

    .prologue
    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mScrollEnd:Z

    .line 576
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbPos()I

    move-result v0

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbScrollRange()I

    move-result v1

    const/16 v2, 0xc8

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/widget/OppoSwitch;->smoothScrollTo(III)V

    .line 577
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 538
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 539
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 540
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 541
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 542
    return-void
.end method

.method private getMinPosition()I
    .locals 2

    .prologue
    .line 813
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    iget v1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbCross:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getThumbPos()I
    .locals 2

    .prologue
    .line 798
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 681
    const/4 v0, 0x0

    .line 684
    :goto_0
    return v0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 684
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 452
    iget-object v4, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 453
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchTop:I

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 454
    .local v3, "thumbTop":I
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchLeft:I

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbPos()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    add-int v1, v4, v5

    .line 455
    .local v1, "thumbLeft":I
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 457
    .local v2, "thumbRight":I
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchBottom:I

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 458
    .local v0, "thumbBottom":I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isOverspeed(F)Z
    .locals 3
    .param p1, "velocity"    # F

    .prologue
    .line 807
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 808
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 809
    .local v0, "xvel":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needChangeCheckedState()Z
    .locals 4

    .prologue
    .line 802
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbScrollRange()I

    move-result v1

    iget v2, p0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    iget v3, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playSoundEffect()V
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mPlaySound:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSwitch;->playSoundEffect(I)V

    .line 778
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mPlaySound:Z

    .line 779
    return-void
.end method

.method private setScrolling(Z)V
    .locals 0
    .param p1, "scrolling"    # Z

    .prologue
    .line 782
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSwitch;->mScrolling:Z

    .line 783
    return-void
.end method

.method private smoothScrollTo(III)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 786
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    move v1, p1

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 793
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSwitch;->setScrolling(Z)V

    .line 794
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->invalidate()V

    goto :goto_0
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 550
    iput v1, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    .line 552
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 554
    .local v0, "commitChange":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSwitch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 556
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->needChangeCheckedState()Z

    move-result v1

    and-int/2addr v0, v1

    .line 558
    if-eqz v0, :cond_1

    .line 559
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbChangeCheckedState()V

    .line 562
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->playSoundEffect()V

    .line 567
    :goto_1
    return-void

    .end local v0    # "commitChange":Z
    :cond_0
    move v0, v1

    .line 552
    goto :goto_0

    .line 565
    .restart local v0    # "commitChange":Z
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbRestoreCheckedState()V

    goto :goto_1
.end method


# virtual methods
.method public changeChecked()V
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mScrolling:Z

    if-nez v0, :cond_0

    .line 769
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mPlaySound:Z

    .line 770
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbChangeCheckedState()V

    .line 772
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 745
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoSwitch;->mScrolling:Z

    if-nez v1, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    .line 750
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->invalidate()V

    goto :goto_0

    .line 751
    :cond_2
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSwitch;->mScrollEnd:Z

    if-eqz v1, :cond_3

    .line 752
    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mScrollEnd:Z

    .line 753
    iput-boolean v0, p0, Lcom/oppo/widget/OppoSwitch;->mScrollStart:Z

    .line 754
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSwitch;->setScrolling(Z)V

    goto :goto_0

    .line 755
    :cond_3
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSwitch;->mScrollStart:Z

    if-eqz v1, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSwitch;->setChecked(Z)V

    .line 760
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbRestoreCheckedState()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 698
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 700
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getDrawableState()[I

    move-result-object v0

    .line 704
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->invalidate()V

    .line 712
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 672
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPadding:I

    add-int v0, v1, v2

    .line 673
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    iget v1, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 676
    :cond_0
    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchPadding:I

    return v0
.end method

.method public getThumbCross()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbCross:I

    return v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbInner()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    return v0
.end method

.method public getThumbOuter()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    return v0
.end method

.method public getThumbPadding()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 721
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 722
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 723
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 724
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 689
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 690
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    sget-object v1, Lcom/oppo/widget/OppoSwitch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSwitch;->mergeDrawableStates([I[I)[I

    .line 693
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 622
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 625
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oppo/widget/OppoSwitch;->mSwitchLeft:I

    .line 626
    .local v8, "switchLeft":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/oppo/widget/OppoSwitch;->mSwitchTop:I

    .line 627
    .local v10, "switchTop":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oppo/widget/OppoSwitch;->mSwitchRight:I

    .line 628
    .local v9, "switchRight":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoSwitch;->mSwitchBottom:I

    .line 640
    .local v5, "switchBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 641
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    move/from16 v21, v0

    sub-int v21, v9, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    move/from16 v22, v0

    sub-int v13, v21, v22

    .line 642
    .local v13, "thumbLeftDefault":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v6, v8, v21

    .line 643
    .local v6, "switchInnerLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v7, v9, v21

    .line 644
    .local v7, "switchInnerRight":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v10, v7, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 645
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 646
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10, v7, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 650
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoSwitch;->getThumbPos()I

    move-result v14

    .line 651
    .local v14, "thumbPos":I
    add-int v21, v6, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbCross:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v12, v21, v22

    .line 652
    .local v12, "thumbLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    move/from16 v21, v0

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v15, v21, v22

    .line 653
    .local v15, "thumbRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbOffset:I

    move/from16 v21, v0

    add-int v16, v10, v21

    .line 654
    .local v16, "thumbTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbOffset:I

    move/from16 v21, v0

    sub-int v11, v5, v21

    .line 656
    .local v11, "thumbBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1, v15, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 659
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 660
    move/from16 v18, v8

    .line 661
    .local v18, "trackLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoSwitch;->mTrackWidth:I

    move/from16 v21, v0

    add-int v19, v8, v21

    .line 662
    .local v19, "trackRight":I
    move/from16 v20, v10

    .line 663
    .local v20, "trackTop":I
    move/from16 v17, v5

    .line 665
    .local v17, "trackBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 668
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 728
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 729
    const-class v0, Lcom/oppo/widget/OppoSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 730
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 734
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 735
    const-class v0, Lcom/oppo/widget/OppoSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 736
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 587
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 589
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbScrollRange()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    .line 591
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPadding:I

    add-int v2, v4, v5

    .line 592
    .local v2, "switchRight":I
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchWidth:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    sub-int v1, v4, v5

    .line 593
    .local v1, "switchLeft":I
    const/4 v3, 0x0

    .line 594
    .local v3, "switchTop":I
    const/4 v0, 0x0

    .line 595
    .local v0, "switchBottom":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 598
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getPaddingTop()I

    move-result v3

    .line 599
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 614
    :goto_0
    iput v1, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchLeft:I

    .line 615
    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchTop:I

    .line 616
    iput v0, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchBottom:I

    .line 617
    iput v2, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchRight:I

    .line 618
    return-void

    .line 603
    :sswitch_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 605
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 606
    goto :goto_0

    .line 609
    :sswitch_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 610
    iget v4, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_0

    .line 595
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 423
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 424
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v6, v7, v8

    .line 425
    .local v6, "trackWidth":I
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v5, v7, v8

    .line 426
    .local v5, "trackHeight":I
    iget v7, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchMinWidth:I

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 428
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 429
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v4, v7, v8

    .line 430
    .local v4, "thumbWidth":I
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/oppo/widget/OppoSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v3, v7, v8

    .line 431
    .local v3, "thumbHeight":I
    iget v7, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchMinWidth:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 433
    add-int v7, v6, v4

    iget v8, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    sub-int v2, v7, v8

    .line 434
    .local v2, "switchWidth":I
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 435
    .local v1, "switchHeight":I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOffset:I

    .line 436
    iput v2, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchWidth:I

    .line 437
    iput v1, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchHeight:I

    .line 438
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoSwitch;->mTrackWidth:I

    .line 439
    iget-object v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbWidth:I

    .line 441
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 442
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getMeasuredHeight()I

    move-result v0

    .line 443
    .local v0, "measuredHeight":I
    if-ge v0, v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getMeasuredWidthAndState()I

    move-result v7

    invoke-virtual {p0, v7, v1}, Lcom/oppo/widget/OppoSwitch;->setMeasuredDimension(II)V

    .line 446
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 463
    iget-boolean v6, p0, Lcom/oppo/widget/OppoSwitch;->mScrolling:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v5

    .line 466
    :cond_1
    iget-object v6, p0, Lcom/oppo/widget/OppoSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 467
    iget-object v6, p0, Lcom/oppo/widget/OppoSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 468
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 471
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 534
    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 473
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 474
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 475
    .local v4, "y":F
    invoke-direct {p0, v3, v4}, Lcom/oppo/widget/OppoSwitch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 476
    iput v5, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    .line 477
    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mTouchX:F

    .line 478
    iput v4, p0, Lcom/oppo/widget/OppoSwitch;->mTouchY:F

    goto :goto_1

    .line 484
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 490
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 491
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 492
    .restart local v4    # "y":F
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoSwitch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 493
    :cond_4
    iput v8, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    .line 494
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 495
    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mTouchX:F

    .line 496
    iput v4, p0, Lcom/oppo/widget/OppoSwitch;->mTouchY:F

    goto :goto_0

    .line 503
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 504
    .restart local v3    # "x":F
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mTouchX:F

    sub-float v1, v3, v6

    .line 505
    .local v1, "dx":F
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getMinPosition()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->getThumbScrollRange()I

    move-result v8

    iget v9, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 507
    .local v2, "newPos":F
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_0

    .line 508
    iput v2, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPosition:F

    .line 509
    iput v3, p0, Lcom/oppo/widget/OppoSwitch;->mTouchX:F

    .line 510
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->invalidate()V

    .line 511
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mFastFlingVelocity:F

    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoSwitch;->isOverspeed(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 512
    iput v10, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    .line 513
    invoke-direct {p0}, Lcom/oppo/widget/OppoSwitch;->animateThumbChangeCheckedState()V

    goto/16 :goto_0

    .line 524
    .end local v1    # "dx":F
    .end local v2    # "newPos":F
    .end local v3    # "x":F
    :pswitch_5
    iget v6, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    if-ne v6, v8, :cond_5

    .line 525
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSwitch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 528
    :cond_5
    iput v10, p0, Lcom/oppo/widget/OppoSwitch;->mTouchMode:I

    .line 529
    iget-object v5, p0, Lcom/oppo/widget/OppoSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 484
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 582
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->invalidate()V

    .line 583
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 334
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchMinWidth:I

    .line 335
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 336
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mSwitchPadding:I

    .line 311
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 312
    return-void
.end method

.method public setThumbCross(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbCross:I

    .line 265
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 266
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 394
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 395
    return-void
.end method

.method public setThumbInner(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbInner:I

    .line 242
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 243
    return-void
.end method

.method public setThumbOuter(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbOuter:I

    .line 219
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 220
    return-void
.end method

.method public setThumbPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/oppo/widget/OppoSwitch;->mThumbPadding:I

    .line 288
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 289
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 359
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->requestLayout()V

    .line 360
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    return-void
.end method

.method public toggle()V
    .locals 0

    .prologue
    .line 741
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 716
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
