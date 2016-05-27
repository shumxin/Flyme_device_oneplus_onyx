.class public Lcom/oppo/widget/OppoDragSortListView;
.super Lcom/oppo/widget/OppoListView;
.source "OppoDragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;,
        Lcom/oppo/widget/OppoDragSortListView$DragScroller;,
        Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;,
        Lcom/oppo/widget/OppoDragSortListView$DragSortListener;,
        Lcom/oppo/widget/OppoDragSortListView$RemoveListener;,
        Lcom/oppo/widget/OppoDragSortListView$DropListener;,
        Lcom/oppo/widget/OppoDragSortListView$DragListener;,
        Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;,
        Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;,
        Lcom/oppo/widget/OppoDragSortListView$DropAnimator;,
        Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;,
        Lcom/oppo/widget/OppoDragSortListView$SmoothAnimator;,
        Lcom/oppo/widget/OppoDragSortListView$HeightCache;,
        Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoDragSortListView"

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/oppo/widget/OppoDragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/oppo/widget/OppoDragSortListView$DragListener;

.field private mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/oppo/widget/OppoDragSortListView$DropAnimator;

.field private mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mIsWillDrag:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastY:I

.field private mLiftAnimator:Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRemoveAnimator:Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSlideState:Z

.field private mSrcPos:I

.field private mStopAndWaitLayout:Z

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 433
    invoke-direct/range {p0 .. p2}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 73
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 83
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewOnMeasured:Z

    .line 93
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatAlpha:F

    .line 94
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    .line 118
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mAnimate:Z

    .line 177
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    .line 188
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 189
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    .line 190
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideState:Z

    .line 196
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    .line 211
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mWidthMeasureSpec:I

    .line 217
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 228
    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollStartFrac:F

    .line 234
    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollStartFrac:F

    .line 258
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mMaxScrollSpeed:F

    .line 260
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    .line 267
    new-instance v5, Lcom/oppo/widget/OppoDragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/oppo/widget/OppoDragSortListView$1;-><init>(Lcom/oppo/widget/OppoDragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

    .line 337
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    .line 342
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mLastCallWasIntercept:Z

    .line 347
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    .line 352
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    .line 369
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    .line 375
    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideRegionFrac:F

    .line 382
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    .line 394
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    .line 404
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z

    .line 410
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mIgnoreTouchEvent:Z

    .line 421
    new-instance v5, Lcom/oppo/widget/OppoDragSortListView$HeightCache;

    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/oppo/widget/OppoDragSortListView$HeightCache;-><init>(Lcom/oppo/widget/OppoDragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mChildHeightCache:Lcom/oppo/widget/OppoDragSortListView$HeightCache;

    .line 430
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    .line 1699
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mListViewIntercepted:Z

    .line 435
    const/16 v27, 0x96

    .line 436
    .local v27, "defaultDuration":I
    move/from16 v30, v27

    .line 437
    .local v30, "removeAnimDuration":I
    move/from16 v28, v27

    .line 439
    .local v28, "dropAnimDuration":I
    if-eqz p2, :cond_2

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v12, Loppo/R$styleable;->DragSortListView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 443
    .local v11, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    const/16 v12, 0xb

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    .line 446
    const/16 v5, 0x10

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    .line 448
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    if-eqz v5, :cond_0

    .line 449
    new-instance v5, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;-><init>(Lcom/oppo/widget/OppoDragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragSortTracker:Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

    .line 453
    :cond_0
    const/16 v5, 0x11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatAlpha:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatAlpha:F

    .line 454
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    .line 456
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    .line 458
    const/4 v5, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f400000    # 0.75f

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideRegionFrac:F

    .line 461
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideRegionFrac:F

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mAnimate:Z

    .line 463
    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 466
    .local v29, "frac":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->setDragScrollStart(F)V

    .line 468
    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoDragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mMaxScrollSpeed:F

    .line 471
    const/4 v5, 0x1

    move/from16 v0, v30

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 474
    const/4 v5, 0x2

    move/from16 v0, v28

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    .line 477
    const/16 v5, 0xa

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    .line 480
    .local v34, "useDefault":Z
    if-eqz v34, :cond_1

    .line 481
    const/4 v5, 0x5

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    .line 483
    .local v31, "removeEnabled":Z
    const/16 v5, 0xf

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 485
    .local v8, "removeMode":I
    const/4 v5, 0x4

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 486
    .local v33, "sortEnabled":Z
    const/4 v5, 0x6

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 488
    .local v7, "dragInitMode":I
    const/4 v5, 0x7

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 489
    .local v6, "dragHandleId":I
    const/16 v5, 0x8

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 491
    .local v10, "flingHandleId":I
    const/16 v5, 0x9

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 493
    .local v9, "clickRemoveId":I
    const/16 v5, 0xe

    const/high16 v12, -0x1000000

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .line 496
    .local v26, "bgColor":I
    new-instance v4, Lcom/oppo/widget/OppoDragSortController;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/oppo/widget/OppoDragSortController;-><init>(Lcom/oppo/widget/OppoDragSortListView;IIIII)V

    .line 498
    .local v4, "controller":Lcom/oppo/widget/OppoDragSortController;
    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/oppo/widget/OppoDragSortController;->setRemoveEnabled(Z)V

    .line 499
    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/oppo/widget/OppoDragSortController;->setSortEnabled(Z)V

    .line 500
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/oppo/widget/OppoDragSortController;->setBackgroundColor(I)V

    .line 502
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    .line 503
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oppo/widget/OppoDragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 506
    .end local v4    # "controller":Lcom/oppo/widget/OppoDragSortController;
    .end local v6    # "dragHandleId":I
    .end local v7    # "dragInitMode":I
    .end local v8    # "removeMode":I
    .end local v9    # "clickRemoveId":I
    .end local v10    # "flingHandleId":I
    .end local v26    # "bgColor":I
    .end local v31    # "removeEnabled":Z
    .end local v33    # "sortEnabled":Z
    :cond_1
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 509
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v29    # "frac":F
    .end local v34    # "useDefault":Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0xc080022

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oppo/widget/OppoDragSortListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 512
    new-instance v5, Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;-><init>(Lcom/oppo/widget/OppoDragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    .line 514
    const/high16 v32, 0x3f000000    # 0.5f

    .line 515
    .local v32, "smoothness":F
    if-lez v30, :cond_3

    .line 516
    new-instance v5, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    invoke-direct {v5, v0, v1, v2}, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;-><init>(Lcom/oppo/widget/OppoDragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveAnimator:Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;

    .line 519
    :cond_3
    if-lez v28, :cond_4

    .line 520
    new-instance v5, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v5, v0, v1, v2}, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;-><init>(Lcom/oppo/widget/OppoDragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mDropAnimator:Lcom/oppo/widget/OppoDragSortListView$DropAnimator;

    .line 523
    :cond_4
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v12 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 527
    new-instance v5, Lcom/oppo/widget/OppoDragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/oppo/widget/OppoDragSortListView$2;-><init>(Lcom/oppo/widget/OppoDragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oppo/widget/OppoDragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 545
    return-void

    .line 461
    .end local v32    # "smoothness":F
    .restart local v11    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoDragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1302(Lcom/oppo/widget/OppoDragSortListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic access$1500(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoDragSortListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mUseRemoveVelocity:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1702(Lcom/oppo/widget/OppoDragSortListView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic access$1716(Lcom/oppo/widget/OppoDragSortListView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # F

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoDragSortListView;ILandroid/view/View;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoDragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$2100(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$2200(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$2300(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$2400(Lcom/oppo/widget/OppoDragSortListView;)Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$2600(Lcom/oppo/widget/OppoDragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$2702(Lcom/oppo/widget/OppoDragSortListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/oppo/widget/OppoDragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/oppo/widget/OppoDragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/oppo/widget/OppoDragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoDragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$3100(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic access$3200(Lcom/oppo/widget/OppoDragSortListView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoDragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoDragSortListView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoDragSortListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoDragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDragSortListView;

    .prologue
    .line 57
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    return v0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1857
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1858
    .local v2, "first":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1860
    .local v4, "last":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1861
    .local v0, "begin":I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1863
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1864
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1865
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1866
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/oppo/widget/OppoDragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1863
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1869
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1888
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1890
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    .line 1891
    const/4 v0, -0x2

    .line 1896
    .local v0, "height":I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1897
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1898
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1902
    :cond_0
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1903
    :cond_1
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1904
    check-cast v4, Lcom/oppo/widget/OppoDragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoDragSortItemView;->setGravity(I)V

    .line 1912
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1913
    .local v2, "oldVis":I
    const/4 v3, 0x0

    .line 1915
    .local v3, "vis":I
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1916
    const/4 v3, 0x4

    .line 1919
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1920
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1922
    :cond_4
    return-void

    .line 1893
    .end local v0    # "height":I
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 1905
    :cond_6
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1906
    check-cast v4, Lcom/oppo/widget/OppoDragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoDragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    .line 1519
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1521
    .local v0, "firstPos":I
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1524
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1525
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1526
    .local v1, "top":I
    if-eqz v2, :cond_0

    .line 1527
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1530
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/oppo/widget/OppoDragSortListView;->setSelectionFromTop(II)V

    .line 1532
    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    .line 2055
    const/4 v0, 0x0

    .line 2057
    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I

    move-result v1

    .line 2059
    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2060
    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoDragSortListView;->calcItemHeight(II)I

    move-result v5

    .line 2062
    .local v5, "moveHeightAfter":I
    move v4, v6

    .line 2063
    .local v4, "moveBlankBefore":I
    move v3, v5

    .line 2064
    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 2065
    sub-int/2addr v4, v1

    .line 2066
    sub-int/2addr v3, v1

    .line 2069
    :cond_0
    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    .line 2070
    .local v2, "maxBlank":I
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 2071
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 2074
    :cond_1
    if-gt p1, p3, :cond_3

    .line 2075
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 2076
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 2094
    :cond_2
    :goto_0
    return v0

    .line 2078
    :cond_3
    if-ne p1, p4, :cond_6

    .line 2079
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 2080
    sub-int v7, v4, v2

    add-int/2addr v0, v7

    goto :goto_0

    .line 2081
    :cond_4
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 2082
    sub-int v7, v6, v5

    add-int/2addr v0, v7

    goto :goto_0

    .line 2084
    :cond_5
    add-int/2addr v0, v4

    goto :goto_0

    .line 2087
    :cond_6
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 2088
    sub-int/2addr v0, v2

    goto :goto_0

    .line 2089
    :cond_7
    iget v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 2090
    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7
    .param p0, "cip"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "runStart"    # [I
    .param p4, "runEnd"    # [I

    .prologue
    const/4 v5, 0x0

    .line 2686
    const/4 v4, 0x0

    .line 2688
    .local v4, "runCount":I
    invoke-static {p0, p1, p2}, Lcom/oppo/widget/OppoDragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2689
    .local v2, "i":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 2733
    :goto_0
    return v5

    .line 2693
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2694
    .local v3, "position":I
    move v1, v3

    .line 2695
    .local v1, "currentRunStart":I
    add-int/lit8 v0, v1, 0x1

    .line 2696
    .local v0, "currentRunEnd":I
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p2, :cond_3

    .line 2697
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2696
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2701
    :cond_1
    if-ne v3, v0, :cond_2

    .line 2702
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2704
    :cond_2
    aput v1, p3, v4

    .line 2705
    aput v0, p4, v4

    .line 2706
    add-int/lit8 v4, v4, 0x1

    .line 2707
    move v1, v3

    .line 2708
    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    .line 2712
    :cond_3
    if-ne v0, p2, :cond_4

    .line 2717
    move v0, p1

    .line 2719
    :cond_4
    aput v1, p3, v4

    .line 2720
    aput v0, p4, v4

    .line 2721
    add-int/lit8 v4, v4, 0x1

    .line 2723
    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    .line 2724
    aget v6, p3, v5

    if-ne v6, p1, :cond_5

    add-int/lit8 v6, v4, -0x1

    aget v6, p4, v6

    if-ne v6, p1, :cond_5

    .line 2729
    add-int/lit8 v6, v4, -0x1

    aget v6, p3, v6

    aput v6, p3, v5

    .line 2730
    add-int/lit8 v4, v4, -0x1

    :cond_5
    move v5, v4

    .line 2733
    goto :goto_0
.end method

.method private calcItemHeight(II)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 2012
    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mAnimate:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-eq v4, v5, :cond_0

    const/4 v1, 0x1

    .line 2013
    .local v1, "isSliding":Z
    :goto_0
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    sub-int v2, v4, v5

    .line 2014
    .local v2, "maxNonSrcBlankHeight":I
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 2018
    .local v3, "slideHeight":I
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_4

    .line 2019
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-ne v4, v5, :cond_2

    .line 2020
    if-eqz v1, :cond_1

    .line 2021
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    add-int v0, v3, v4

    .line 2044
    .local v0, "height":I
    :goto_1
    return v0

    .line 2012
    .end local v0    # "height":I
    .end local v1    # "isSliding":Z
    .end local v2    # "maxNonSrcBlankHeight":I
    .end local v3    # "slideHeight":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2023
    .restart local v1    # "isSliding":Z
    .restart local v2    # "maxNonSrcBlankHeight":I
    .restart local v3    # "slideHeight":I
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 2025
    .end local v0    # "height":I
    :cond_2
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne v4, v5, :cond_3

    .line 2027
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2029
    .end local v0    # "height":I
    :cond_3
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 2031
    .end local v0    # "height":I
    :cond_4
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-ne p1, v4, :cond_6

    .line 2032
    if-eqz v1, :cond_5

    .line 2033
    add-int v0, p2, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2035
    .end local v0    # "height":I
    :cond_5
    add-int v0, p2, v2

    .restart local v0    # "height":I
    goto :goto_1

    .line 2037
    .end local v0    # "height":I
    :cond_6
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_7

    .line 2039
    add-int v4, p2, v2

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2041
    .end local v0    # "height":I
    :cond_7
    move v0, p2

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 2006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSlideState:Z

    .line 2007
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoDragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1458
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    .line 1459
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1460
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 1461
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    .line 1462
    return-void
.end method

.method private computeIsWillDrag(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 1580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 1581
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 1583
    .local v5, "y":I
    invoke-virtual {p0, v4, v5}, Lcom/oppo/widget/OppoDragSortListView;->pointToPosition(II)I

    move-result v2

    .line 1585
    .local v2, "itemnum":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1586
    .local v1, "item":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 1587
    const-string v6, "drag_view"

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1588
    .local v0, "dragger":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1589
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1590
    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-le v4, v6, :cond_0

    .line 1591
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    .line 1598
    .end local v0    # "dragger":Landroid/view/View;
    .end local v3    # "r":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 1593
    .restart local v0    # "dragger":Landroid/view/View;
    .restart local v3    # "r":Landroid/graphics/Rect;
    :cond_0
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    goto :goto_0

    .line 1596
    .end local v0    # "dragger":Landroid/view/View;
    .end local v3    # "r":Landroid/graphics/Rect;
    :cond_1
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    goto :goto_0
.end method

.method private continueDrag(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1793
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1794
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1796
    invoke-direct {p0, v5}, Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(Z)V

    .line 1798
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1799
    .local v2, "minY":I
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1802
    .local v1, "maxY":I
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1804
    .local v0, "currentScrollDir":I
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1808
    if-eq v0, v6, :cond_0

    .line 1810
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1814
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->startScrolling(I)V

    .line 1833
    :cond_1
    :goto_0
    return-void

    .line 1815
    :cond_2
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1819
    if-eq v0, v6, :cond_3

    .line 1821
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1825
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1826
    :cond_4
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1831
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2421
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2422
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2423
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2425
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    .line 2426
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->invalidate()V

    .line 2428
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1653
    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    .line 1654
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    .line 1655
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1656
    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1658
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    .line 1659
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mListViewIntercepted:Z

    .line 1660
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mChildHeightCache:Lcom/oppo/widget/OppoDragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDragSortListView$HeightCache;->clear()V

    .line 1661
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    .line 1662
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    .line 2329
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z

    .line 2331
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->updateFloatView()V

    .line 2333
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 2334
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 2336
    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->updatePositions()Z

    move-result v3

    .line 2338
    .local v3, "updated":Z
    if-eqz v3, :cond_0

    .line 2339
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->adjustAllItems()V

    .line 2340
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 2343
    .local v2, "scroll":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/oppo/widget/OppoDragSortListView;->setSelectionFromTop(II)V

    .line 2344
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->layoutChildren()V

    .line 2347
    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2348
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->invalidate()V

    .line 2351
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z

    .line 2352
    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    .line 2318
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2319
    .local v1, "movePos":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2321
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2326
    :goto_0
    return-void

    .line 2325
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/oppo/widget/OppoDragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1489
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoDragSortListView;->doRemoveItem(I)V

    .line 1490
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1498
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1501
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveListener:Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveListener:Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoDragSortListView$RemoveListener;->remove(I)V

    .line 1505
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->destroyFloatView()V

    .line 1507
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->adjustOnReorder()V

    .line 1508
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->clearPositions()V

    .line 1511
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1512
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1516
    :goto_0
    return-void

    .line 1514
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 735
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getDividerHeight()I

    move-result v3

    .line 738
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 741
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingLeft()I

    move-result v5

    .line 743
    .local v5, "l":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 747
    .local v6, "r":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 749
    .local v1, "childHeight":I
    iget v8, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 750
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 751
    .local v7, "t":I
    add-int v0, v7, v3

    .line 759
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 760
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 761
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 762
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 763
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 766
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 753
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 754
    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1467
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1469
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1470
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1471
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/oppo/widget/OppoDragSortListView$DropListener;->drop(II)V

    .line 1474
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->destroyFloatView()V

    .line 1476
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->adjustOnReorder()V

    .line 1477
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->clearPositions()V

    .line 1478
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->adjustAllItems()V

    .line 1481
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1482
    const/4 v1, 0x3

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1486
    :goto_0
    return-void

    .line 1484
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I

    .prologue
    .line 2749
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2750
    .local v1, "size":I
    invoke-static {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2751
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2754
    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 2755
    :cond_1
    const/4 v0, -0x1

    .line 2757
    .end local v0    # "i":I
    :cond_2
    return v0
.end method

.method private getChildHeight(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1925
    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_1

    .line 1971
    :cond_0
    :goto_0
    return v1

    .line 1929
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1931
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1934
    invoke-direct {p0, p1, v4, v1}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1938
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mChildHeightCache:Lcom/oppo/widget/OppoDragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lcom/oppo/widget/OppoDragSortListView$HeightCache;->get(I)I

    move-result v1

    .line 1939
    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1944
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1945
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1948
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1949
    .local v3, "typeCount":I
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1950
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1953
    :cond_3
    if-ltz v2, :cond_5

    .line 1954
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1955
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1956
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1966
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1969
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mChildHeightCache:Lcom/oppo/widget/OppoDragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/oppo/widget/OppoDragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1958
    :cond_4
    iget-object v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1962
    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1976
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_1

    .line 2002
    .end local p2    # "item":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1981
    .restart local p2    # "item":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 1982
    :cond_2
    move-object v0, p2

    .line 1987
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1989
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 1990
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 1991
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1984
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_1

    .line 1995
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1997
    .local v1, "childHeight":I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 1998
    :cond_5
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoDragSortListView;->measureItem(Landroid/view/View;)V

    .line 1999
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 819
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 825
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoDragSortListView;->calcItemHeight(II)I

    move-result v1

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 889
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 895
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 940
    :goto_0
    return v3

    .line 899
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getDividerHeight()I

    move-result v2

    .line 903
    .local v2, "divHeight":I
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 904
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I

    move-result v1

    .line 905
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->getItemHeight(I)I

    move-result v4

    .line 909
    .local v4, "itemHeight":I
    move v8, p2

    .line 910
    .local v8, "otop":I
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 912
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 913
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 914
    add-int v9, p2, v4

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 934
    :cond_2
    :goto_1
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 935
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/oppo/widget/OppoDragSortListView;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .local v3, "edge":I
    goto :goto_0

    .line 916
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 917
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 918
    goto :goto_1

    .line 919
    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 920
    sub-int v8, p2, v5

    goto :goto_1

    .line 925
    :cond_5
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 926
    add-int v8, p2, v5

    goto :goto_1

    .line 927
    :cond_6
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 928
    sub-int v0, v4, v1

    .line 929
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_1

    .line 937
    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_0
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "key"    # I

    .prologue
    .line 2761
    const/4 v1, 0x0

    .line 2762
    .local v1, "low":I
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2763
    .local v0, "high":I
    :goto_0
    sub-int v3, v0, v1

    if-lez v3, :cond_1

    .line 2764
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 2765
    .local v2, "middle":I
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 2766
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 2768
    :cond_0
    move v0, v2

    goto :goto_0

    .line 2771
    .end local v2    # "middle":I
    :cond_1
    return v1
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoDragSortListView;->measureItem(Landroid/view/View;)V

    .line 2118
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    .line 2119
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I

    .line 2121
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 2098
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2099
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 2100
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2102
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2104
    :cond_0
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 2107
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 2108
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2112
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 2113
    return-void

    .line 2110
    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method private static rotate(IIII)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "offset"    # I
    .param p2, "lowerBound"    # I
    .param p3, "upperBound"    # I

    .prologue
    .line 2737
    sub-int v0, p3, p2

    .line 2739
    .local v0, "windowSize":I
    add-int/2addr p0, p1

    .line 2740
    if-ge p0, p2, :cond_1

    .line 2741
    add-int/2addr p0, v0

    .line 2745
    :cond_0
    :goto_0
    return p0

    .line 2742
    :cond_1
    if-lt p0, p3, :cond_0

    .line 2743
    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1665
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1666
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1673
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastY:I

    .line 1675
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mX:I

    .line 1676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    .line 1677
    if-nez v0, :cond_1

    .line 1684
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastY:I

    .line 1693
    :cond_1
    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    .line 2359
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    .line 2360
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mX:I

    iget v11, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2361
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    iget-object v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/oppo/widget/OppoDragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2364
    :cond_0
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2365
    .local v2, "floatX":I
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2368
    .local v3, "floatY":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2369
    .local v7, "padLeft":I
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2370
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2376
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2377
    .local v6, "numHeaders":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2378
    .local v5, "numFooters":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2379
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2383
    .local v4, "lastPos":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingTop()I

    move-result v8

    .line 2384
    .local v8, "topLimit":I
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    if-ge v1, v6, :cond_2

    .line 2385
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2387
    :cond_2
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2388
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    .line 2389
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2394
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2395
    .local v0, "bottomLimit":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2397
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2399
    :cond_4
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2400
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    .line 2401
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2409
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2410
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2416
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    .line 2417
    return-void

    .line 2371
    .end local v0    # "bottomLimit":I
    .end local v1    # "firstPos":I
    .end local v4    # "lastPos":I
    .end local v5    # "numFooters":I
    .end local v6    # "numHeaders":I
    .end local v8    # "topLimit":I
    :cond_7
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    .line 2372
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2411
    .restart local v0    # "bottomLimit":I
    .restart local v1    # "firstPos":I
    .restart local v4    # "lastPos":I
    .restart local v5    # "numFooters":I
    .restart local v6    # "numHeaders":I
    .restart local v8    # "topLimit":I
    :cond_8
    iget v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    .line 2412
    iget-object v9, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 945
    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 946
    .local v23, "startPos":I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 948
    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 950
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 952
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 954
    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 956
    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoDragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 957
    .local v5, "edge":I
    move v13, v5

    .line 959
    .local v13, "lastEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getDividerHeight()I

    move-result v4

    .line 963
    .local v4, "divHeight":I
    move/from16 v11, v23

    .line 964
    .local v11, "itemPos":I
    move/from16 v12, v24

    .line 965
    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 968
    :goto_0
    if-ltz v11, :cond_1

    .line 969
    add-int/lit8 v11, v11, -0x1

    .line 970
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/oppo/widget/OppoDragSortListView;->getItemHeight(I)I

    move-result v10

    .line 972
    if-nez v11, :cond_7

    .line 973
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 1012
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 1013
    .local v15, "numHeaders":I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 1015
    .local v14, "numFooters":I
    const/16 v26, 0x0

    .line 1017
    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 1018
    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 1019
    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 1021
    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 1022
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1025
    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 1026
    move v6, v5

    .line 1027
    .local v6, "edgeBottom":I
    move v8, v13

    .line 1034
    .local v8, "edgeTop":I
    :goto_2
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideRegionFrac:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1035
    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1036
    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .line 1037
    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .line 1040
    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 1041
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1042
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 1043
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    .line 1064
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 1065
    move v11, v15

    .line 1066
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1067
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 1074
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    .line 1076
    :cond_3
    const/16 v26, 0x1

    .line 1079
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragListener:Lcom/oppo/widget/OppoDragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mDragListener:Lcom/oppo/widget/OppoDragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/oppo/widget/OppoDragSortListView$DragListener;->drag(II)V

    .line 1084
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    .line 1085
    const/16 v26, 0x1

    .line 1088
    :cond_6
    return v26

    .line 977
    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 978
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/oppo/widget/OppoDragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 981
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 985
    move v13, v5

    goto/16 :goto_0

    .line 990
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v3

    .line 991
    .local v3, "count":I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 992
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 993
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 994
    goto/16 :goto_1

    .line 997
    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 998
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->getItemHeight(I)I

    move-result v10

    .line 999
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/oppo/widget/OppoDragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1003
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 1007
    move v13, v5

    .line 1008
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1029
    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_a
    move v8, v5

    .line 1030
    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .line 1046
    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 1047
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1048
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1050
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1051
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 1052
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewMid:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoDragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 1059
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1060
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1068
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 1069
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoDragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 1070
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1071
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    goto/16 :goto_4
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1836
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingTop()I

    move-result v2

    .line 1837
    .local v2, "padTop":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1838
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1840
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartYF:F

    .line 1841
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartYF:F

    .line 1843
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartY:I

    .line 1844
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartY:I

    .line 1846
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollHeight:F

    .line 1847
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollHeight:F

    .line 1848
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1443
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1445
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->destroyFloatView()V

    .line 1446
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->clearPositions()V

    .line 1447
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->adjustAllItems()V

    .line 1449
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1450
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1455
    :cond_0
    :goto_0
    return-void

    .line 1452
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 2796
    const-string v1, "DragListItem"

    const-string v2, "computeScroll -------------------------------- [^ ^]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    invoke-super {p0}, Lcom/oppo/widget/OppoListView;->computeScroll()V

    .line 2798
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 2799
    .local v0, "currentScrollDir":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2800
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->run()V

    .line 2802
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 770
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 772
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 774
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 775
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoDragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 777
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 778
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoDragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 784
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 785
    .local v9, "w":I
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 787
    .local v8, "h":I
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 789
    .local v11, "x":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getWidth()I

    move-result v10

    .line 790
    .local v10, "width":I
    if-gez v11, :cond_2

    .line 791
    neg-int v11, v11

    .line 794
    :cond_2
    if-ge v11, v10, :cond_4

    .line 795
    sub-int v0, v10, v11

    int-to-float v0, v0

    int-to-float v2, v10

    div-float v7, v0, v2

    .line 796
    .local v7, "alphaMod":F
    mul-float/2addr v7, v7

    .line 801
    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    float-to-int v5, v0

    .line 803
    .local v5, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 805
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 806
    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 809
    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 810
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 811
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 812
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 814
    .end local v5    # "alpha":I
    .end local v7    # "alphaMod":F
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v10    # "width":I
    .end local v11    # "x":I
    :cond_3
    return-void

    .line 798
    .restart local v8    # "h":I
    .restart local v9    # "w":I
    .restart local v10    # "width":I
    .restart local v11    # "x":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "alphaMod":F
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 618
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2493
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2138
    invoke-super {p0}, Lcom/oppo/widget/OppoListView;->layoutChildren()V

    .line 2139
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    if-eqz v0, :cond_0

    .line 2140
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    .line 2142
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2143
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_1

    .line 2147
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->measureFloatView()V

    .line 2149
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2150
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewOnMeasured:Z

    .line 2152
    :cond_2
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1696
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2619
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2620
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    move v3, p1

    .line 2621
    .local v3, "rangeStart":I
    move v2, p2

    .line 2622
    .local v2, "rangeEnd":I
    if-ge p2, p1, :cond_0

    .line 2623
    move v3, p2

    .line 2624
    move v2, p1

    .line 2626
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 2628
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2629
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2630
    .local v5, "runEnd":[I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/oppo/widget/OppoDragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2631
    .local v4, "runCount":I
    if-ne v4, v10, :cond_2

    aget v7, v6, v9

    aget v8, v5, v9

    if-ne v7, v8, :cond_2

    .line 2649
    :cond_1
    return-void

    .line 2637
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2638
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_1

    .line 2639
    aget v7, v6, v1

    invoke-static {v7, v11, v3, v2}, Lcom/oppo/widget/OppoDragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v10}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2640
    aget v7, v5, v1

    invoke-static {v7, v11, v3, v2}, Lcom/oppo/widget/OppoDragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2644
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-eq v1, v4, :cond_1

    .line 2645
    aget v7, v6, v1

    invoke-virtual {p0, v7, v9}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2646
    aget v7, v5, v1

    invoke-virtual {p0, v7, v10}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2644
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public moveItem(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1430
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

    if-eqz v1, :cond_0

    .line 1431
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1432
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1433
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

    invoke-interface {v1, p1, p2}, Lcom/oppo/widget/OppoDragSortListView$DropListener;->drop(II)V

    .line 1436
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x4

    .line 2157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2176
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2159
    :pswitch_0
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-ne v0, v1, :cond_0

    .line 2160
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->cancelDrag()V

    .line 2162
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2166
    :pswitch_1
    iget v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-ne v0, v1, :cond_1

    .line 2167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDragSortListView;->stopDrag(Z)Z

    .line 2169
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2172
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoDragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1093
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1095
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragSortTracker:Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->appendState()V

    .line 1098
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1703
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->computeIsWillDrag(Landroid/view/MotionEvent;)V

    .line 1705
    iget-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    if-nez v3, :cond_2

    .line 1706
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1753
    :cond_1
    :goto_0
    return v1

    .line 1709
    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1710
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastCallWasIntercept:Z

    .line 1712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1714
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 1715
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-eqz v3, :cond_3

    .line 1717
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mIgnoreTouchEvent:Z

    move v1, v2

    .line 1718
    goto :goto_0

    .line 1720
    :cond_3
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    .line 1723
    :cond_4
    const/4 v1, 0x0

    .line 1726
    .local v1, "intercept":Z
    iget-object v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 1728
    const/4 v1, 0x1

    .line 1749
    :goto_1
    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1750
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    goto :goto_0

    .line 1730
    :cond_6
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1731
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mListViewIntercepted:Z

    .line 1732
    const/4 v1, 0x1

    .line 1735
    :cond_7
    packed-switch v0, :pswitch_data_0

    .line 1741
    :pswitch_0
    if-eqz v1, :cond_8

    .line 1742
    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1738
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1744
    :cond_8
    const/4 v3, 0x2

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1735
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2125
    invoke-super {p0, p1, p2}, Lcom/oppo/widget/OppoListView;->onMeasure(II)V

    .line 2127
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2129
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->measureFloatView()V

    .line 2131
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewOnMeasured:Z

    .line 2133
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mWidthMeasureSpec:I

    .line 2134
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1852
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoListView;->onSizeChanged(IIII)V

    .line 1853
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->updateScrollStarts()V

    .line 1854
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1602
    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v4, :cond_1

    .line 1603
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mIgnoreTouchEvent:Z

    move v2, v3

    .line 1649
    :cond_0
    :goto_0
    return v2

    .line 1607
    :cond_1
    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mIsWillDrag:Z

    if-nez v4, :cond_3

    .line 1608
    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1611
    :cond_3
    const/4 v2, 0x0

    .line 1613
    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastCallWasIntercept:Z

    .line 1614
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mLastCallWasIntercept:Z

    .line 1616
    if-nez v1, :cond_4

    .line 1617
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1621
    :cond_4
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1622
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1623
    const/4 v2, 0x1

    goto :goto_0

    .line 1629
    :cond_5
    iget v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-nez v3, :cond_6

    .line 1630
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1631
    const/4 v2, 0x1

    .line 1635
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1637
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1643
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1644
    const/4 v3, 0x1

    iput v3, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1640
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, -0x1

    .line 2663
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2665
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2682
    :cond_0
    return-void

    .line 2668
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2669
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2670
    .local v5, "runEnd":[I
    move v3, p1

    .line 2671
    .local v3, "rangeStart":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 2672
    .local v2, "rangeEnd":I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/oppo/widget/OppoDragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2673
    .local v4, "runCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_0

    .line 2674
    aget v7, v6, v1

    if-eq v7, p1, :cond_3

    aget v7, v5, v1

    aget v8, v6, v1

    if-ge v7, v8, :cond_2

    aget v7, v5, v1

    if-gt v7, p1, :cond_3

    .line 2678
    :cond_2
    aget v7, v6, v1

    invoke-static {v7, v9, v3, v2}, Lcom/oppo/widget/OppoDragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2680
    :cond_3
    aget v7, v5, v1

    invoke-static {v7, v9, v3, v2}, Lcom/oppo/widget/OppoDragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/oppo/widget/OppoDragSortListView;->setItemChecked(IZ)V

    .line 2673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mUseRemoveVelocity:Z

    .line 1373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoDragSortListView;->removeItem(IF)V

    .line 1374
    return-void
.end method

.method public removeItem(IF)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "velocityX"    # F

    .prologue
    const/4 v3, 0x4

    .line 1384
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    .line 1386
    :cond_0
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-nez v1, :cond_1

    .line 1388
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    .line 1389
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 1390
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 1391
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    .line 1392
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1393
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1394
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 1399
    iput p2, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveVelocityX:F

    .line 1401
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    .line 1402
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1412
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveAnimator:Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    .line 1413
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveAnimator:Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDragSortListView$RemoveAnimator;->start()V

    .line 1418
    :cond_3
    :goto_1
    return-void

    .line 1404
    :pswitch_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Lcom/oppo/widget/OppoListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1407
    :pswitch_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Lcom/oppo/widget/OppoListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1415
    :cond_4
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2049
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2050
    invoke-super {p0}, Lcom/oppo/widget/OppoListView;->requestLayout()V

    .line 2052
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 57
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 579
    if-eqz p1, :cond_4

    .line 580
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :cond_0
    :goto_0
    new-instance v1, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;-><init>(Lcom/oppo/widget/OppoDragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    .line 589
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 591
    instance-of v1, p1, Lcom/oppo/widget/OppoDragSortListView$DropListener;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 592
    check-cast v1, Lcom/oppo/widget/OppoDragSortListView$DropListener;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortListView;->setDropListener(Lcom/oppo/widget/OppoDragSortListView$DropListener;)V

    .line 594
    :cond_1
    instance-of v1, p1, Lcom/oppo/widget/OppoDragSortListView$DragListener;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 595
    check-cast v1, Lcom/oppo/widget/OppoDragSortListView$DragListener;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortListView;->setDragListener(Lcom/oppo/widget/OppoDragSortListView$DragListener;)V

    .line 597
    :cond_2
    instance-of v1, p1, Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

    if-eqz v1, :cond_3

    .line 598
    check-cast p1, Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->setRemoveListener(Lcom/oppo/widget/OppoDragSortListView$RemoveListener;)V

    .line 604
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    invoke-super {p0, v1}, Lcom/oppo/widget/OppoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 605
    return-void

    .line 583
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OppoDragSortListView"

    const-string v2, "observer is not register"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mAdapterWrapper:Lcom/oppo/widget/OppoDragSortListView$AdapterWrapper;

    goto :goto_1
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2489
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    .line 2490
    return-void
.end method

.method public setDragListener(Lcom/oppo/widget/OppoDragSortListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oppo/widget/OppoDragSortListView$DragListener;

    .prologue
    .line 2478
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragListener:Lcom/oppo/widget/OppoDragSortListView$DragListener;

    .line 2479
    return-void
.end method

.method public setDragScrollProfile(Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;)V
    .locals 0
    .param p1, "ssp"    # Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

    .prologue
    .line 2566
    if-eqz p1, :cond_0

    .line 2567
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mScrollProfile:Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;

    .line 2569
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    .line 1763
    invoke-virtual {p0, p1, p1}, Lcom/oppo/widget/OppoDragSortListView;->setDragScrollStarts(FF)V

    .line 1764
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1774
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1775
    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollStartFrac:F

    .line 1780
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1781
    iput v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollStartFrac:F

    .line 1786
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1787
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->updateScrollStarts()V

    .line 1789
    :cond_0
    return-void

    .line 1777
    :cond_1
    iput p2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1783
    :cond_2
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/oppo/widget/OppoDragSortListView$DragSortListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oppo/widget/OppoDragSortListView$DragSortListener;

    .prologue
    .line 2553
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->setDropListener(Lcom/oppo/widget/OppoDragSortListView$DropListener;)V

    .line 2554
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->setDragListener(Lcom/oppo/widget/OppoDragSortListView$DragListener;)V

    .line 2555
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDragSortListView;->setRemoveListener(Lcom/oppo/widget/OppoDragSortListView$RemoveListener;)V

    .line 2556
    return-void
.end method

.method public setDropListener(Lcom/oppo/widget/OppoDragSortListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oppo/widget/OppoDragSortListView$DropListener;

    .prologue
    .line 2506
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropListener:Lcom/oppo/widget/OppoDragSortListView$DropListener;

    .line 2507
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 552
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mCurrFloatAlpha:F

    .line 553
    return-void
.end method

.method public setFloatViewManager(Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    .prologue
    .line 2474
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    .line 2475
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 566
    iput p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mMaxScrollSpeed:F

    .line 567
    return-void
.end method

.method public setRemoveListener(Lcom/oppo/widget/OppoDragSortListView$RemoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

    .prologue
    .line 2518
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView;->mRemoveListener:Lcom/oppo/widget/OppoDragSortListView$RemoveListener;

    .line 2519
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v0, 0x0

    .line 2210
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2219
    :cond_0
    :goto_0
    return v0

    .line 2214
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatViewManager:Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2216
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2219
    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoDragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2243
    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mInTouchEvent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_1

    .line 2314
    :cond_0
    :goto_0
    return v2

    .line 2248
    :cond_1
    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mSlideState:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    if-eqz v4, :cond_2

    .line 2249
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSlideState:Z

    goto :goto_0

    .line 2253
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2254
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2257
    :cond_3
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mStopAndWaitLayout:Z

    .line 2258
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSlideState:Z

    .line 2259
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 2260
    .local v0, "pos":I
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFirstExpPos:I

    .line 2261
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSecondExpPos:I

    .line 2262
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    .line 2263
    iput v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatPos:I

    .line 2266
    iput v6, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragState:I

    .line 2267
    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    .line 2268
    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    or-int/2addr v2, p3

    iput v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragFlags:I

    .line 2270
    iput-object p2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    .line 2271
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->measureFloatView()V

    .line 2273
    iput p4, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaX:I

    .line 2274
    iput p5, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I

    .line 2283
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mX:I

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaX:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 2284
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/oppo/widget/OppoDragSortListView;->mY:I

    iget v5, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragDeltaY:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 2287
    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoDragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2289
    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2290
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2293
    :cond_4
    iget-boolean v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    if-eqz v2, :cond_5

    .line 2294
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragSortTracker:Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->startTracking()V

    .line 2299
    :cond_5
    iget v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelMethod:I

    packed-switch v2, :pswitch_data_0

    .line 2308
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->requestLayout()V

    .line 2310
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mLiftAnimator:Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;

    if-eqz v2, :cond_6

    .line 2311
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mLiftAnimator:Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDragSortListView$LiftAnimator;->start()V

    :cond_6
    move v2, v3

    .line 2314
    goto :goto_0

    .line 2301
    :pswitch_0
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Lcom/oppo/widget/OppoListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2304
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/widget/OppoDragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Lcom/oppo/widget/OppoListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1
    .param p1, "remove"    # Z

    .prologue
    .line 1544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mUseRemoveVelocity:Z

    .line 1545
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoDragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 3
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    const/4 v0, 0x1

    .line 1555
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1556
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragScroller:Lcom/oppo/widget/OppoDragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcom/oppo/widget/OppoDragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1558
    if-eqz p1, :cond_1

    .line 1559
    iget v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/oppo/widget/OppoDragSortListView;->removeItem(IF)V

    .line 1568
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDragSortTracker:Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDragSortListView$DragSortTracker;->stopTracking()V

    .line 1575
    :cond_0
    :goto_1
    return v0

    .line 1561
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropAnimator:Lcom/oppo/widget/OppoDragSortListView$DropAnimator;

    if-eqz v1, :cond_2

    .line 1562
    iget-object v1, p0, Lcom/oppo/widget/OppoDragSortListView;->mDropAnimator:Lcom/oppo/widget/OppoDragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1564
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoDragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1575
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    .line 1550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoDragSortListView;->mUseRemoveVelocity:Z

    .line 1551
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoDragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
