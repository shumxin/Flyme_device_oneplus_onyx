.class public Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/Oppo3DScenePreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RollSceneRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;)V
    .locals 0

    .prologue
    .line 2306
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2309
    # invokes: Lcom/oppo/widget/Oppo3DScenePreView;->initModelData()V
    invoke-static {p1}, Lcom/oppo/widget/Oppo3DScenePreView;->access$200(Lcom/oppo/widget/Oppo3DScenePreView;)V

    .line 2310
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v4, 0x8078

    const v3, 0x8074

    const/16 v2, 0xde1

    .line 2438
    const/16 v1, 0x4100

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 2440
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 2442
    .local v0, "lastType":I
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v1}, Lcom/oppo/widget/Oppo3DScenePreView;->updateOffset()V

    .line 2444
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-boolean v1, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mUpdateShadow:Z

    if-eqz v1, :cond_0

    .line 2445
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v1}, Lcom/oppo/widget/Oppo3DScenePreView;->updateShadow()V

    .line 2448
    :cond_0
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 2450
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 2451
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 2453
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v1, p1}, Lcom/oppo/widget/Oppo3DScenePreView;->drawModel(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2455
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 2456
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 2457
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 2459
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-boolean v1, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mGlChanged:Z

    if-eqz v1, :cond_2

    .line 2460
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mGlChanged:Z

    .line 2461
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    new-instance v2, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer$1;

    invoke-direct {v2, p0, p1}, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer$1;-><init>(Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {v1, v2}, Lcom/oppo/widget/Oppo3DScenePreView;->post(Ljava/lang/Runnable;)Z

    .line 2470
    :cond_1
    :goto_0
    return-void

    .line 2467
    :cond_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    if-nez v1, :cond_1

    .line 2468
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v2, v2, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    invoke-virtual {v1, p1, v2}, Lcom/oppo/widget/Oppo3DScenePreView;->preLoadTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2338
    int-to-float v0, p2

    int-to-float v3, p3

    div-float v10, v0, v3

    .line 2340
    .local v10, "radio":F
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    if-eq v0, p3, :cond_2

    :cond_0
    const/4 v8, 0x1

    .line 2343
    .local v8, "init":Z
    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 2345
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v0, v3

    .line 2346
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v0, v3

    .line 2347
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v3, 0x2

    aput p2, v0, v3

    .line 2348
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mViewport:[I

    const/4 v3, 0x3

    aput p3, v0, v3

    .line 2354
    if-eqz v8, :cond_1

    .line 2355
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/oppo/model/md2/MdModel;->setFrame(F)V

    .line 2356
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 2357
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_WIDTH:F

    sget v4, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_HEIGHT:F

    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v5, v5, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/model/md2/MdModel;->fillRenderBuffer(ZZFFF)V

    .line 2364
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollFrameMode:I

    packed-switch v0, :pswitch_data_0

    .line 2384
    :goto_2
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    div-float/2addr v3, v10

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelHeight:F

    .line 2389
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mModelHeight:F

    const v4, 0x3f9a8279

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mNormalDistance:F

    .line 2391
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 2392
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_HEIGHT:F

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    div-float/2addr v3, v4

    const v4, 0x3f9a8279

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mLargeDistance:F

    .line 2394
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_HEIGHT:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView;->mFrameRadio:F

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView;->mCenterOffset:F

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomTransY:F

    .line 2395
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mNormalDistance:F

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView;->mLargeDistance:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView;->mFrontZ:F

    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v5, v5, Lcom/oppo/widget/Oppo3DScenePreView;->mModelZ:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomTransZ:F

    .line 2402
    :goto_3
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mModelZ:F

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView;->mNormalDistance:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 2409
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2410
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 2411
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide v4, 0x3fd921fb54442d18L    # 0.39269908169872414

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float v11, v0, v3

    .line 2413
    .local v11, "top":F
    neg-float v7, v11

    .line 2414
    .local v7, "bottom":F
    mul-float v1, v7, v10

    .line 2415
    .local v1, "left":F
    mul-float v2, v11, v10

    .line 2416
    .local v2, "right":F
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mCenterOffset:F

    mul-float v9, v11, v0

    .line 2421
    .local v9, "offset":F
    sub-float v3, v7, v9

    sub-float v4, v11, v9

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x459c4000    # 5000.0f

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 2424
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2426
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/Oppo3DScenePreView;->setUpCamera(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2428
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v3, 0x0

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 2429
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v3, 0x0

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 2431
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v3, 0x0

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mOffset:F

    .line 2432
    return-void

    .line 2340
    .end local v1    # "left":F
    .end local v2    # "right":F
    .end local v7    # "bottom":F
    .end local v8    # "init":Z
    .end local v9    # "offset":F
    .end local v11    # "top":F
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2360
    .restart local v8    # "init":Z
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModel:Lcom/oppo/model/md2/MdModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/model/md2/MdModel;->fillRenderBuffer(ZZFFF)V

    goto/16 :goto_1

    .line 2366
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    sget-object v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    sget-object v4, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    goto/16 :goto_2

    .line 2371
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    sget-object v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    sget-object v4, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    goto/16 :goto_2

    .line 2376
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    sget-object v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    sget-object v4, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_X_ARRAY:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mModelWidth:F

    goto/16 :goto_2

    .line 2397
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_HEIGHT:F

    const v4, 0x3f9a8279

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mLargeDistance:F

    .line 2398
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    sget v3, Lcom/oppo/widget/Oppo3DScenePreView;->ITEM_HEIGHT:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView;->mCenterOffset:F

    mul-float/2addr v3, v4

    const v4, 0x40066666    # 2.1f

    div-float/2addr v3, v4

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomTransY:F

    .line 2399
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v3, v3, Lcom/oppo/widget/Oppo3DScenePreView;->mNormalDistance:F

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView;->mLargeDistance:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView;->mFrontZ:F

    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v5, v5, Lcom/oppo/widget/Oppo3DScenePreView;->mModelZ:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mZoomTransZ:F

    goto/16 :goto_3

    .line 2364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v2, 0x0

    .line 2316
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 2317
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 2318
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 2319
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 2320
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 2321
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 2322
    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 2323
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 2324
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 2325
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 2327
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->clearTextureInfoBuffer()V

    .line 2329
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mGlChanged:Z

    .line 2331
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mDefaultTexId:I

    .line 2332
    return-void
.end method
