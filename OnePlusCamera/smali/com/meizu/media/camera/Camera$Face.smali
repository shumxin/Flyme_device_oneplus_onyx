.class public Lcom/meizu/media/camera/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/oneplus/base/RecyclableObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# static fields
.field private static final POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/meizu/media/camera/Camera$Face;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x20

.field private static m_IsSmileCaptureSupported:Z


# instance fields
.field private final m_Bounds:Landroid/graphics/RectF;

.field private volatile m_Id:I

.field private volatile m_IsFreeInstance:Z

.field private volatile m_IsSmiling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 425
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/meizu/media/camera/Camera$Face;->POOL:Ljava/util/Queue;

    .line 430
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/media/camera/Camera$Face;->m_IsSmileCaptureSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    .line 434
    return-void
.end method

.method private static declared-synchronized getSmileValue(Ljava/lang/Object;)Z
    .locals 10
    .param p0, "face"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 530
    const-class v7, Lcom/meizu/media/camera/Camera$Face;

    monitor-enter v7

    const/4 v2, 0x0

    .line 531
    .local v2, "isSmiling":Z
    :try_start_0
    sget-boolean v8, Lcom/meizu/media/camera/Camera$Face;->m_IsSmileCaptureSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 534
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 535
    .local v3, "smileFace":Ljava/lang/Class;
    const-string v8, "getIsSmile"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 536
    .local v1, "getIsSmileMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 537
    .local v4, "smileIntValue":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v5, :cond_1

    move v2, v5

    .line 538
    :goto_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/meizu/media/camera/Camera$Face;->m_IsSmileCaptureSupported:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    .end local v1    # "getIsSmileMethod":Ljava/lang/reflect/Method;
    .end local v3    # "smileFace":Ljava/lang/Class;
    .end local v4    # "smileIntValue":Ljava/lang/Integer;
    :cond_0
    :goto_1
    monitor-exit v7

    return v2

    .restart local v1    # "getIsSmileMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "smileFace":Ljava/lang/Class;
    .restart local v4    # "smileIntValue":Ljava/lang/Integer;
    :cond_1
    move v2, v6

    .line 537
    goto :goto_0

    .line 539
    .end local v1    # "getIsSmileMethod":Ljava/lang/reflect/Method;
    .end local v3    # "smileFace":Ljava/lang/Class;
    .end local v4    # "smileIntValue":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "Face"

    const-string v6, "getSmileValue() - failed to get smile status"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 541
    const/4 v5, 0x0

    sput-boolean v5, Lcom/meizu/media/camera/Camera$Face;->m_IsSmileCaptureSupported:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 530
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method public static declared-synchronized obtain(Landroid/graphics/Rect;Landroid/hardware/camera2/params/Face;)Lcom/meizu/media/camera/Camera$Face;
    .locals 14
    .param p0, "cropRegion"    # Landroid/graphics/Rect;
    .param p1, "data"    # Landroid/hardware/camera2/params/Face;

    .prologue
    .line 471
    const-class v9, Lcom/meizu/media/camera/Camera$Face;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lcom/meizu/media/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/Camera$Face;

    .line 472
    .local v4, "face":Lcom/meizu/media/camera/Camera$Face;
    if-nez v4, :cond_0

    .line 473
    new-instance v4, Lcom/meizu/media/camera/Camera$Face;

    .end local v4    # "face":Lcom/meizu/media/camera/Camera$Face;
    invoke-direct {v4}, Lcom/meizu/media/camera/Camera$Face;-><init>()V

    .line 474
    .restart local v4    # "face":Lcom/meizu/media/camera/Camera$Face;
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 475
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v10, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    int-to-float v5, v8

    .line 476
    .local v5, "left":F
    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v10, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    int-to-float v7, v8

    .line 477
    .local v7, "top":F
    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v10, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    int-to-float v6, v8

    .line 478
    .local v6, "right":F
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    int-to-float v0, v8

    .line 479
    .local v0, "bottom":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v3, v8

    .line 480
    .local v3, "cropWidth":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v2, v8

    .line 481
    .local v2, "cropHeight":F
    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/meizu/media/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 482
    iget-object v8, v4, Lcom/meizu/media/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    div-float v10, v5, v3

    div-float v11, v7, v2

    div-float v12, v6, v3

    div-float v13, v0, v2

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 483
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v8

    iput v8, v4, Lcom/meizu/media/camera/Camera$Face;->m_Id:I

    .line 484
    invoke-static {p1}, Lcom/meizu/media/camera/Camera$Face;->getSmileValue(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v4, Lcom/meizu/media/camera/Camera$Face;->m_IsSmiling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit v9

    return-object v4

    .line 471
    .end local v0    # "bottom":F
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "cropHeight":F
    .end local v3    # "cropWidth":F
    .end local v4    # "face":Lcom/meizu/media/camera/Camera$Face;
    .end local v5    # "left":F
    .end local v6    # "right":F
    .end local v7    # "top":F
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static declared-synchronized obtain(Landroid/hardware/Camera$Face;)Lcom/meizu/media/camera/Camera$Face;
    .locals 9
    .param p0, "data"    # Landroid/hardware/Camera$Face;

    .prologue
    const/high16 v8, 0x44fa0000    # 2000.0f

    .line 496
    const-class v7, Lcom/meizu/media/camera/Camera$Face;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/meizu/media/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/Camera$Face;

    .line 497
    .local v2, "face":Lcom/meizu/media/camera/Camera$Face;
    if-nez v2, :cond_0

    .line 498
    new-instance v2, Lcom/meizu/media/camera/Camera$Face;

    .end local v2    # "face":Lcom/meizu/media/camera/Camera$Face;
    invoke-direct {v2}, Lcom/meizu/media/camera/Camera$Face;-><init>()V

    .line 499
    .restart local v2    # "face":Lcom/meizu/media/camera/Camera$Face;
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 500
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v3, v6, v8

    .line 501
    .local v3, "left":F
    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v5, v6, v8

    .line 502
    .local v5, "top":F
    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v4, v6, v8

    .line 503
    .local v4, "right":F
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v0, v6, v8

    .line 504
    .local v0, "bottom":F
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/meizu/media/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 505
    iget-object v6, v2, Lcom/meizu/media/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v5, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 506
    iget v6, p0, Landroid/hardware/Camera$Face;->id:I

    iput v6, v2, Lcom/meizu/media/camera/Camera$Face;->m_Id:I

    .line 507
    invoke-static {p0}, Lcom/meizu/media/camera/Camera$Face;->getSmileValue(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/meizu/media/camera/Camera$Face;->m_IsSmiling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit v7

    return-object v2

    .line 496
    .end local v0    # "bottom":F
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "face":Lcom/meizu/media/camera/Camera$Face;
    .end local v3    # "left":F
    .end local v4    # "right":F
    .end local v5    # "top":F
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static declared-synchronized obtain(Lcom/meizu/media/camera/Camera$Face;)Lcom/meizu/media/camera/Camera$Face;
    .locals 4
    .param p0, "data"    # Lcom/meizu/media/camera/Camera$Face;

    .prologue
    .line 518
    const-class v2, Lcom/meizu/media/camera/Camera$Face;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/meizu/media/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera$Face;

    .line 519
    .local v0, "face":Lcom/meizu/media/camera/Camera$Face;
    if-nez v0, :cond_0

    .line 520
    new-instance v0, Lcom/meizu/media/camera/Camera$Face;

    .end local v0    # "face":Lcom/meizu/media/camera/Camera$Face;
    invoke-direct {v0}, Lcom/meizu/media/camera/Camera$Face;-><init>()V

    .line 521
    .restart local v0    # "face":Lcom/meizu/media/camera/Camera$Face;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/meizu/media/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 522
    iget-object v1, v0, Lcom/meizu/media/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/meizu/media/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 523
    iget v1, p0, Lcom/meizu/media/camera/Camera$Face;->m_Id:I

    iput v1, v0, Lcom/meizu/media/camera/Camera$Face;->m_Id:I

    .line 524
    iget-boolean v1, p0, Lcom/meizu/media/camera/Camera$Face;->m_IsSmiling:Z

    iput-boolean v1, v0, Lcom/meizu/media/camera/Camera$Face;->m_IsSmiling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit v2

    return-object v0

    .line 518
    .end local v0    # "face":Lcom/meizu/media/camera/Camera$Face;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final getBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/meizu/media/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/meizu/media/camera/Camera$Face;->m_Id:I

    return v0
.end method

.method public final isSmiling()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/meizu/media/camera/Camera$Face;->m_IsSmiling:Z

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 554
    const-class v1, Lcom/meizu/media/camera/Camera$Face;

    monitor-enter v1

    .line 556
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/media/camera/Camera$Face;->m_IsFreeInstance:Z

    if-nez v0, :cond_0

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 559
    sget-object v0, Lcom/meizu/media/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 560
    sget-object v0, Lcom/meizu/media/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_0
    monitor-exit v1

    .line 563
    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
