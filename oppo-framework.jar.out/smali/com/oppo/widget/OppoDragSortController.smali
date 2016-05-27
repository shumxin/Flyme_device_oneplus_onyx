.class public Lcom/oppo/widget/OppoDragSortController;
.super Lcom/oppo/widget/OppoSimpleFloatViewManager;
.source "OppoDragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field public static final FLING_REMOVE:I = 0x1

.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2


# instance fields
.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/oppo/widget/OppoDragSortListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsRemoving:Z

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 2
    .param p1, "dslv"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    const/4 v1, 0x0

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/oppo/widget/OppoDragSortController;-><init>(Lcom/oppo/widget/OppoDragSortListView;III)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;III)V
    .locals 6
    .param p1, "dslv"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I

    .prologue
    .line 121
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoDragSortController;-><init>(Lcom/oppo/widget/OppoDragSortListView;IIII)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;IIII)V
    .locals 7
    .param p1, "dslv"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I

    .prologue
    .line 126
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoDragSortController;-><init>(Lcom/oppo/widget/OppoDragSortListView;IIIII)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/oppo/widget/OppoDragSortListView;IIIII)V
    .locals 4
    .param p1, "dslv"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I
    .param p6, "flingHandleId"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 138
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 55
    iput v3, p0, Lcom/oppo/widget/OppoDragSortController;->mDragInitMode:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortController;->mSortEnabled:Z

    .line 70
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    .line 71
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z

    .line 81
    iput v1, p0, Lcom/oppo/widget/OppoDragSortController;->mHitPos:I

    .line 82
    iput v1, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingHitPos:I

    .line 84
    iput v1, p0, Lcom/oppo/widget/OppoDragSortController;->mClickRemoveHitPos:I

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/widget/OppoDragSortController;->mTempLoc:[I

    .line 94
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortController;->mDragging:Z

    .line 96
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingSpeed:F

    .line 458
    new-instance v0, Lcom/oppo/widget/OppoDragSortController$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoDragSortController$1;-><init>(Lcom/oppo/widget/OppoDragSortController;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 139
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    .line 140
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/oppo/widget/OppoDragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoDragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 141
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/oppo/widget/OppoDragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 142
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 143
    invoke-virtual {p1}, Lcom/oppo/widget/OppoDragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortController;->mTouchSlop:I

    .line 144
    iput p2, p0, Lcom/oppo/widget/OppoDragSortController;->mDragHandleId:I

    .line 145
    iput p5, p0, Lcom/oppo/widget/OppoDragSortController;->mClickRemoveId:I

    .line 146
    iput p6, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingHandleId:I

    .line 147
    invoke-virtual {p0, p4}, Lcom/oppo/widget/OppoDragSortController;->setRemoveMode(I)V

    .line 148
    invoke-virtual {p0, p3}, Lcom/oppo/widget/OppoDragSortController;->setDragInitMode(I)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoDragSortController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortController;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoDragSortController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortController;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoDragSortController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortController;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoDragSortController;)Lcom/oppo/widget/OppoDragSortListView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoDragSortController;)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortController;

    .prologue
    .line 45
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingSpeed:F

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoDragSortController;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortController;

    .prologue
    .line 45
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mPositionX:I

    return v0
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 325
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoDragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 329
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoDragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getDragInitMode()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mDragInitMode:I

    return v0
.end method

.method public getRemoveMode()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveMode:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortController;->mSortEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 372
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 373
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoDragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortController;->mClickRemoveHitPos:I

    .line 376
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortController;->mHitPos:I

    .line 377
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mDragInitMode:I

    if-nez v0, :cond_1

    .line 378
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/oppo/widget/OppoDragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/oppo/widget/OppoDragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/widget/OppoDragSortController;->startDrag(III)Z

    .line 381
    :cond_1
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z

    .line 382
    iput-boolean v5, p0, Lcom/oppo/widget/OppoDragSortController;->mCanDrag:Z

    .line 383
    iput v4, p0, Lcom/oppo/widget/OppoDragSortController;->mPositionX:I

    .line 384
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingHitPos:I

    .line 386
    return v5
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z

    if-eqz v0, :cond_0

    .line 295
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/oppo/widget/OppoDragSortController;->mPositionX:I

    .line 297
    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 429
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mDragInitMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->performHapticFeedback(I)Z

    .line 431
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mHitPos:I

    iget v1, p0, Lcom/oppo/widget/OppoDragSortController;->mCurrX:I

    iget v2, p0, Lcom/oppo/widget/OppoDragSortController;->mItemX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoDragSortController;->mCurrY:I

    iget v3, p0, Lcom/oppo/widget/OppoDragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/widget/OppoDragSortController;->startDrag(III)Z

    .line 433
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 392
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v8

    .line 396
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 397
    .local v2, "x1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 398
    .local v4, "y1":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 399
    .local v3, "x2":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 400
    .local v5, "y2":I
    iget v6, p0, Lcom/oppo/widget/OppoDragSortController;->mItemX:I

    sub-int v0, v3, v6

    .line 401
    .local v0, "deltaX":I
    iget v6, p0, Lcom/oppo/widget/OppoDragSortController;->mItemY:I

    sub-int v1, v5, v6

    .line 403
    .local v1, "deltaY":I
    iget-boolean v6, p0, Lcom/oppo/widget/OppoDragSortController;->mCanDrag:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDragSortController;->mDragging:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/oppo/widget/OppoDragSortController;->mHitPos:I

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_0

    .line 404
    :cond_2
    iget v6, p0, Lcom/oppo/widget/OppoDragSortController;->mHitPos:I

    if-eq v6, v7, :cond_4

    .line 405
    iget v6, p0, Lcom/oppo/widget/OppoDragSortController;->mDragInitMode:I

    if-ne v6, v9, :cond_3

    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoDragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_3

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDragSortController;->mSortEnabled:Z

    if-eqz v6, :cond_3

    .line 406
    iget v6, p0, Lcom/oppo/widget/OppoDragSortController;->mHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/oppo/widget/OppoDragSortController;->startDrag(III)Z

    goto :goto_0

    .line 407
    :cond_3
    iget v6, p0, Lcom/oppo/widget/OppoDragSortController;->mDragInitMode:I

    if-eqz v6, :cond_0

    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoDragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_0

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    if-eqz v6, :cond_0

    .line 409
    iput-boolean v9, p0, Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z

    .line 410
    iget v6, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/oppo/widget/OppoDragSortController;->startDrag(III)Z

    goto :goto_0

    .line 412
    :cond_4
    iget v6, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_0

    .line 413
    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoDragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    if-eqz v6, :cond_5

    .line 414
    iput-boolean v9, p0, Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z

    .line 415
    iget v6, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/oppo/widget/OppoDragSortController;->startDrag(III)Z

    goto :goto_0

    .line 416
    :cond_5
    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoDragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_0

    .line 417
    iput-boolean v8, p0, Lcom/oppo/widget/OppoDragSortController;->mCanDrag:Z

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 456
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 445
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mClickRemoveHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    iget v1, p0, Lcom/oppo/widget/OppoDragSortController;->mClickRemoveHitPos:I

    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->removeItem(I)V

    .line 449
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDragSortListView;->isDragEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDragSortListView;->listViewIntercepted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v5

    .line 260
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 261
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDragSortController;->mDragging:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveMode:I

    if-ne v3, v6, :cond_2

    .line 262
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 265
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 266
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 268
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoDragSortController;->mCurrX:I

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoDragSortController;->mCurrY:I

    goto :goto_0

    .line 272
    :pswitch_2
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z

    if-eqz v3, :cond_3

    .line 273
    iget v3, p0, Lcom/oppo/widget/OppoDragSortController;->mPositionX:I

    if-ltz v3, :cond_4

    iget v2, p0, Lcom/oppo/widget/OppoDragSortController;->mPositionX:I

    .line 274
    .local v2, "x":I
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDragSortListView;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 275
    .local v1, "removePoint":I
    if-le v2, v1, :cond_3

    .line 276
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/oppo/widget/OppoDragSortListView;->stopDragWithVelocity(ZF)Z

    .line 280
    .end local v1    # "removePoint":I
    .end local v2    # "x":I
    :cond_3
    :pswitch_3
    iput-boolean v5, p0, Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z

    .line 281
    iput-boolean v5, p0, Lcom/oppo/widget/OppoDragSortController;->mDragging:Z

    goto :goto_0

    .line 273
    :cond_4
    iget v3, p0, Lcom/oppo/widget/OppoDragSortController;->mPositionX:I

    neg-int v2, v3

    goto :goto_1

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setClickRemoveId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/oppo/widget/OppoDragSortController;->mClickRemoveId:I

    .line 226
    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/oppo/widget/OppoDragSortController;->mDragHandleId:I

    .line 208
    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/oppo/widget/OppoDragSortController;->mDragInitMode:I

    .line 163
    return-void
.end method

.method public setFlingHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/oppo/widget/OppoDragSortController;->mFlingHandleId:I

    .line 217
    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    .line 195
    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveMode:I

    .line 184
    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDragSortController;->mSortEnabled:Z

    .line 173
    return-void
.end method

.method public startDrag(III)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "dragFlags":I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z

    if-nez v1, :cond_0

    .line 242
    or-int/lit8 v0, v0, 0xc

    .line 244
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_1

    .line 245
    or-int/lit8 v0, v0, 0x1

    .line 246
    or-int/lit8 v0, v0, 0x2

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/oppo/widget/OppoDragSortListView;->startDrag(IIII)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoDragSortController;->mDragging:Z

    .line 251
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortController;->mDragging:Z

    return v1
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 313
    iget v0, p0, Lcom/oppo/widget/OppoDragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 334
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 336
    .local v9, "y":I
    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v10, v8, v9}, Lcom/oppo/widget/OppoDragSortListView;->pointToPosition(II)I

    move-result v7

    .line 338
    .local v7, "touchPos":I
    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v10}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v4

    .line 339
    .local v4, "numHeaders":I
    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v10}, Lcom/oppo/widget/OppoDragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 340
    .local v3, "numFooters":I
    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v10}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v0

    .line 345
    .local v0, "count":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    if-lt v7, v4, :cond_1

    sub-int v10, v0, v3

    if-ge v7, v10, :cond_1

    .line 347
    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortController;->mDslv:Lcom/oppo/widget/OppoDragSortListView;

    invoke-virtual {v11}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 348
    .local v2, "item":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v5, v10

    .line 349
    .local v5, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v6, v10

    .line 351
    .local v6, "rawY":I
    if-nez p2, :cond_0

    move-object v1, v2

    .line 352
    .local v1, "dragBox":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    .line 353
    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortController;->mTempLoc:[I

    invoke-virtual {v1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 355
    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-le v5, v10, :cond_1

    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-le v6, v10, :cond_1

    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v5, v10, :cond_1

    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_1

    .line 359
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Lcom/oppo/widget/OppoDragSortController;->mItemX:I

    .line 360
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/oppo/widget/OppoDragSortController;->mItemY:I

    .line 367
    .end local v1    # "dragBox":Landroid/view/View;
    .end local v2    # "item":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    .end local v7    # "touchPos":I
    :goto_1
    return v7

    .line 351
    .restart local v2    # "item":Landroid/view/View;
    .restart local v5    # "rawX":I
    .restart local v6    # "rawY":I
    .restart local v7    # "touchPos":I
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 367
    .end local v2    # "item":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    :cond_1
    const/4 v7, -0x1

    goto :goto_1
.end method
