.class public Lcom/oppo/widget/Oppo3DScenePreView;
.super Landroid/opengl/GLSurfaceView;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Lcom/oppo/widget/OppoSceneScroller$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/Oppo3DScenePreView$21;,
        Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;,
        Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;,
        Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;,
        Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;,
        Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;,
        Lcom/oppo/widget/Oppo3DScenePreView$ModelType;,
        Lcom/oppo/widget/Oppo3DScenePreView$TextureListener;,
        Lcom/oppo/widget/Oppo3DScenePreView$OnLongClickListener;,
        Lcom/oppo/widget/Oppo3DScenePreView$OnItemClickListener;,
        Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;
    }
.end annotation


# static fields
.field protected static BACK_ITEM_SPACE_X:F = 0.0f

.field protected static final DEFAULT_CENTER_OFFSET:F = 0.0f

.field protected static final DEFAULT_FRAME_RADIO:F = 0.0f

.field protected static final DEFAULT_MODEL_TYPE:I = 0x0

.field protected static final DEFAULT_SHADOW_HEIGHT:F = 0.5f

.field protected static final DRAW_LOG:Z = false

.field protected static final ENABLE_LIGHT:Z = false

.field protected static final EVENT_LOG:Z = false

.field public static final FRAME_MODE_3:I = 0x0

.field protected static final FRAME_MODE_3_END_ARRAY_INDEX:I = 0x6

.field protected static final FRAME_MODE_3_END_DRAW_INDEX:I = 0x7

.field protected static final FRAME_MODE_3_ITEM_IN_SIDE:I = 0x2

.field protected static final FRAME_MODE_3_START_ARRAY_INDEX:I = 0x3

.field protected static final FRAME_MODE_3_START_DRAW_INDEX:I = 0x2

.field public static final FRAME_MODE_5:I = 0x1

.field protected static final FRAME_MODE_5_END_ARRAY_INDEX:I = 0x7

.field protected static final FRAME_MODE_5_END_DRAW_INDEX:I = 0x8

.field protected static final FRAME_MODE_5_ITEM_IN_SIDE:I = 0x3

.field protected static final FRAME_MODE_5_START_ARRAY_INDEX:I = 0x2

.field protected static final FRAME_MODE_5_START_DRAW_INDEX:I = 0x1

.field public static final FRAME_MODE_7:I = 0x2

.field protected static final FRAME_MODE_7_END_ARRAY_INDEX:I = 0x8

.field protected static final FRAME_MODE_7_END_DRAW_INDEX:I = 0x9

.field protected static final FRAME_MODE_7_ITEM_IN_SIDE:I = 0x4

.field protected static final FRAME_MODE_7_START_ARRAY_INDEX:I = 0x1

.field protected static final FRAME_MODE_7_START_DRAW_INDEX:I = 0x0

.field public static FRONT_BACK_ITEM_SPACE_Z:F = 0.0f

.field protected static final FRONT_CHANGE_MAX_OFFSET:F = 0.6f

.field protected static final FRONT_CHANGE_MIN_OFFSET:F = 0.4f

.field protected static final FRONT_CHANGE_OFFSET:F = 0.5f

.field protected static final FRONT_ITEM_INDEX:I = 0x4

.field protected static FRONT_LEFT_X:F = 0.0f

.field protected static FRONT_RIGHT_X:F = 0.0f

.field protected static final INVALID_MOTION_ITEM:I = -0x1

.field public static ITEM_HEIGHT:F = 0.0f

.field protected static final ITEM_IN_SIDE:I = 0x4

.field public static ITEM_WIDTH:F = 0.0f

.field protected static ITEM_X_ARRAY:[F = null

.field protected static KEY_FRAME_ARRAY:[F = null

.field protected static final LISTENER_LOG:Z = false

.field protected static final LIST_ITEM_NUM:I = 0x9

.field private static final LOGD:Z = false

.field protected static MAX_Y:F = 0.0f

.field protected static final MIN_SPRING_DIS:I = 0x10

.field protected static MIN_Y:F = 0.0f

.field protected static final MODEL_DATA_LOG:Z = false

.field protected static final MODEL_FRAME_ABSOLUTE_ERROR:F = 0.05f

.field protected static final MODEL_KEY_FRAME_STEP:I = 0x7

.field protected static final MODEL_MODIFY_TRANS_Z:F = -0.05f

.field protected static final MODEL_REGION_FRAME:I = 0x1c

.field protected static final MUSIC_DEFAULT_OFFSET:F = 0.14f

.field protected static final PROGRESS_LOG:Z = false

.field protected static final RENDERMODE_DIRTY:Z = true

.field protected static final SCROLL_FAST_1_STEP:F = 0.25f

.field protected static final SCROLL_FAST_2_STEP:F = 0.5f

.field protected static final SCROLL_FAST_3_STEP:F = 0.75f

.field protected static final SCROLL_FAST_STEP_NUM:F = 4.0f

.field protected static final SCROLL_FAST_VELOCITY:I = 0x32

.field protected static final SCROLL_FLING_VELOCITY:I = 0x32

.field protected static final SCROLL_LOG:Z = false

.field protected static final SCROLL_MAX_VELOCITY:I = 0x1388

.field protected static final SCROLL_NORMAL_STEP:F = 0.2f

.field protected static final SCROLL_PER_ITEM_VELOCITY:I = 0x258

.field protected static final SCROLL_START_OFFSET:F = 0.2f

.field protected static final SCROLL_STATUS_FAST_ON:I = 0x8

.field protected static final SCROLL_STATUS_IGNORE_TOUNCH:I = 0x40

.field protected static final SCROLL_STATUS_PROGRESS:I = 0x20

.field protected static final SCROLL_STATUS_RESET:I = 0x0

.field protected static final SCROLL_STATUS_SPRING:I = 0x4

.field protected static final SCROLL_STATUS_TRACKING:I = 0x1

.field protected static final SCROLL_STATUS_TRACK_FLING:I = 0x2

.field protected static final SCROLL_STATUS_ZOOM_IN:I = 0x10

.field protected static final SCROLL_TAP_FAST_STEP:F = 0.5f

.field protected static final SCROLL_TAP_NORMAL_STEP:F = 0.1f

.field protected static final SCROLL_TAP_STEP:F = 0.2f

.field protected static final SCROLL_TYPE_FLING:I = 0x3

.field protected static final SCROLL_TYPE_RESET:I = 0x0

.field protected static final SCROLL_TYPE_SPRING:I = 0x4

.field protected static final SCROLL_TYPE_TAP:I = 0x1

.field protected static final SCROLL_TYPE_TRACK:I = 0x2

.field protected static final SCROLL_TYPE_ZOOM_IN:I = 0x5

.field protected static final SCROLL_TYPE_ZOOM_OUT:I = 0x6

.field protected static final SCROLL_ZOOM_STEP:F = 0.2f

.field protected static final SHADOW_ALPHA:F = 1.0f

.field protected static final SHADOW_COLOR:F = 0.5f

.field protected static final SMOOTH_SHADOW:Z = true

.field protected static final SPRING_DURATION:I = 0x3e8

.field protected static final SPRING_FLING_MIN_COUNT:I = 0x2

.field protected static final SPRING_MAX_RATE:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "Oppo3DScenePreView"

.field protected static final TEXTURE_BUFFER_LEN:I = 0x1e

.field protected static final TEX_SCALE_SIZE:I = 0x80

.field protected static final TOUCH_SLOP:I = 0x10

.field protected static final TRACK_SPRING_RATE:F = 0.3f

.field protected static final UPDATE_LOG:Z


# instance fields
.field protected mBindingTexture:Landroid/graphics/Bitmap;

.field protected mCancelRunnable:Ljava/lang/Runnable;

.field protected mCenterOffset:F

.field protected mContext:Landroid/content/Context;

.field protected mCurItem:I

.field protected mDefaultTexId:I

.field protected mDefaultTexture:Landroid/graphics/Bitmap;

.field protected mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

.field protected mFastMoveRunnable:Ljava/lang/Runnable;

.field protected mFingVelocity:I

.field protected mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

.field protected mFlingRunnable:Ljava/lang/Runnable;

.field protected mFrameRadio:F

.field protected mFrontZ:F

.field protected mGlChanged:Z

.field protected mItemChangedRunnable:Ljava/lang/Runnable;

.field protected mItemClickRunnable:Ljava/lang/Runnable;

.field protected mLargeDistance:F

.field protected mLastSpringX:I

.field protected mLastX:I

.field protected mMatModel:Lcom/oppo/model/lib/Matrix4f;

.field protected mMatProject:Lcom/oppo/model/lib/Matrix4f;

.field protected mMatView:Lcom/oppo/model/lib/Matrix4f;

.field protected mMatrixProjectArray:[F

.field protected mModel:Lcom/oppo/model/md2/MdModel;

.field protected mModelHeight:F

.field protected mModelName:Ljava/lang/String;

.field protected mModelType:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

.field protected mModelWidth:F

.field protected mModelZ:F

.field protected mMotionItem:I

.field protected mMotionX:I

.field protected mMotionY:I

.field protected mNormalDistance:F

.field protected mOffset:F

.field protected mOnItemClickListener:Lcom/oppo/widget/Oppo3DScenePreView$OnItemClickListener;

.field protected mOnLongClickListener:Lcom/oppo/widget/Oppo3DScenePreView$OnLongClickListener;

.field protected mOnScrollBarListener:Lcom/oppo/widget/OppoSceneScroller$OnScrollBarListener;

.field protected mOnScrollListener:Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;

.field protected mPerformLongPress:Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;

.field protected mPressHandled:Z

.field protected mProgress:F

.field protected mProgressChangeRunnable:Ljava/lang/Runnable;

.field protected mProgressEndRunnable:Ljava/lang/Runnable;

.field protected mProgressStartRunnable:Ljava/lang/Runnable;

.field protected mRecycleTexture:Z

.field private mRenderer:Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;

.field protected mScrollCompleteRunnable:Ljava/lang/Runnable;

.field protected mScrollFrameMode:I

.field protected mScrollStartRunnable:Ljava/lang/Runnable;

.field protected mScrollStatus:I

.field protected mScrollStep:I

.field protected mScrollType:I

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSetItemRunnable:Ljava/lang/Runnable;

.field protected mShadowHeight:F

.field protected mSpringX:I

.field protected mTapItem:I

.field protected mTapRunnable:Ljava/lang/Runnable;

.field protected mTapScrollFastMode:Z

.field protected mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

.field protected mTextureListener:Lcom/oppo/widget/Oppo3DScenePreView$TextureListener;

.field protected mTotalItem:I

.field protected mTouchRunnable:Ljava/lang/Runnable;

.field protected mTrackOffset:F

.field protected mTrackRunnable:Ljava/lang/Runnable;

.field protected mTrackScrollFastSlop:I

.field protected mTrackScrollFastStep:F

.field protected mUpdateShadow:Z

.field protected mUseThisClass:Z

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mViewport:[I

.field protected mZoomEnable:Z

.field protected mZoomInRunnable:Ljava/lang/Runnable;

.field protected mZoomOutRunnable:Ljava/lang/Runnable;

.field protected mZoomTransY:F

.field protected mZoomTransZ:F

.field protected matTrans:Lcom/oppo/model/lib/Matrix4f;

.field protected mmRenderDelay:I

.field protected mvCenter:Lcom/oppo/model/lib/Vector3f;

.field protected mvEye:Lcom/oppo/model/lib/Vector3f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/Oppo3DScenePreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 426
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/Oppo3DScenePreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "modelName"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-direct/range {p0 .. p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 194
    const-string v12, "rollscene.md2"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelName:Ljava/lang/String;

    .line 200
    const/4 v12, 0x4

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    .line 201
    const/16 v12, 0x10

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mMatrixProjectArray:[F

    .line 202
    new-instance v12, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v12}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    .line 203
    new-instance v12, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v12}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    .line 204
    new-instance v12, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v12}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    .line 205
    new-instance v12, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v12}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    .line 207
    new-instance v12, Lcom/oppo/model/lib/Vector3f;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-direct {v12, v13, v14, v15}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    .line 208
    new-instance v12, Lcom/oppo/model/lib/Vector3f;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    .line 438
    if-eqz p3, :cond_0

    .line 439
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mModelName:Ljava/lang/String;

    .line 440
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mUseThisClass:Z

    .line 445
    :goto_0
    const/4 v6, 0x2

    .line 446
    .local v6, "frameMode":I
    const/4 v11, 0x0

    .line 447
    .local v11, "zoomEnable":Z
    const/4 v7, 0x0

    .line 448
    .local v7, "frameRadio":F
    const/4 v5, 0x0

    .line 449
    .local v5, "centerOffset":F
    const/high16 v10, 0x3f000000    # 0.5f

    .line 450
    .local v10, "shaowHeight":F
    const/4 v9, 0x0

    .line 452
    .local v9, "modelType":I
    sget-object v12, Loppo/R$styleable;->Oppo3DScenePreView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 454
    .local v3, "a":Landroid/content/res/TypedArray;
    if-eqz v3, :cond_2

    .line 455
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 458
    .local v2, "N":I
    const/4 v4, 0x0

    .line 459
    .local v4, "attr":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_1

    .line 460
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 462
    packed-switch v4, :pswitch_data_0

    .line 459
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 442
    .end local v2    # "N":I
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "attr":I
    .end local v5    # "centerOffset":F
    .end local v6    # "frameMode":I
    .end local v7    # "frameRadio":F
    .end local v8    # "i":I
    .end local v9    # "modelType":I
    .end local v10    # "shaowHeight":F
    .end local v11    # "zoomEnable":Z
    :cond_0
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mUseThisClass:Z

    goto :goto_0

    .line 464
    .restart local v2    # "N":I
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    .restart local v4    # "attr":I
    .restart local v5    # "centerOffset":F
    .restart local v6    # "frameMode":I
    .restart local v7    # "frameRadio":F
    .restart local v8    # "i":I
    .restart local v9    # "modelType":I
    .restart local v10    # "shaowHeight":F
    .restart local v11    # "zoomEnable":Z
    :pswitch_0
    const/4 v12, 0x2

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 467
    goto :goto_2

    .line 470
    :pswitch_1
    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 473
    goto :goto_2

    .line 476
    :pswitch_2
    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 479
    goto :goto_2

    .line 482
    :pswitch_3
    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 485
    goto :goto_2

    .line 488
    :pswitch_4
    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 491
    goto :goto_2

    .line 494
    :pswitch_5
    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 497
    goto :goto_2

    .line 504
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 507
    .end local v2    # "N":I
    .end local v4    # "attr":I
    .end local v8    # "i":I
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mContext:Landroid/content/Context;

    .line 509
    invoke-static {v9}, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->nativeToType(I)Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oppo/widget/Oppo3DScenePreView;->setModeType(Lcom/oppo/widget/Oppo3DScenePreView$ModelType;)V

    .line 510
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oppo/widget/Oppo3DScenePreView;->setFrameMode(I)V

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oppo/widget/Oppo3DScenePreView;->setZoomEnable(Z)V

    .line 512
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/oppo/widget/Oppo3DScenePreView;->setFrameRadio(F)V

    .line 513
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oppo/widget/Oppo3DScenePreView;->setCenterOffset(F)V

    .line 514
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/oppo/widget/Oppo3DScenePreView;->setShadowHeight(F)V

    .line 516
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 517
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 520
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 521
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 522
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 524
    const/16 v12, 0x1e

    new-array v12, v12, [Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    .line 525
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    const/16 v12, 0x1e

    if-ge v8, v12, :cond_3

    .line 526
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    new-instance v13, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    aput-object v13, v12, v8

    .line 525
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 529
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/oppo/widget/Oppo3DConfiguration;->getScenePreViewTapScrollFastMode(Landroid/content/Context;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapScrollFastMode:Z

    .line 530
    invoke-static/range {p1 .. p1}, Lcom/oppo/widget/Oppo3DConfiguration;->getScenePreViewTrackScrollFastStep(Landroid/content/Context;)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackScrollFastStep:F

    .line 531
    invoke-static/range {p1 .. p1}, Lcom/oppo/widget/Oppo3DConfiguration;->getScenePreViewTrackScrollFastSlop(Landroid/content/Context;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackScrollFastSlop:I

    .line 532
    invoke-static/range {p1 .. p1}, Lcom/oppo/widget/Oppo3DConfiguration;->getScenePreViewRenderDelay(Landroid/content/Context;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mmRenderDelay:I

    .line 534
    new-instance v12, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    .line 535
    new-instance v12, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    .line 536
    new-instance v12, Landroid/widget/Scroller;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScroller:Landroid/widget/Scroller;

    .line 538
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oppo/widget/Oppo3DScenePreView;->setRecycleTexture(Z)V

    .line 540
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mUseThisClass:Z

    if-eqz v12, :cond_4

    .line 541
    new-instance v12, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mRenderer:Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;

    .line 542
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mRenderer:Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oppo/widget/Oppo3DScenePreView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 543
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oppo/widget/Oppo3DScenePreView;->setRenderMode(I)V

    .line 545
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestFocus()Z

    .line 546
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oppo/widget/Oppo3DScenePreView;->setFocusableInTouchMode(Z)V

    .line 547
    return-void

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/oppo/widget/Oppo3DScenePreView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/Oppo3DScenePreView;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollBarChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/widget/Oppo3DScenePreView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/Oppo3DScenePreView;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->initModelData()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/widget/Oppo3DScenePreView;FZ)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/Oppo3DScenePreView;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/Oppo3DScenePreView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/Oppo3DScenePreView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/Oppo3DScenePreView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/Oppo3DScenePreView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private calculateFastOffset(Z)V
    .locals 7
    .param p1, "increase"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x40c00000    # -0.75f

    const/high16 v4, -0x41000000    # -0.5f

    const/high16 v3, -0x41800000    # -0.25f

    const/high16 v2, 0x3e800000    # 0.25f

    .line 2774
    if-eqz p1, :cond_7

    .line 2775
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 2776
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_0

    .line 2777
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 2813
    :goto_0
    return-void

    .line 2778
    :cond_0
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    .line 2779
    iput v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2780
    :cond_1
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 2781
    iput v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2782
    :cond_2
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_3

    .line 2783
    iput v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2784
    :cond_3
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 2785
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2786
    :cond_4
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 2787
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2788
    :cond_5
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const/high16 v1, 0x3f400000    # 0.75f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 2789
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2791
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2794
    :cond_7
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 2795
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    .line 2796
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2797
    :cond_8
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    .line 2798
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2799
    :cond_9
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_a

    .line 2800
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2801
    :cond_a
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_b

    .line 2802
    iput v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2803
    :cond_b
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_c

    .line 2804
    iput v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_0

    .line 2805
    :cond_c
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_d

    .line 2806
    iput v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto/16 :goto_0

    .line 2807
    :cond_d
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_e

    .line 2808
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto/16 :goto_0

    .line 2810
    :cond_e
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto/16 :goto_0
.end method

.method private computeFlingOffset(FZ)F
    .locals 7
    .param p1, "offset"    # F
    .param p2, "increase"    # Z

    .prologue
    const v6, 0x3cf5c28f    # 0.03f

    const v5, -0x40cccccd    # -0.7f

    const v4, 0x3e4ccccd    # 0.2f

    const v3, 0x3dcccccd    # 0.1f

    const v2, 0x3d4ccccd    # 0.05f

    .line 2696
    const/4 v0, 0x0

    .line 2697
    .local v0, "result":F
    iget-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapScrollFastMode:Z

    if-eqz v1, :cond_5

    .line 2698
    if-eqz p2, :cond_2

    .line 2699
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 2700
    add-float v0, p1, v4

    .line 2739
    :goto_0
    return v0

    .line 2701
    :cond_0
    const v1, 0x3f333333    # 0.7f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 2702
    add-float v0, p1, v3

    goto :goto_0

    .line 2704
    :cond_1
    add-float v0, p1, v2

    goto :goto_0

    .line 2707
    :cond_2
    const/high16 v1, -0x41000000    # -0.5f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_3

    .line 2708
    sub-float v0, p1, v4

    goto :goto_0

    .line 2709
    :cond_3
    cmpl-float v1, p1, v5

    if-ltz v1, :cond_4

    .line 2710
    sub-float v0, p1, v3

    goto :goto_0

    .line 2712
    :cond_4
    sub-float v0, p1, v2

    goto :goto_0

    .line 2716
    :cond_5
    if-eqz p2, :cond_9

    .line 2717
    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_6

    .line 2718
    add-float v0, p1, v4

    goto :goto_0

    .line 2719
    :cond_6
    const v1, 0x3f333333    # 0.7f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_7

    .line 2720
    add-float v0, p1, v3

    goto :goto_0

    .line 2721
    :cond_7
    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_8

    .line 2722
    add-float v0, p1, v2

    goto :goto_0

    .line 2724
    :cond_8
    add-float v0, p1, v6

    goto :goto_0

    .line 2727
    :cond_9
    const v1, -0x41333333    # -0.4f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_a

    .line 2728
    sub-float v0, p1, v4

    goto :goto_0

    .line 2729
    :cond_a
    cmpl-float v1, p1, v5

    if-ltz v1, :cond_b

    .line 2730
    sub-float v0, p1, v3

    goto :goto_0

    .line 2731
    :cond_b
    const v1, -0x4099999a    # -0.9f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_c

    .line 2732
    sub-float v0, p1, v2

    goto :goto_0

    .line 2734
    :cond_c
    sub-float v0, p1, v6

    goto :goto_0
.end method

.method private initModelData()V
    .locals 25

    .prologue
    .line 2201
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    .line 2202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->loadModel(Ljava/lang/String;)V

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f000000    # 0.5f

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v24}, Lcom/oppo/model/md2/MdModel;->setShadowParameters(FF)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/oppo/model/md2/MdModel;->getNumTriangles()I

    move-result v21

    .line 2209
    .local v21, "triangleNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/oppo/model/md2/MdModel;->getTotalFrames()I

    move-result v20

    .line 2212
    .local v20, "totalFrame":I
    const/4 v14, 0x0

    .line 2214
    .local v14, "i":I
    const/16 v22, 0x9

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    sput-object v22, Lcom/oppo/widget/Oppo3DScenePreView;->KEY_FRAME_ARRAY:[F

    .line 2215
    const/4 v14, 0x0

    :goto_0
    const/16 v22, 0x9

    move/from16 v0, v22

    if-ge v14, v0, :cond_0

    .line 2216
    sget-object v22, Lcom/oppo/widget/Oppo3DScenePreView;->KEY_FRAME_ARRAY:[F

    mul-int/lit8 v23, v14, 0x7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v22, v14

    .line 2215
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2219
    :cond_0
    add-int/lit8 v22, v20, -0x1

    div-int/lit8 v4, v22, 0x2

    .line 2223
    .local v4, "centerFrame":I
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v3, v0, [I

    .line 2225
    .local v3, "Index":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    int-to-float v0, v4

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->getMinCoordinate(FI[I)F

    move-result v10

    .line 2226
    .local v10, "centerMinX":F
    const/16 v22, 0x0

    aget v11, v3, v22

    .line 2230
    .local v11, "centerMinXIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    int-to-float v0, v4

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->getMaxCoordinate(FI[I)F

    move-result v5

    .line 2231
    .local v5, "centerMaxX":F
    const/16 v22, 0x0

    aget v6, v3, v22

    .line 2235
    .local v6, "centerMaxXIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    int-to-float v0, v4

    move/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->getMinCoordinate(FI[I)F

    move-result v12

    .line 2236
    .local v12, "centerMinY":F
    const/16 v22, 0x0

    aget v13, v3, v22

    .line 2240
    .local v13, "centerMinYIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    int-to-float v0, v4

    move/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->getMaxCoordinate(FI[I)F

    move-result v7

    .line 2241
    .local v7, "centerMaxY":F
    const/16 v22, 0x0

    aget v8, v3, v22

    .line 2245
    .local v8, "centerMaxYIndex":I
    sub-float v22, v5, v10

    sput v22, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    .line 2246
    sub-float v22, v7, v12

    sput v22, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_HEIGHT:F

    .line 2248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    int-to-float v0, v4

    move/from16 v23, v0

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->getMaxCoordinate(FI[I)F

    move-result v9

    .line 2249
    .local v9, "centerMaxZ":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    sget-object v23, Lcom/oppo/widget/Oppo3DScenePreView;->KEY_FRAME_ARRAY:[F

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->getMaxCoordinate(FI[I)F

    move-result v15

    .line 2250
    .local v15, "leftMaxZ":F
    sub-float v22, v9, v15

    sput v22, Lcom/oppo/widget/Oppo3DScenePreView;->FRONT_BACK_ITEM_SPACE_Z:F

    .line 2252
    sput v10, Lcom/oppo/widget/Oppo3DScenePreView;->FRONT_LEFT_X:F

    .line 2253
    sput v5, Lcom/oppo/widget/Oppo3DScenePreView;->FRONT_RIGHT_X:F

    .line 2254
    sput v12, Lcom/oppo/widget/Oppo3DScenePreView;->MIN_Y:F

    .line 2255
    sput v7, Lcom/oppo/widget/Oppo3DScenePreView;->MAX_Y:F

    .line 2257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->getMaxCoordinate(FI[I)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mModelZ:F

    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    int-to-float v0, v4

    move/from16 v23, v0

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->getMaxCoordinate(FI[I)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mFrontZ:F

    .line 2262
    const/16 v22, 0xa

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    sput-object v22, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    .line 2264
    const/16 v17, 0x0

    .line 2265
    .local v17, "leftMinX":F
    const/16 v16, 0x0

    .line 2266
    .local v16, "leftMinIndex":I
    const/4 v14, 0x0

    :goto_1
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v14, v0, :cond_1

    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    sget-object v23, Lcom/oppo/widget/Oppo3DScenePreView;->KEY_FRAME_ARRAY:[F

    aget v23, v23, v14

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->getMinCoordinate(FI[I)F

    move-result v17

    .line 2268
    const/16 v22, 0x0

    aget v16, v3, v22

    .line 2271
    sget-object v22, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    aput v17, v22, v14

    .line 2266
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2274
    :cond_1
    sget-object v22, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    const/16 v23, 0x4

    sget v24, Lcom/oppo/widget/Oppo3DScenePreView;->FRONT_LEFT_X:F

    aput v24, v22, v23

    .line 2275
    sget-object v22, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    const/16 v23, 0x5

    sget v24, Lcom/oppo/widget/Oppo3DScenePreView;->FRONT_RIGHT_X:F

    aput v24, v22, v23

    .line 2277
    const/16 v19, 0x0

    .line 2278
    .local v19, "rightMaxX":F
    const/16 v18, 0x0

    .line 2279
    .local v18, "rightMaxIndex":I
    const/4 v14, 0x0

    :goto_2
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v14, v0, :cond_2

    .line 2280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    move-object/from16 v22, v0

    sget-object v23, Lcom/oppo/widget/Oppo3DScenePreView;->KEY_FRAME_ARRAY:[F

    add-int/lit8 v24, v14, 0x4

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->getMaxCoordinate(FI[I)F

    move-result v19

    .line 2282
    const/16 v22, 0x0

    aget v18, v3, v22

    .line 2285
    sget-object v22, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    add-int/lit8 v23, v14, 0x4

    add-int/lit8 v23, v23, 0x2

    aput v19, v22, v23

    .line 2279
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2299
    :cond_2
    return-void
.end method

.method public static modifyTexture(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "texture"    # Landroid/graphics/Bitmap;
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 3066
    invoke-static {p1}, Lcom/oppo/model/lib/TextureFactory;->hasTexturePadding(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3067
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit16 v3, v3, 0x80

    add-int/lit8 v3, v3, -0x1

    div-int/lit16 v2, v3, 0x80

    .line 3068
    .local v2, "scaleW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit16 v3, v3, 0x80

    add-int/lit8 v3, v3, -0x1

    div-int/lit16 v1, v3, 0x80

    .line 3073
    .local v1, "scaleH":I
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v3, v2

    iget v4, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v5, v2

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3075
    .local v0, "rect":Landroid/graphics/Rect;
    move-object p1, v0

    .line 3077
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v1    # "scaleH":I
    .end local v2    # "scaleW":I
    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/model/lib/TextureFactory;->modifyTexture(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static needResize(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "texture"    # Landroid/graphics/Bitmap;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 3055
    invoke-static {p0, p1, p2}, Lcom/oppo/model/lib/TextureFactory;->needResize(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private scrollBarChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2820
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 2851
    :cond_0
    :goto_0
    return-void

    .line 2826
    :cond_1
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    .line 2832
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 2838
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnScrollBarListener:Lcom/oppo/widget/OppoSceneScroller$OnScrollBarListener;

    if-eqz v1, :cond_0

    .line 2839
    const/4 v0, 0x0

    .line 2840
    .local v0, "progress":F
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 2841
    const/4 v0, 0x0

    .line 2849
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnScrollBarListener:Lcom/oppo/widget/OppoSceneScroller$OnScrollBarListener;

    invoke-interface {v1, v0}, Lcom/oppo/widget/OppoSceneScroller$OnScrollBarListener;->onScrollBarChanged(F)V

    goto :goto_0

    .line 2842
    :cond_2
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    .line 2843
    const/4 v0, 0x0

    goto :goto_1

    .line 2844
    :cond_3
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    .line 2845
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 2847
    :cond_4
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_1
.end method


# virtual methods
.method public clearTexture()V
    .locals 1

    .prologue
    .line 871
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$2;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DScenePreView$2;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    .line 878
    .local v0, "clearTextureRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    .line 879
    return-void
.end method

.method protected clearTextureInfoBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1888
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 1889
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->bdefault:Z

    if-nez v1, :cond_0

    .line 1890
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    invoke-static {v1}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(I)Z

    .line 1892
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    .line 1893
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->index:I

    .line 1894
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->bdefault:Z

    .line 1888
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1896
    :cond_1
    return-void
.end method

.method protected drawInPosition(Ljavax/microedition/khronos/opengles/GL10;IF)V
    .locals 17
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "index"    # I
    .param p3, "offset"    # F

    .prologue
    .line 1942
    const/4 v13, 0x0

    .line 1944
    .local v13, "start":I
    const/4 v10, 0x0

    .line 1945
    .local v10, "end":I
    const/4 v9, 0x0

    .line 1946
    .local v9, "curFrame":F
    const/4 v11, 0x0

    .line 1947
    .local v11, "indexOffset":I
    const/4 v8, 0x0

    .line 1948
    .local v8, "absOffset":F
    const/4 v12, 0x0

    .line 1949
    .local v12, "springTransX":F
    const/4 v15, 0x0

    .line 1950
    .local v15, "zoomTransY":F
    const/16 v16, 0x0

    .line 1951
    .local v16, "zoomTransZ":F
    const/4 v14, 0x0

    .line 1955
    .local v14, "textureId":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollFrameMode:I

    packed-switch v2, :pswitch_data_0

    .line 1975
    :goto_0
    move/from16 v0, p2

    if-gt v0, v13, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-lez v2, :cond_1

    :cond_0
    move/from16 v0, p2

    if-lt v0, v10, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_2

    .line 2091
    :cond_1
    :goto_1
    return-void

    .line 1957
    :pswitch_0
    const/4 v13, 0x2

    .line 1958
    const/4 v10, 0x6

    .line 1959
    goto :goto_0

    .line 1962
    :pswitch_1
    const/4 v13, 0x1

    .line 1963
    const/4 v10, 0x7

    .line 1964
    goto :goto_0

    .line 1967
    :pswitch_2
    const/4 v13, 0x0

    .line 1968
    const/16 v10, 0x8

    .line 1969
    goto :goto_0

    .line 1983
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_c

    .line 1984
    sget v2, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    mul-float v12, v2, p3

    .line 1985
    const/16 p3, 0x0

    .line 1994
    :cond_3
    :goto_2
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_e

    .line 1995
    add-int/lit8 v11, p2, 0x1

    .line 1996
    move/from16 v8, p3

    .line 2002
    :goto_3
    if-ltz p2, :cond_4

    const/16 v2, 0x8

    move/from16 v0, p2

    if-le v0, v2, :cond_5

    .line 2003
    :cond_4
    const-string v2, "Oppo3DScenePreView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawInPosition() offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    const-string v2, "Oppo3DScenePreView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawInPosition() error index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_5
    if-ltz v11, :cond_6

    const/16 v2, 0x8

    if-le v11, v2, :cond_7

    .line 2008
    :cond_6
    const-string v2, "Oppo3DScenePreView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawInPosition() offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    const-string v2, "Oppo3DScenePreView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawInPosition() error indexOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_7
    sget-object v2, Lcom/oppo/widget/Oppo3DScenePreView;->KEY_FRAME_ARRAY:[F

    aget v2, v2, p2

    sget-object v3, Lcom/oppo/widget/Oppo3DScenePreView;->KEY_FRAME_ARRAY:[F

    aget v3, v3, v11

    sget-object v4, Lcom/oppo/widget/Oppo3DScenePreView;->KEY_FRAME_ARRAY:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float v9, v2, v3

    .line 2015
    const/4 v2, 0x0

    cmpg-float v2, v9, v2

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v2}, Lcom/oppo/model/md2/MdModel;->getTotalFrames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v2, v9, v2

    if-lez v2, :cond_9

    .line 2016
    :cond_8
    const-string v2, "Oppo3DScenePreView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawInPosition() error curFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", indexOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", absOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const/4 v2, 0x0

    cmpg-float v2, v9, v2

    if-gez v2, :cond_f

    const v2, -0x42b33333    # -0.05f

    cmpl-float v2, v9, v2

    if-lez v2, :cond_f

    .line 2021
    const/4 v9, 0x0

    .line 2029
    :cond_9
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 2031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v2}, Lcom/oppo/model/lib/Matrix4f;->setIdentity()V

    .line 2032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    move/from16 v0, v16

    invoke-virtual {v2, v12, v15, v0}, Lcom/oppo/model/lib/Matrix4f;->setTranslation(FFF)V

    .line 2034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->matTrans:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/oppo/model/lib/Matrix4f;->set(Lcom/oppo/model/lib/Matrix4f;)V

    .line 2036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v2}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v2, v9}, Lcom/oppo/model/md2/MdModel;->setFrame(F)V

    .line 2039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oppo/model/md2/MdModel;->setDirtFlag(Z)V

    .line 2041
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    .line 2042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    sget v6, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_HEIGHT:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/model/md2/MdModel;->fillRenderBuffer(ZZFFF)V

    .line 2048
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int v2, v2, p2

    add-int/lit8 v2, v2, -0x4

    if-ltz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int v2, v2, p2

    add-int/lit8 v2, v2, -0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    if-lt v2, v3, :cond_b

    .line 2050
    :cond_a
    const-string v2, "Oppo3DScenePreView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawInPosition() mCurItem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const-string v2, "Oppo3DScenePreView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawInPosition() mScrollStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int v2, v2, p2

    add-int/lit8 v2, v2, -0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/widget/Oppo3DScenePreView;->getTextureId(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v14

    .line 2056
    const/16 v2, 0xde1

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v14}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 2058
    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v5}, Lcom/oppo/model/md2/MdModel;->getTextureCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 2060
    const/16 v2, 0x900

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 2061
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const v4, 0x45f00800    # 7681.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 2062
    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v5}, Lcom/oppo/model/md2/MdModel;->getVertexBuf()Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 2063
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v4}, Lcom/oppo/model/md2/MdModel;->getNumTriangles()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 2066
    const/16 v2, 0x901

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 2067
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/high16 v4, 0x46040000    # 8448.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 2068
    const v2, 0x8076

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 2069
    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v5}, Lcom/oppo/model/md2/MdModel;->getShadowVertexBuf()Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 2071
    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v5}, Lcom/oppo/model/md2/MdModel;->getShadowColorBuf()Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 2072
    const/16 v2, 0xbe2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 2073
    const/16 v2, 0x302

    const/16 v3, 0x303

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 2074
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v4}, Lcom/oppo/model/md2/MdModel;->getNumTriangles()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 2075
    const/16 v2, 0xbe2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 2076
    const v2, 0x8076

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 2090
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_1

    .line 1986
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    .line 1987
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_d

    .line 1988
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomTransY:F

    mul-float v15, v2, p3

    .line 1989
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomTransZ:F

    mul-float v16, v2, p3

    .line 1991
    :cond_d
    const/16 p3, 0x0

    goto/16 :goto_2

    .line 1998
    :cond_e
    add-int/lit8 v11, p2, -0x1

    .line 1999
    move/from16 v0, p3

    neg-float v8, v0

    goto/16 :goto_3

    .line 2022
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v2}, Lcom/oppo/model/md2/MdModel;->getTotalFrames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v2, v9, v2

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v2}, Lcom/oppo/model/md2/MdModel;->getTotalFrames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    add-float/2addr v2, v3

    cmpg-float v2, v9, v2

    if-gez v2, :cond_9

    .line 2025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v2}, Lcom/oppo/model/md2/MdModel;->getTotalFrames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v9, v2

    goto/16 :goto_4

    .line 2045
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/model/md2/MdModel;->fillRenderBuffer(ZZFFF)V

    goto/16 :goto_5

    .line 1955
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected drawModel(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v8, -0x41000000    # -0.5f

    .line 2099
    const/4 v4, 0x0

    .line 2100
    .local v4, "start":I
    const/4 v0, 0x0

    .line 2101
    .local v0, "end":I
    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollFrameMode:I

    packed-switch v6, :pswitch_data_0

    .line 2132
    :goto_0
    const/4 v3, 0x0

    .line 2134
    .local v3, "offset":F
    const/4 v1, 0x4

    .line 2136
    .local v1, "front":I
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v5, v5, 0x14

    if-nez v5, :cond_c

    .line 2137
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v5, v5, v9

    if-gtz v5, :cond_7

    .line 2138
    const v3, 0x3ecccccd    # 0.4f

    .line 2149
    :goto_1
    float-to-int v5, v3

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 2150
    cmpg-float v5, v3, v8

    if-gez v5, :cond_b

    .line 2151
    const/4 v1, 0x5

    .line 2163
    :cond_0
    :goto_2
    if-lt v4, v1, :cond_d

    .line 2164
    move v2, v4

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_f

    .line 2165
    invoke-virtual {p0, p1, v2, v3}, Lcom/oppo/widget/Oppo3DScenePreView;->drawInPosition(Ljavax/microedition/khronos/opengles/GL10;IF)V

    .line 2164
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2103
    .end local v1    # "front":I
    .end local v2    # "i":I
    .end local v3    # "offset":F
    :pswitch_0
    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-ge v6, v5, :cond_1

    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    rsub-int/lit8 v4, v6, 0x4

    .line 2105
    :goto_4
    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    iget v7, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    sub-int/2addr v6, v7

    if-le v6, v5, :cond_2

    const/4 v0, 0x7

    .line 2107
    :goto_5
    goto :goto_0

    :cond_1
    move v4, v5

    .line 2103
    goto :goto_4

    .line 2105
    :cond_2
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    sub-int/2addr v5, v6

    add-int/lit8 v0, v5, 0x4

    goto :goto_5

    .line 2110
    :pswitch_1
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-ge v5, v7, :cond_3

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    rsub-int/lit8 v4, v5, 0x4

    .line 2112
    :goto_6
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    sub-int/2addr v5, v6

    if-le v5, v7, :cond_4

    const/16 v0, 0x8

    .line 2114
    :goto_7
    goto :goto_0

    .line 2110
    :cond_3
    const/4 v4, 0x1

    goto :goto_6

    .line 2112
    :cond_4
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    sub-int/2addr v5, v6

    add-int/lit8 v0, v5, 0x4

    goto :goto_7

    .line 2117
    :pswitch_2
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-ge v5, v10, :cond_5

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    rsub-int/lit8 v4, v5, 0x4

    .line 2119
    :goto_8
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    sub-int/2addr v5, v6

    if-le v5, v10, :cond_6

    const/16 v0, 0x9

    .line 2121
    :goto_9
    goto :goto_0

    .line 2117
    :cond_5
    const/4 v4, 0x0

    goto :goto_8

    .line 2119
    :cond_6
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    sub-int/2addr v5, v6

    add-int/lit8 v0, v5, 0x4

    goto :goto_9

    .line 2139
    .restart local v1    # "front":I
    .restart local v3    # "offset":F
    :cond_7
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_8

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const v6, 0x3f19999a    # 0.6f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    .line 2140
    const v3, 0x3f19999a    # 0.6f

    goto :goto_1

    .line 2141
    :cond_8
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const v6, -0x41333333    # -0.4f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_9

    .line 2142
    const v3, -0x41333333    # -0.4f

    goto/16 :goto_1

    .line 2143
    :cond_9
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_a

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const v6, -0x40e66666    # -0.6f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    .line 2144
    const v3, -0x40e66666    # -0.6f

    goto/16 :goto_1

    .line 2146
    :cond_a
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto/16 :goto_1

    .line 2152
    :cond_b
    cmpl-float v5, v3, v9

    if-lez v5, :cond_0

    .line 2153
    const/4 v1, 0x3

    goto/16 :goto_2

    .line 2157
    :cond_c
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto/16 :goto_2

    .line 2168
    :cond_d
    move v2, v1

    .restart local v2    # "i":I
    :goto_a
    if-lt v2, v4, :cond_e

    .line 2169
    invoke-virtual {p0, p1, v2, v3}, Lcom/oppo/widget/Oppo3DScenePreView;->drawInPosition(Ljavax/microedition/khronos/opengles/GL10;IF)V

    .line 2168
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 2171
    :cond_e
    add-int/lit8 v2, v1, 0x1

    :goto_b
    if-ge v2, v0, :cond_f

    .line 2172
    invoke-virtual {p0, p1, v2, v3}, Lcom/oppo/widget/Oppo3DScenePreView;->drawInPosition(Ljavax/microedition/khronos/opengles/GL10;IF)V

    .line 2171
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2175
    :cond_f
    return-void

    .line 2101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCenterRect()Landroid/graphics/Rect;
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 3028
    iget-object v7, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    aget v7, v7, v11

    int-to-float v7, v7

    sget v8, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mNormalDistance:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    iget v9, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mNormalDistance:F

    sget v10, Lcom/oppo/widget/Oppo3DScenePreView;->FRONT_BACK_ITEM_SPACE_Z:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 3029
    .local v6, "width":I
    const/4 v1, 0x0

    .line 3031
    .local v1, "height":I
    iget v7, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 3032
    int-to-float v7, v6

    iget v8, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    div-float/2addr v7, v8

    float-to-int v1, v7

    .line 3037
    :goto_0
    iget-object v7, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    aget v7, v7, v11

    sub-int/2addr v7, v6

    div-int/lit8 v2, v7, 0x2

    .line 3038
    .local v2, "left":I
    iget-object v7, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    sub-int/2addr v7, v1

    div-int/lit8 v5, v7, 0x2

    .line 3039
    .local v5, "top":I
    add-int v4, v2, v6

    .line 3040
    .local v4, "right":I
    add-int v0, v5, v1

    .line 3042
    .local v0, "bottom":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3043
    .local v3, "r":Landroid/graphics/Rect;
    return-object v3

    .line 3034
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "r":Landroid/graphics/Rect;
    .end local v4    # "right":I
    .end local v5    # "top":I
    :cond_0
    move v1, v6

    goto :goto_0
.end method

.method protected getTextureId(Ljavax/microedition/khronos/opengles/GL10;I)I
    .locals 13
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "index"    # I

    .prologue
    .line 1801
    const/4 v6, 0x0

    .line 1802
    .local v6, "textureId":I
    const/4 v0, 0x0

    .line 1803
    .local v0, "bdefault":Z
    const/4 v5, 0x0

    .line 1804
    .local v5, "insert":Z
    const/4 v3, 0x0

    .line 1805
    .local v3, "found":Z
    const/4 v4, 0x0

    .line 1807
    .local v4, "i":I
    const/4 v4, 0x0

    :goto_0
    const/16 v10, 0x1e

    if-ge v4, v10, :cond_0

    .line 1808
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v4

    iget v10, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->index:I

    if-ne p2, v10, :cond_5

    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v4

    iget v10, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    if-eqz v10, :cond_5

    .line 1809
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v4

    iget v6, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    .line 1810
    const/4 v3, 0x1

    .line 1815
    :cond_0
    if-nez v3, :cond_b

    .line 1816
    invoke-virtual {p0, p2}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeTextureListener(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1817
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iput-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mBindingTexture:Landroid/graphics/Bitmap;

    .line 1819
    if-nez v1, :cond_6

    .line 1820
    iget v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexId:I

    if-nez v10, :cond_1

    .line 1821
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexture:Landroid/graphics/Bitmap;

    const/16 v12, 0x2100

    invoke-static {v10, p1, v11, v12}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)I

    move-result v10

    iput v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexId:I

    .line 1824
    :cond_1
    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexId:I

    .line 1825
    const/4 v0, 0x1

    .line 1835
    :cond_2
    :goto_1
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mBindingTexture:Landroid/graphics/Bitmap;

    .line 1836
    const/4 v1, 0x0

    .line 1838
    const/4 v4, 0x0

    :goto_2
    const/16 v10, 0x1e

    if-ge v4, v10, :cond_3

    .line 1839
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v4

    iget v10, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    if-nez v10, :cond_7

    .line 1840
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v4

    iput v6, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    .line 1841
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v4

    iput p2, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->index:I

    .line 1842
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v4

    iput-boolean v0, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->bdefault:Z

    .line 1843
    const/4 v5, 0x1

    .line 1848
    :cond_3
    if-nez v5, :cond_b

    .line 1849
    const/4 v7, 0x0

    .line 1850
    .local v7, "tmpDelta":I
    const/4 v8, 0x0

    .line 1851
    .local v8, "tmpPos":I
    const/4 v2, 0x0

    .line 1853
    .local v2, "delta":I
    const/4 v4, 0x0

    :goto_3
    const/16 v10, 0x1e

    if-ge v4, v10, :cond_8

    .line 1854
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v4

    iget v10, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->index:I

    sub-int v10, p2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1855
    if-le v2, v7, :cond_4

    .line 1856
    move v7, v2

    .line 1857
    move v8, v4

    .line 1853
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1807
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "delta":I
    .end local v7    # "tmpDelta":I
    .end local v8    # "tmpPos":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1827
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mContext:Landroid/content/Context;

    const/16 v11, 0x2100

    invoke-static {v10, p1, v1, v11}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)I

    move-result v6

    .line 1828
    const/4 v0, 0x0

    .line 1830
    iget-boolean v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mRecycleTexture:Z

    if-eqz v10, :cond_2

    .line 1831
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1832
    const/4 v1, 0x0

    goto :goto_1

    .line 1838
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1861
    .restart local v2    # "delta":I
    .restart local v7    # "tmpDelta":I
    .restart local v8    # "tmpPos":I
    :cond_8
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v8

    iget-boolean v10, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->bdefault:Z

    if-eqz v10, :cond_d

    .line 1862
    const/4 v9, 0x0

    .line 1863
    .local v9, "used":Z
    const/4 v4, 0x0

    :goto_4
    const/16 v10, 0x1e

    if-ge v4, v10, :cond_9

    .line 1864
    if-eq v4, v8, :cond_c

    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v8

    iget-boolean v10, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->bdefault:Z

    if-eqz v10, :cond_c

    .line 1865
    const/4 v9, 0x1

    .line 1869
    :cond_9
    if-nez v9, :cond_a

    .line 1870
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v8

    iget v10, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    invoke-static {p1, v10}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 1871
    const/4 v10, 0x0

    iput v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexId:I

    .line 1876
    .end local v9    # "used":Z
    :cond_a
    :goto_5
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v8

    iput v6, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    .line 1877
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v8

    iput p2, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->index:I

    .line 1878
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v8

    iput-boolean v0, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->bdefault:Z

    .line 1881
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "delta":I
    .end local v7    # "tmpDelta":I
    .end local v8    # "tmpPos":I
    :cond_b
    return v6

    .line 1863
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "delta":I
    .restart local v7    # "tmpDelta":I
    .restart local v8    # "tmpPos":I
    .restart local v9    # "used":Z
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1874
    .end local v9    # "used":Z
    :cond_d
    iget-object v10, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v10, v10, v8

    iget v10, v10, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    invoke-static {p1, v10}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    goto :goto_5
.end method

.method public getZoomEnable()Z
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomEnable:Z

    return v0
.end method

.method protected invokeOnItemClick()V
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnItemClickListener:Lcom/oppo/widget/Oppo3DScenePreView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mItemClickRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1048
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$7;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DScenePreView$7;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mItemClickRunnable:Ljava/lang/Runnable;

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mItemClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->post(Ljava/lang/Runnable;)Z

    .line 1058
    :cond_1
    return-void
.end method

.method protected invokeOnScrollChanged()V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnScrollListener:Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mItemChangedRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1005
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$5;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DScenePreView$5;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mItemChangedRunnable:Ljava/lang/Runnable;

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mItemChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->post(Ljava/lang/Runnable;)Z

    .line 1015
    :cond_1
    return-void
.end method

.method protected invokeOnScrollComplete()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnScrollListener:Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollCompleteRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1026
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$6;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DScenePreView$6;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollCompleteRunnable:Ljava/lang/Runnable;

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->post(Ljava/lang/Runnable;)Z

    .line 1037
    :cond_1
    return-void
.end method

.method protected invokeOnScrollStart()V
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnScrollListener:Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStartRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 984
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$4;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DScenePreView$4;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStartRunnable:Ljava/lang/Runnable;

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->post(Ljava/lang/Runnable;)Z

    .line 994
    :cond_1
    return-void
.end method

.method protected invokeTextureListener(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureListener:Lcom/oppo/widget/Oppo3DScenePreView$TextureListener;

    invoke-interface {v1, p1}, Lcom/oppo/widget/Oppo3DScenePreView$TextureListener;->onGetTexture(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1067
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public isTextureRecyclable(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "texture"    # Landroid/graphics/Bitmap;

    .prologue
    .line 930
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mBindingTexture:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_0

    .line 931
    const-string v0, "Oppo3DScenePreView"

    const-string v1, "isTextureRecyclable false. is using!!! "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v0, 0x0

    .line 934
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected loadModel(Ljava/lang/String;)V
    .locals 10
    .param p1, "modelName"    # Ljava/lang/String;

    .prologue
    .line 948
    :try_start_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    .line 949
    .local v8, "am":Landroid/content/res/AssetManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 950
    .local v1, "is":Ljava/io/InputStream;
    new-instance v0, Lcom/oppo/model/md2/MdModel;

    invoke-direct {v0}, Lcom/oppo/model/md2/MdModel;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    .line 951
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x1c

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/model/md2/MdModel;->Load(Ljava/io/InputStream;ZZZZZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    const-string v0, "Oppo3DScenePreView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Model Failed. modelName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v8    # "am":Landroid/content/res/AssetManager;
    :goto_0
    return-void

    .line 956
    :catch_0
    move-exception v9

    .line 957
    .local v9, "ex":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 688
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 690
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->releaseModel()V

    .line 692
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexture:Landroid/graphics/Bitmap;

    .line 696
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    .line 552
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 553
    return-void
.end method

.method public onProgressChanged(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 2905
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    if-gtz v0, :cond_0

    .line 2930
    :goto_0
    return-void

    .line 2911
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 2912
    :cond_1
    const-string v0, "Oppo3DScenePreView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onProgressChanged() error progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2916
    :cond_2
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$19;

    invoke-direct {v0, p0, p1}, Lcom/oppo/widget/Oppo3DScenePreView$19;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;F)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mProgressChangeRunnable:Ljava/lang/Runnable;

    .line 2929
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mProgressChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onProgressEnd(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 2941
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    if-gtz v0, :cond_0

    .line 2944
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollBarChanged()V

    .line 2968
    :goto_0
    return-void

    .line 2948
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mProgressEndRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 2950
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$20;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DScenePreView$20;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mProgressEndRunnable:Ljava/lang/Runnable;

    .line 2967
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mProgressEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onProgressStart(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 2862
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    if-gtz v0, :cond_0

    .line 2893
    :goto_0
    return-void

    .line 2868
    :cond_0
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$18;

    invoke-direct {v0, p0, p1}, Lcom/oppo/widget/Oppo3DScenePreView$18;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;F)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mProgressStartRunnable:Ljava/lang/Runnable;

    .line 2892
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mProgressStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 557
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 558
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x3e8

    const/4 v10, 0x1

    const v9, 0x459c4000    # 5000.0f

    const/4 v8, -0x1

    .line 562
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    if-gtz v5, :cond_0

    .line 679
    :goto_0
    return v10

    .line 568
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 569
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 570
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 571
    .local v0, "action":I
    const/4 v1, 0x0

    .line 572
    .local v1, "dx":I
    const/4 v2, 0x0

    .line 577
    .local v2, "initialVelocity":I
    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1

    .line 578
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 580
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 582
    packed-switch v0, :pswitch_data_0

    .line 678
    :cond_2
    :goto_1
    iput v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mLastX:I

    goto :goto_0

    .line 584
    :pswitch_0
    iput v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionX:I

    .line 585
    iput v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionY:I

    .line 586
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/oppo/widget/Oppo3DScenePreView;->pointToItem(FF)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionItem:I

    .line 590
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mPressHandled:Z

    .line 591
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollTouch()V

    goto :goto_1

    .line 595
    :pswitch_1
    iget-boolean v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mPressHandled:Z

    if-nez v5, :cond_2

    .line 596
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionX:I

    sub-int v1, v3, v5

    .line 600
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    if-nez v5, :cond_3

    .line 601
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionItem:I

    if-eq v5, v8, :cond_3

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionItem:I

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {p0, v6, v7}, Lcom/oppo/widget/Oppo3DScenePreView;->pointToItem(FF)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 602
    iput v8, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionItem:I

    .line 606
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v11, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 607
    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v2, v5

    .line 611
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 612
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mLastX:I

    sub-int v1, v3, v5

    .line 613
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x32

    if-lt v5, v6, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackScrollFastSlop:I

    if-ge v5, v6, :cond_4

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_6

    :cond_4
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_6

    .line 616
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_5

    .line 617
    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mLastX:I

    invoke-virtual {v5, v6}, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->start(I)V

    .line 619
    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollFastMove(II)V

    goto :goto_1

    .line 621
    :cond_6
    invoke-virtual {p0, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollTrack(I)V

    goto :goto_1

    .line 623
    :cond_7
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    if-nez v5, :cond_2

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    .line 626
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollStart()V

    .line 627
    invoke-virtual {p0, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollTrack(I)V

    goto/16 :goto_1

    .line 633
    :pswitch_2
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionX:I

    sub-int v1, v3, v5

    .line 636
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_8

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_8

    .line 637
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_a

    .line 638
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollZoomOut()V

    .line 661
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_9

    .line 662
    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 663
    iput-object v7, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 666
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollCancel()V

    goto/16 :goto_1

    .line 639
    :cond_a
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b

    .line 640
    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v11, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 641
    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v2, v5

    .line 645
    invoke-virtual {p0, v2}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollFling(I)V

    goto :goto_2

    .line 646
    :cond_b
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    if-nez v5, :cond_8

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionItem:I

    if-eq v5, v8, :cond_8

    iget-boolean v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mPressHandled:Z

    if-nez v5, :cond_8

    .line 648
    iget-boolean v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomEnable:Z

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionItem:I

    iget v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-ne v5, v6, :cond_d

    .line 649
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_c

    .line 650
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollZoomIn()V

    goto :goto_2

    .line 652
    :cond_c
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollZoomOut()V

    goto :goto_2

    .line 655
    :cond_d
    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionItem:I

    invoke-virtual {p0, v5}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollTap(I)V

    .line 656
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollStart()V

    goto :goto_2

    .line 670
    :pswitch_3
    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_e

    .line 671
    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 672
    iput-object v7, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 675
    :cond_e
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollCancel()V

    goto/16 :goto_1

    .line 582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public pointFastItem(II)I
    .locals 8
    .param p1, "x"    # I
    .param p2, "dx"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 2507
    const/4 v0, -0x1

    .line 2509
    .local v0, "curPos":I
    int-to-float v3, p1

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    aget v4, v4, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 2511
    .local v2, "modelX":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 2512
    sget-object v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    aget v3, v3, v1

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    sget-object v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 2513
    move v0, v1

    .line 2521
    :cond_0
    if-ne v0, v7, :cond_2

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastCurPos:I

    if-ne v3, v7, :cond_2

    .line 2522
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastTrackFront:Z

    .line 2523
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    aget v5, v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, p2

    mul-float/2addr v4, v5

    sget v5, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v4, v5

    iput v4, v3, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mDeltaOffset:F

    .line 2528
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iput v0, v3, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastCurPos:I

    .line 2530
    return v0

    .line 2511
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2525
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastTrackFront:Z

    .line 2526
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    const/4 v4, 0x0

    iput v4, v3, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mDeltaOffset:F

    goto :goto_1
.end method

.method protected pointToItem(FF)I
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 1385
    const/4 v3, -0x1

    .line 1386
    .local v3, "pointItem":I
    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    mul-float/2addr v4, p1

    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    div-float/2addr v5, v8

    sub-float v1, v4, v5

    .line 1387
    .local v1, "modelX":F
    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelHeight:F

    div-float/2addr v4, v8

    iget v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelHeight:F

    mul-float/2addr v5, p2

    iget-object v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 1389
    .local v2, "modelY":F
    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 1390
    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    mul-float/2addr v2, v4

    .line 1393
    :cond_0
    sget v4, Lcom/oppo/widget/Oppo3DScenePreView;->MIN_Y:F

    sget v5, Lcom/oppo/widget/Oppo3DScenePreView;->MAX_Y:F

    sget v6, Lcom/oppo/widget/Oppo3DScenePreView;->MIN_Y:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_3

    sget v4, Lcom/oppo/widget/Oppo3DScenePreView;->MAX_Y:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_3

    .line 1394
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_1

    .line 1395
    sget-object v4, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    aget v4, v4, v0

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_4

    sget-object v4, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    .line 1396
    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/2addr v4, v0

    add-int/lit8 v3, v4, -0x4

    .line 1401
    :cond_1
    if-ltz v3, :cond_2

    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    if-lt v3, v4, :cond_3

    .line 1402
    :cond_2
    const/4 v3, -0x1

    .line 1405
    .end local v0    # "i":I
    :cond_3
    return v3

    .line 1394
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected preLoadTexture(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "current"    # I

    .prologue
    .line 2474
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$16;

    invoke-direct {v0, p0, p2, p1}, Lcom/oppo/widget/Oppo3DScenePreView$16;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;ILjavax/microedition/khronos/opengles/GL10;)V

    .line 2495
    .local v0, "loadTexRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2496
    return-void
.end method

.method protected releaseModel()V
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    invoke-virtual {v0}, Lcom/oppo/model/md2/MdModel;->releaseModel()V

    .line 973
    :cond_0
    return-void
.end method

.method protected requestRenderDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 2751
    if-gtz p1, :cond_0

    .line 2752
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    .line 2766
    :goto_0
    return-void

    .line 2754
    :cond_0
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$17;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DScenePreView$17;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oppo/widget/Oppo3DScenePreView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected scrollCancel()V
    .locals 2

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1357
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1358
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mPerformLongPress:Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1360
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mPressHandled:Z

    .line 1361
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1362
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCancelRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 1363
    new-instance v1, Lcom/oppo/widget/Oppo3DScenePreView$15;

    invoke-direct {v1, p0}, Lcom/oppo/widget/Oppo3DScenePreView$15;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCancelRunnable:Ljava/lang/Runnable;

    .line 1374
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1375
    return-void
.end method

.method protected scrollFastMove(II)V
    .locals 1
    .param p1, "fastX"    # I
    .param p2, "deltaX"    # I

    .prologue
    .line 1221
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1222
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/oppo/widget/Oppo3DScenePreView$11;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;II)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveRunnable:Ljava/lang/Runnable;

    .line 1240
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1241
    return-void
.end method

.method protected scrollFling(I)V
    .locals 1
    .param p1, "velocity"    # I

    .prologue
    .line 1252
    iput p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFingVelocity:I

    .line 1253
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1254
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1256
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1257
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$12;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DScenePreView$12;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingRunnable:Ljava/lang/Runnable;

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1305
    return-void
.end method

.method protected scrollTap(I)V
    .locals 2
    .param p1, "tapItem"    # I

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1120
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mPerformLongPress:Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1124
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mPressHandled:Z

    if-eqz v1, :cond_1

    .line 1153
    :goto_0
    return-void

    .line 1130
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mPressHandled:Z

    .line 1132
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-ne p1, v1, :cond_2

    .line 1135
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnItemClick()V

    goto :goto_0

    .line 1139
    :cond_2
    iput p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapItem:I

    .line 1141
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    .line 1142
    new-instance v1, Lcom/oppo/widget/Oppo3DScenePreView$9;

    invoke-direct {v1, p0}, Lcom/oppo/widget/Oppo3DScenePreView$9;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapRunnable:Ljava/lang/Runnable;

    .line 1152
    :cond_3
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected scrollTouch()V
    .locals 2

    .prologue
    .line 1077
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTouchRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 1084
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$8;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DScenePreView$8;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTouchRunnable:Ljava/lang/Runnable;

    .line 1108
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected scrollTrack(I)V
    .locals 5
    .param p1, "deltaX"    # I

    .prologue
    const/4 v4, 0x2

    .line 1164
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1165
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1166
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mPerformLongPress:Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1169
    :cond_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1171
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1210
    :cond_1
    :goto_0
    return-void

    .line 1177
    :cond_2
    if-eqz p1, :cond_1

    .line 1181
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 1182
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackOffset:F

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    aget v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v2, v3

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackOffset:F

    .line 1191
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    .line 1192
    new-instance v1, Lcom/oppo/widget/Oppo3DScenePreView$10;

    invoke-direct {v1, p0}, Lcom/oppo/widget/Oppo3DScenePreView$10;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackRunnable:Ljava/lang/Runnable;

    .line 1209
    :cond_3
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1185
    :cond_4
    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackOffset:F

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    aget v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackOffset:F

    goto :goto_1
.end method

.method protected scrollZoomIn()V
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomInRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1314
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$13;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DScenePreView$13;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomInRunnable:Ljava/lang/Runnable;

    .line 1326
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1327
    return-void
.end method

.method protected scrollZoomOut()V
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomOutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1336
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$14;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DScenePreView$14;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomOutRunnable:Ljava/lang/Runnable;

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1347
    return-void
.end method

.method public setCenterOffset(F)V
    .locals 2
    .param p1, "offset"    # F

    .prologue
    .line 836
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelType:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    sget-object v1, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->MODEL_MUSIC:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e0f5c29    # 0.14f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 840
    :goto_0
    return-void

    .line 839
    :cond_0
    iput p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCenterOffset:F

    goto :goto_0
.end method

.method public setDefaultTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "texture"    # Landroid/graphics/Bitmap;

    .prologue
    .line 887
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexture:Landroid/graphics/Bitmap;

    .line 891
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexture:Landroid/graphics/Bitmap;

    .line 892
    return-void
.end method

.method public setFrameMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 800
    iput p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollFrameMode:I

    .line 801
    return-void
.end method

.method public setFrameRadio(F)V
    .locals 0
    .param p1, "radio"    # F

    .prologue
    .line 827
    iput p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    .line 828
    return-void
.end method

.method public setModeType(Lcom/oppo/widget/Oppo3DScenePreView$ModelType;)V
    .locals 2
    .param p1, "modelType"    # Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelType:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    if-eq v0, p1, :cond_0

    .line 772
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelType:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    .line 774
    sget-object v0, Lcom/oppo/widget/Oppo3DScenePreView$21;->$SwitchMap$com$oppo$widget$Oppo3DScenePreView$ModelType:[I

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelType:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    invoke-virtual {v1}, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 783
    const-string v0, "rollscene.md2"

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelName:Ljava/lang/String;

    .line 787
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->releaseModel()V

    .line 789
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->initModelData()V

    .line 792
    :cond_0
    return-void

    .line 776
    :pswitch_0
    const-string v0, "rollscene.md2"

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelName:Ljava/lang/String;

    goto :goto_0

    .line 779
    :pswitch_1
    const-string v0, "rollscene_music.md2"

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelName:Ljava/lang/String;

    .line 780
    const v0, 0x3e0f5c29    # 0.14f

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->setCenterOffset(F)V

    goto :goto_0

    .line 774
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnItemClickListener(Lcom/oppo/widget/Oppo3DScenePreView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oppo/widget/Oppo3DScenePreView$OnItemClickListener;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnItemClickListener:Lcom/oppo/widget/Oppo3DScenePreView$OnItemClickListener;

    .line 746
    return-void
.end method

.method public setOnLongClickListener(Lcom/oppo/widget/Oppo3DScenePreView$OnLongClickListener;)V
    .locals 2
    .param p1, "l"    # Lcom/oppo/widget/Oppo3DScenePreView$OnLongClickListener;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnLongClickListener:Lcom/oppo/widget/Oppo3DScenePreView$OnLongClickListener;

    .line 759
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnLongClickListener:Lcom/oppo/widget/Oppo3DScenePreView$OnLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mPerformLongPress:Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;Lcom/oppo/widget/Oppo3DScenePreView$1;)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mPerformLongPress:Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;

    .line 762
    :cond_0
    return-void
.end method

.method public setOnScrollBarListener(Lcom/oppo/widget/OppoSceneScroller$OnScrollBarListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oppo/widget/OppoSceneScroller$OnScrollBarListener;

    .prologue
    .line 2976
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnScrollBarListener:Lcom/oppo/widget/OppoSceneScroller$OnScrollBarListener;

    .line 2977
    return-void
.end method

.method public setOnScrollListener(Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnScrollListener:Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;

    .line 737
    return-void
.end method

.method public setRecycleTexture(Z)V
    .locals 0
    .param p1, "recycle"    # Z

    .prologue
    .line 900
    iput-boolean p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mRecycleTexture:Z

    .line 901
    return-void
.end method

.method public setScrollItem(II)V
    .locals 3
    .param p1, "select"    # I
    .param p2, "total"    # I

    .prologue
    .line 708
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-lt p1, p2, :cond_1

    .line 709
    :cond_0
    const-string v0, "Oppo3DScenePreView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollItem() error. select = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :goto_0
    return-void

    .line 713
    :cond_1
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oppo/widget/Oppo3DScenePreView$1;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;II)V

    iput-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSetItemRunnable:Ljava/lang/Runnable;

    .line 727
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSetItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setShadowHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 848
    iput p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mShadowHeight:F

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mUpdateShadow:Z

    .line 850
    return-void
.end method

.method public setTextureListener(Lcom/oppo/widget/Oppo3DScenePreView$TextureListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oppo/widget/Oppo3DScenePreView$TextureListener;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureListener:Lcom/oppo/widget/Oppo3DScenePreView$TextureListener;

    .line 755
    return-void
.end method

.method public setTranslucent(Z)V
    .locals 2
    .param p1, "translucent"    # Z

    .prologue
    .line 857
    if-eqz p1, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 859
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->setZOrderOnTop(Z)V

    .line 864
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    .line 865
    return-void

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 862
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->setZOrderOnTop(Z)V

    goto :goto_0
.end method

.method protected setUpCamera(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 2191
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2192
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 2193
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    sget-object v2, Lcom/oppo/model/lib/ModelUtils;->UP_DIRECT:Lcom/oppo/model/lib/Vector3f;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/model/lib/Matrix4f;->gluLookAt(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Matrix4f;)V

    .line 2194
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 2195
    return-void
.end method

.method public setZoomEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 809
    iput-boolean p1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomEnable:Z

    .line 810
    return-void
.end method

.method protected updateOffset()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1416
    const/4 v7, 0x0

    .line 1417
    .local v7, "more":Z
    const/4 v11, 0x0

    .line 1418
    .local v11, "x":I
    const/4 v1, 0x0

    .line 1419
    .local v1, "deltaX":I
    const/4 v9, 0x0

    .line 1420
    .local v9, "offset":F
    const/4 v8, 0x0

    .line 1421
    .local v8, "offItem":I
    const/4 v10, 0x1

    .line 1423
    .local v10, "resetOffset":Z
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    packed-switch v0, :pswitch_data_0

    .line 1786
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->scrollBarChanged()V

    .line 1790
    return-void

    .line 1425
    :pswitch_0
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapItem:I

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-ge v0, v3, :cond_5

    .line 1426
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapItem:I

    add-int/lit8 v3, v3, 0x1

    if-le v0, v3, :cond_3

    .line 1427
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 1428
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1469
    :cond_1
    :goto_1
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mmRenderDelay:I

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRenderDelay(I)V

    goto :goto_0

    .line 1430
    :cond_2
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1431
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V

    goto :goto_1

    .line 1434
    :cond_3
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    invoke-direct {p0, v0, v14}, Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F

    move-result v0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1435
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_4

    .line 1436
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1437
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V

    .line 1439
    :cond_4
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapItem:I

    if-ne v0, v3, :cond_1

    .line 1440
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1441
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1442
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollComplete()V

    goto :goto_1

    .line 1446
    :cond_5
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapItem:I

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-le v0, v3, :cond_1

    .line 1448
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapItem:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 1449
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const/high16 v2, -0x41000000    # -0.5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 1450
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_1

    .line 1452
    :cond_6
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1453
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V

    goto :goto_1

    .line 1456
    :cond_7
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    invoke-direct {p0, v0, v2}, Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F

    move-result v0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1457
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_8

    .line 1458
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1459
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V

    .line 1461
    :cond_8
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTapItem:I

    if-ne v0, v3, :cond_1

    .line 1462
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1463
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1464
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollComplete()V

    goto :goto_1

    .line 1473
    :pswitch_1
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    .line 1474
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mProgress:F

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v6, v0

    .line 1475
    .local v6, "curItem":I
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mProgress:F

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    neg-float v0, v0

    int-to-float v2, v6

    add-float/2addr v0, v2

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1476
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-eq v6, v0, :cond_9

    .line 1477
    iput v6, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1478
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V

    .line 1599
    .end local v6    # "curItem":I
    :cond_9
    :goto_2
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1600
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mmRenderDelay:I

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRenderDelay(I)V

    goto/16 :goto_0

    .line 1480
    :cond_a
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1b

    .line 1482
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastStartItem:I

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastCurPos:I

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastStartPos:I

    sub-int/2addr v3, v4

    sub-int v6, v0, v3

    .line 1484
    .restart local v6    # "curItem":I
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iget-boolean v0, v0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastTrackFront:Z

    if-eqz v0, :cond_11

    .line 1485
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mDeltaOffset:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1486
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iput v5, v0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mDeltaOffset:F

    .line 1487
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_c

    .line 1488
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    float-to-int v8, v0

    .line 1489
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1490
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    int-to-float v3, v8

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1491
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-gez v0, :cond_10

    .line 1492
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1496
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iput v2, v0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastStartItem:I

    .line 1497
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V

    .line 1499
    :cond_c
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-gtz v0, :cond_d

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_e

    :cond_d
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_f

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_f

    .line 1501
    :cond_e
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1502
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1504
    :cond_f
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFastMoveInfo:Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mDeltaOffset:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_9

    .line 1505
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mmRenderDelay:I

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRenderDelay(I)V

    goto/16 :goto_2

    .line 1493
    :cond_10
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_b

    .line 1494
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    goto :goto_3

    .line 1507
    :cond_11
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-le v6, v0, :cond_16

    .line 1508
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    if-le v6, v0, :cond_14

    .line 1509
    invoke-direct {p0, v2}, Lcom/oppo/widget/Oppo3DScenePreView;->calculateFastOffset(Z)V

    .line 1513
    :goto_4
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_15

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_15

    .line 1514
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1515
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1521
    :cond_12
    :goto_5
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-ne v0, v6, :cond_13

    .line 1522
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1524
    :cond_13
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mmRenderDelay:I

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRenderDelay(I)V

    goto/16 :goto_2

    .line 1511
    :cond_14
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    invoke-direct {p0, v0, v2}, Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F

    move-result v0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_4

    .line 1516
    :cond_15
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_12

    .line 1517
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1518
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1519
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V

    goto :goto_5

    .line 1525
    :cond_16
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-ge v6, v0, :cond_9

    .line 1526
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_19

    .line 1527
    invoke-direct {p0, v14}, Lcom/oppo/widget/Oppo3DScenePreView;->calculateFastOffset(Z)V

    .line 1531
    :goto_6
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-gtz v0, :cond_1a

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1a

    .line 1532
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1533
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1539
    :cond_17
    :goto_7
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-ne v0, v6, :cond_18

    .line 1540
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1542
    :cond_18
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mmRenderDelay:I

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRenderDelay(I)V

    goto/16 :goto_2

    .line 1529
    :cond_19
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    invoke-direct {p0, v0, v14}, Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F

    move-result v0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto :goto_6

    .line 1534
    :cond_1a
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_17

    .line 1535
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1536
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1537
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V

    goto :goto_7

    .line 1544
    .end local v6    # "curItem":I
    :cond_1b
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1f

    .line 1545
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1d

    .line 1546
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    invoke-direct {p0, v0, v2}, Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F

    move-result v0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1547
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1c

    .line 1548
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1549
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1550
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1551
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V

    .line 1565
    :cond_1c
    :goto_8
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    if-nez v0, :cond_9

    .line 1566
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1567
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollComplete()V

    goto/16 :goto_2

    .line 1553
    :cond_1d
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1e

    .line 1554
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    invoke-direct {p0, v0, v14}, Lcom/oppo/widget/Oppo3DScenePreView;->computeFlingOffset(FZ)F

    move-result v0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1556
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_1c

    .line 1557
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1558
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1559
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1560
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V

    goto :goto_8

    .line 1563
    :cond_1e
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    goto :goto_8

    .line 1570
    :cond_1f
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackOffset:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1572
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_20

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-lez v0, :cond_21

    :cond_20
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_24

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_24

    .line 1574
    :cond_21
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1576
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_22

    .line 1577
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1578
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1581
    :cond_22
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackOffset:F

    .line 1590
    :cond_23
    :goto_9
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    .line 1591
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    mul-float/2addr v2, v12

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_25

    .line 1592
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    mul-float/2addr v0, v12

    sget v2, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto/16 :goto_2

    .line 1583
    :cond_24
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1584
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackOffset:F

    .line 1585
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_23

    .line 1586
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    goto :goto_9

    .line 1593
    :cond_25
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    neg-float v2, v2

    mul-float/2addr v2, v12

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_9

    .line 1594
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    neg-float v0, v0

    mul-float/2addr v0, v12

    sget v2, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto/16 :goto_2

    .line 1605
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->computeOffset()Z

    move-result v7

    .line 1606
    const/4 v8, 0x0

    .line 1607
    const/4 v9, 0x0

    .line 1608
    if-eqz v7, :cond_26

    .line 1609
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_37

    .line 1610
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->getCurOffset()F

    move-result v9

    .line 1611
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    if-le v0, v14, :cond_35

    .line 1612
    const/4 v10, 0x0

    .line 1613
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->positiveVelocity()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1614
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    add-int/lit8 v0, v0, -0x1

    neg-int v8, v0

    .line 1618
    :goto_a
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    iput v2, v0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    .line 1619
    iput v9, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1657
    :cond_26
    :goto_b
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_27

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_28

    :cond_27
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_29

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-nez v0, :cond_29

    .line 1659
    :cond_28
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1662
    :cond_29
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-nez v0, :cond_2a

    const/4 v0, -0x1

    if-le v8, v0, :cond_2b

    :cond_2a
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2c

    if-lt v8, v14, :cond_2c

    .line 1664
    :cond_2b
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1667
    :cond_2c
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_31

    .line 1668
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-nez v0, :cond_2e

    if-ge v8, v14, :cond_2d

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2e

    :cond_2d
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/2addr v0, v8

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_30

    :cond_2e
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_31

    const/4 v0, -0x1

    if-le v8, v0, :cond_2f

    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_31

    :cond_2f
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/2addr v0, v8

    if-lez v0, :cond_31

    .line 1671
    :cond_30
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1675
    :cond_31
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3d

    .line 1676
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    mul-float/2addr v3, v12

    sget v4, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_32

    .line 1679
    const/4 v7, 0x0

    .line 1681
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->finish()V

    .line 1684
    :cond_32
    if-nez v7, :cond_33

    .line 1685
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    div-float/2addr v0, v3

    float-to-int v1, v0

    .line 1688
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScroller:Landroid/widget/Scroller;

    neg-int v3, v1

    const/16 v5, 0x3e8

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1689
    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    .line 1690
    iput v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mLastSpringX:I

    .line 1691
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1692
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1712
    :cond_33
    :goto_c
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mmRenderDelay:I

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRenderDelay(I)V

    goto/16 :goto_0

    .line 1616
    :cond_34
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    add-int/lit8 v8, v0, -0x1

    goto/16 :goto_a

    .line 1621
    :cond_35
    iput v9, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1622
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_36

    .line 1623
    const/4 v8, -0x1

    goto/16 :goto_b

    .line 1624
    :cond_36
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_26

    .line 1625
    const/4 v8, 0x1

    goto/16 :goto_b

    .line 1629
    :cond_37
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    if-le v0, v14, :cond_39

    .line 1630
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->positiveVelocity()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1631
    const/high16 v9, 0x3f000000    # 0.5f

    .line 1635
    :goto_d
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    iget v3, v0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->mCount:I

    .line 1643
    :goto_e
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    mul-float/2addr v0, v9

    cmpg-float v0, v0, v5

    if-gez v0, :cond_3b

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3b

    .line 1645
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1646
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v9

    add-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto/16 :goto_b

    .line 1633
    :cond_38
    const/high16 v9, -0x41000000    # -0.5f

    goto :goto_d

    .line 1637
    :cond_39
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mFlingInfo:Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView$FlingInfo;->positiveVelocity()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1638
    const v9, 0x3e99999a    # 0.3f

    goto :goto_e

    .line 1640
    :cond_3a
    const v9, -0x41666666    # -0.3f

    goto :goto_e

    .line 1648
    :cond_3b
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v9

    add-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1649
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    mul-float/2addr v3, v12

    sget v4, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3c

    .line 1650
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    mul-float/2addr v0, v12

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto/16 :goto_b

    .line 1651
    :cond_3c
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    neg-float v3, v3

    mul-float/2addr v3, v12

    sget v4, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_26

    .line 1652
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    neg-float v0, v0

    mul-float/2addr v0, v12

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    goto/16 :goto_b

    .line 1695
    :cond_3d
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_41

    .line 1696
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1697
    if-eqz v10, :cond_3e

    .line 1698
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1700
    :cond_3e
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_40

    .line 1701
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 1705
    :cond_3f
    :goto_f
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V

    goto/16 :goto_c

    .line 1702
    :cond_40
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-gtz v0, :cond_3f

    .line 1703
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    goto :goto_f

    .line 1706
    :cond_41
    if-nez v7, :cond_33

    .line 1707
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1708
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1709
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollComplete()V

    goto/16 :goto_c

    .line 1716
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    .line 1718
    if-eqz v7, :cond_42

    .line 1719
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    .line 1720
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mLastSpringX:I

    sub-int v1, v0, v11

    .line 1728
    :goto_10
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mLastSpringX:I

    if-lez v0, :cond_44

    .line 1729
    const/16 v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1730
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    if-le v0, v1, :cond_43

    .line 1731
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    .line 1743
    :goto_11
    iput v11, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mLastSpringX:I

    .line 1749
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    if-eqz v0, :cond_46

    .line 1752
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    sget v2, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1760
    :goto_12
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mmRenderDelay:I

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRenderDelay(I)V

    goto/16 :goto_0

    .line 1722
    :cond_42
    const/4 v1, 0x0

    goto :goto_10

    .line 1733
    :cond_43
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    goto :goto_11

    .line 1736
    :cond_44
    const/16 v0, -0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1737
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    if-ge v0, v1, :cond_45

    .line 1738
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    goto :goto_11

    .line 1740
    :cond_45
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mSpringX:I

    goto :goto_11

    .line 1754
    :cond_46
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1755
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1756
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1757
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollComplete()V

    goto :goto_12

    .line 1764
    :pswitch_4
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const v3, 0x3e4ccccd    # 0.2f

    add-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1766
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_47

    .line 1767
    iput v13, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1768
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1770
    :cond_47
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mmRenderDelay:I

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRenderDelay(I)V

    goto/16 :goto_0

    .line 1774
    :pswitch_5
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    const v3, 0x3e4ccccd    # 0.2f

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1775
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_48

    .line 1776
    iput v5, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 1777
    iput v2, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1778
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1781
    :cond_48
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mmRenderDelay:I

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRenderDelay(I)V

    goto/16 :goto_0

    .line 1423
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected updateShadow()V
    .locals 2

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mShadowHeight:F

    invoke-virtual {v0, v1}, Lcom/oppo/model/md2/MdModel;->setShadowHeight(F)V

    .line 2182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mUpdateShadow:Z

    .line 2183
    return-void
.end method

.method public updateTexture(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 911
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$3;

    invoke-direct {v0, p0, p1}, Lcom/oppo/widget/Oppo3DScenePreView$3;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;I)V

    .line 921
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DScenePreView;->queueEvent(Ljava/lang/Runnable;)V

    .line 922
    return-void
.end method

.method protected updateTextureInfoBuffer(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x0

    .line 1904
    const/4 v1, 0x0

    .line 1905
    .local v1, "textureId":I
    const/4 v2, 0x0

    .line 1907
    .local v2, "used":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 1908
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->index:I

    if-ne v3, p1, :cond_3

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    if-lez v3, :cond_3

    .line 1909
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v3, v3, v0

    iget v1, v3, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    .line 1910
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v3, v3, v0

    iput v4, v3, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    .line 1911
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v3, v3, v0

    iput v4, v3, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->index:I

    .line 1912
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v3, v3, v0

    iput-boolean v4, v3, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->bdefault:Z

    .line 1917
    :cond_0
    if-lez v1, :cond_1

    .line 1918
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 1919
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView$TextureInfo;->textureId:I

    if-ne v3, v1, :cond_4

    .line 1920
    const/4 v2, 0x1

    .line 1926
    :cond_1
    if-nez v2, :cond_2

    .line 1927
    invoke-static {v1}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(I)Z

    .line 1928
    iget v3, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexId:I

    if-ne v1, v3, :cond_2

    .line 1929
    iput v4, p0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexId:I

    .line 1932
    :cond_2
    return-void

    .line 1907
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1918
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
