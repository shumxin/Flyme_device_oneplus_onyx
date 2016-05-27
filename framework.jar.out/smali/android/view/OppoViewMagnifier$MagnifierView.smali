.class public Landroid/view/OppoViewMagnifier$MagnifierView;
.super Landroid/view/View;
.source "OppoViewMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OppoViewMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MagnifierView"
.end annotation


# instance fields
.field private BORDER_WIDTH:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapCanvas:Landroid/graphics/Canvas;

.field private mBitmapHeight:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapWidth:I

.field private mClipPath:Landroid/graphics/Path;

.field private mMagnifierBitmap:Landroid/graphics/Bitmap;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mOutlineRect:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mTmpBitmap:Landroid/graphics/Bitmap;

.field private mTmpCanvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Landroid/view/OppoViewMagnifier;


# direct methods
.method protected constructor <init>(Landroid/view/OppoViewMagnifier;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    iput-object p1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    .line 311
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 295
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mOutlineRect:Landroid/graphics/RectF;

    .line 297
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mClipPath:Landroid/graphics/Path;

    .line 312
    invoke-direct {p0}, Landroid/view/OppoViewMagnifier$MagnifierView;->init()V

    .line 313
    return-void
.end method

.method static synthetic access$000(Landroid/view/OppoViewMagnifier$MagnifierView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/view/OppoViewMagnifier$MagnifierView;

    .prologue
    .line 290
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/OppoViewMagnifier$MagnifierView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/view/OppoViewMagnifier$MagnifierView;

    .prologue
    .line 290
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 319
    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Landroid/view/OppoViewMagnifier$MagnifierView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 324
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc08044f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    # setter for: Landroid/view/OppoViewMagnifier;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Landroid/view/OppoViewMagnifier;->access$202(Landroid/view/OppoViewMagnifier;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 331
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    # getter for: Landroid/view/OppoViewMagnifier;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/view/OppoViewMagnifier;->access$200(Landroid/view/OppoViewMagnifier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 332
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    # getter for: Landroid/view/OppoViewMagnifier;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/view/OppoViewMagnifier;->access$200(Landroid/view/OppoViewMagnifier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 335
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v1, v1, Landroid/view/OppoViewMagnifier;->mWidth:I

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v2, v2, Landroid/view/OppoViewMagnifier;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    .line 337
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 338
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    # getter for: Landroid/view/OppoViewMagnifier;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/view/OppoViewMagnifier;->access$200(Landroid/view/OppoViewMagnifier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v2, v2, Landroid/view/OppoViewMagnifier;->mWidth:I

    iget-object v3, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v3, v3, Landroid/view/OppoViewMagnifier;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 339
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    # getter for: Landroid/view/OppoViewMagnifier;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/view/OppoViewMagnifier;->access$200(Landroid/view/OppoViewMagnifier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050410

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->BORDER_WIDTH:I

    .line 349
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 350
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mOutlinePaint:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mOutlinePaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->BORDER_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 352
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 353
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->BORDER_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->BORDER_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v4, v4, Landroid/view/OppoViewMagnifier;->mWidth:I

    iget v5, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->BORDER_WIDTH:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v5, v5, Landroid/view/OppoViewMagnifier;->mHeight:I

    iget v6, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->BORDER_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mOutlineRect:Landroid/graphics/RectF;

    .line 355
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mOutlineRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 357
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v1, v1, Landroid/view/OppoViewMagnifier;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v2, v2, Landroid/view/OppoViewMagnifier;->mScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapWidth:I

    .line 358
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v1, v1, Landroid/view/OppoViewMagnifier;->mHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v2, v2, Landroid/view/OppoViewMagnifier;->mScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapHeight:I

    .line 360
    iget v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapWidth:I

    iget v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    .line 361
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 365
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 367
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 368
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 369
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 370
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 371
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mPaint:Landroid/graphics/Paint;

    .line 375
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 376
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 377
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 379
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v1, v1, Landroid/view/OppoViewMagnifier;->mWidth:I

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v2, v2, Landroid/view/OppoViewMagnifier;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpBitmap:Landroid/graphics/Bitmap;

    .line 380
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 384
    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 386
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 413
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 434
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 438
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    # getter for: Landroid/view/OppoViewMagnifier;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/OppoViewMagnifier;->access$200(Landroid/view/OppoViewMagnifier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 441
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 389
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v0, v0, Landroid/view/OppoViewMagnifier;->mWidth:I

    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v1, v1, Landroid/view/OppoViewMagnifier;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/OppoViewMagnifier$MagnifierView;->setMeasuredDimension(II)V

    .line 390
    return-void
.end method

.method prepareMagnifierContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 396
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapHeight:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 397
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 398
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    # getter for: Landroid/view/OppoViewMagnifier;->mDrawingX:F
    invoke-static {v1}, Landroid/view/OppoViewMagnifier;->access$300(Landroid/view/OppoViewMagnifier;)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    # getter for: Landroid/view/OppoViewMagnifier;->mDrawingY:F
    invoke-static {v2}, Landroid/view/OppoViewMagnifier;->access$400(Landroid/view/OppoViewMagnifier;)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 399
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    # getter for: Landroid/view/OppoViewMagnifier;->mHostView:Landroid/view/View;
    invoke-static {v0}, Landroid/view/OppoViewMagnifier;->access$500(Landroid/view/OppoViewMagnifier;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 400
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 402
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 403
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 405
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 406
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v1, v1, Landroid/view/OppoViewMagnifier;->mScale:F

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->this$0:Landroid/view/OppoViewMagnifier;

    iget v2, v2, Landroid/view/OppoViewMagnifier;->mScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 407
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 408
    iget-object v0, p0, Landroid/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 409
    return-void
.end method
