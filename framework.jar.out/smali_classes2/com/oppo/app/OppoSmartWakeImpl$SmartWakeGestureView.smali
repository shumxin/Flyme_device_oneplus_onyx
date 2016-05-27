.class Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;
.super Landroid/view/View;
.source "OppoSmartWakeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/app/OppoSmartWakeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartWakeGestureView"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mClipHeight:I

.field private mClipWidth:I

.field private mCol:I

.field mDestRect:Landroid/graphics/Rect;

.field private mDirection:I

.field private mDrawableResource:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRow:I

.field mSrcRect:Landroid/graphics/Rect;

.field private mStep:I

.field private mXScale:F

.field private mYScale:F

.field final synthetic this$0:Lcom/oppo/app/OppoSmartWakeImpl;


# direct methods
.method public constructor <init>(Lcom/oppo/app/OppoSmartWakeImpl;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 423
    iput-object p1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    .line 424
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 410
    iput v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    .line 411
    iput v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    .line 414
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    .line 418
    iput v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDirection:I

    .line 419
    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    .line 420
    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    .line 425
    invoke-direct {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->init()V

    .line 426
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0417

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    .line 430
    invoke-virtual {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0418

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    .line 431
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mSrcRect:Landroid/graphics/Rect;

    .line 432
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDestRect:Landroid/graphics/Rect;

    .line 433
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mPaint:Landroid/graphics/Paint;

    .line 434
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 435
    return-void
.end method


# virtual methods
.method public initDate(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 438
    iput p1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    .line 439
    iput p2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    .line 440
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    .line 442
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v10, 0x2

    const/4 v9, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, -0x1

    const/4 v8, 0x1

    .line 477
    const-string v2, "OppoSmartWakeImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDraw() mBitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    if-gez v2, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    rem-int/2addr v3, v4

    mul-int v0, v2, v3

    .line 482
    .local v0, "left":I
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    div-int/2addr v3, v4

    mul-int v1, v2, v3

    .line 484
    .local v1, "top":I
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    if-eq v2, v8, :cond_2

    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    .line 485
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    iget v5, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    rem-int/2addr v4, v5

    sub-int/2addr v3, v4

    mul-int v0, v2, v3

    .line 486
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    iget v5, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    mul-int v1, v2, v3

    .line 488
    :cond_2
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mSrcRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 490
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$100(Lcom/oppo/app/OppoSmartWakeImpl;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 491
    invoke-virtual {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    .line 492
    invoke-virtual {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    mul-float/2addr v3, v7

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 493
    invoke-virtual {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    mul-float/2addr v3, v7

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 512
    :goto_1
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDestRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 513
    const-string v2, "OppoSmartWakeImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDraw() mXScale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mYScale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v2, "OppoSmartWakeImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDraw() left="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 517
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 518
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 519
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 522
    :cond_3
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 523
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 537
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    .line 538
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    if-lez v2, :cond_b

    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    iget v4, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_b

    .line 539
    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    if-ne v8, v2, :cond_7

    .line 540
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$400(Lcom/oppo/app/OppoSmartWakeImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J
    invoke-static {v3}, Lcom/oppo/app/OppoSmartWakeImpl;->access$200(Lcom/oppo/app/OppoSmartWakeImpl;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mFisrtFrameDelay:I
    invoke-static {v3}, Lcom/oppo/app/OppoSmartWakeImpl;->access$300(Lcom/oppo/app/OppoSmartWakeImpl;)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 495
    :cond_4
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    if-ne v2, v6, :cond_5

    .line 496
    invoke-virtual {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    .line 497
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 503
    :goto_2
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    if-ne v2, v6, :cond_6

    .line 504
    invoke-virtual {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    .line 505
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    goto/16 :goto_1

    .line 499
    :cond_5
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    .line 500
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mXScale:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_2

    .line 507
    :cond_6
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    .line 508
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mYScale:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    goto/16 :goto_1

    .line 542
    :cond_7
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_9

    .line 544
    :cond_8
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$400(Lcom/oppo/app/OppoSmartWakeImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J
    invoke-static {v3}, Lcom/oppo/app/OppoSmartWakeImpl;->access$200(Lcom/oppo/app/OppoSmartWakeImpl;)J

    move-result-wide v4

    mul-long/2addr v4, v10

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 545
    :cond_9
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_a

    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    move-result-object v2

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    const/16 v3, 0xb

    if-gt v2, v3, :cond_a

    .line 547
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$400(Lcom/oppo/app/OppoSmartWakeImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J
    invoke-static {v3}, Lcom/oppo/app/OppoSmartWakeImpl;->access$200(Lcom/oppo/app/OppoSmartWakeImpl;)J

    move-result-wide v4

    div-long/2addr v4, v10

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 549
    :cond_a
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$400(Lcom/oppo/app/OppoSmartWakeImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J
    invoke-static {v3}, Lcom/oppo/app/OppoSmartWakeImpl;->access$200(Lcom/oppo/app/OppoSmartWakeImpl;)J

    move-result-wide v4

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 553
    :cond_b
    iput v6, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    .line 554
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 555
    iput-object v9, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    .line 556
    invoke-virtual {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->invalidate()V

    .line 557
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mOnAnimationEndListener:Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$500(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    # getter for: Lcom/oppo/app/OppoSmartWakeImpl;->mOnAnimationEndListener:Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;
    invoke-static {v2}, Lcom/oppo/app/OppoSmartWakeImpl;->access$500(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    invoke-interface {v2, v3}, Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;->onAnimationEnd(Lcom/oppo/app/OppoSmartWakeImpl;)V

    goto/16 :goto_0
.end method

.method public setDrawableResource(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 458
    const-string v0, "OppoSmartWakeImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrawableResource() id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDrawableResource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDrawableResource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDrawableResource:I

    if-eq v0, p1, :cond_1

    .line 461
    iput p1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mDrawableResource:I

    .line 462
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    .line 466
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mCol:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    .line 468
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mRow:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    .line 473
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipHeight:I

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mClipWidth:I

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->mStep:I

    .line 451
    invoke-virtual {p0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->invalidate()V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    invoke-virtual {v0}, Lcom/oppo/app/OppoSmartWakeImpl;->destroy()V

    goto :goto_0
.end method
