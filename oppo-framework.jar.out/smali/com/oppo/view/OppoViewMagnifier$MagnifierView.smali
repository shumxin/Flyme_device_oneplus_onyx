.class public Lcom/oppo/view/OppoViewMagnifier$MagnifierView;
.super Landroid/view/View;
.source "OppoViewMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/view/OppoViewMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MagnifierView"
.end annotation


# static fields
.field private static final BORDER_WIDTH:I = 0x18


# instance fields
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

.field final synthetic this$0:Lcom/oppo/view/OppoViewMagnifier;


# direct methods
.method protected constructor <init>(Lcom/oppo/view/OppoViewMagnifier;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    .line 293
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 277
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mOutlineRect:Landroid/graphics/RectF;

    .line 279
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mClipPath:Landroid/graphics/Path;

    .line 294
    invoke-direct {p0}, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->init()V

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/view/OppoViewMagnifier$MagnifierView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/view/OppoViewMagnifier$MagnifierView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mTmpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 298
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc08044f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 299
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v2, v2, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    iget-object v3, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v3, v3, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    .line 300
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 301
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v2, v2, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    iget-object v3, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v3, v3, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 305
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mOutlinePaint:Landroid/graphics/Paint;

    const v3, -0xbbbbbc

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 307
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 308
    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x41500000    # 13.0f

    const/high16 v4, 0x41400000    # 12.0f

    iget-object v5, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v5, v5, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    add-int/lit8 v5, v5, -0x18

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v6, v6, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    add-int/lit8 v6, v6, -0x18

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mOutlineRect:Landroid/graphics/RectF;

    .line 310
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mClipPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mOutlineRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 312
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v2, v2, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v3, v3, Lcom/oppo/view/OppoViewMagnifier;->mScale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapWidth:I

    .line 313
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v2, v2, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v3, v3, Lcom/oppo/view/OppoViewMagnifier;->mScale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapHeight:I

    .line 314
    iget v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapWidth:I

    iget v3, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    .line 315
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 316
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 317
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 318
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 319
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 320
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 323
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mPaint:Landroid/graphics/Paint;

    .line 324
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 325
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 326
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 328
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v2, v2, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    iget-object v3, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v3, v3, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mTmpBitmap:Landroid/graphics/Bitmap;

    .line 329
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 330
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 337
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 339
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapHeight:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 340
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 341
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    # getter for: Lcom/oppo/view/OppoViewMagnifier;->mDrawingX:F
    invoke-static {v1}, Lcom/oppo/view/OppoViewMagnifier;->access$200(Lcom/oppo/view/OppoViewMagnifier;)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    # getter for: Lcom/oppo/view/OppoViewMagnifier;->mDrawingY:F
    invoke-static {v2}, Lcom/oppo/view/OppoViewMagnifier;->access$300(Lcom/oppo/view/OppoViewMagnifier;)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 342
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    # getter for: Lcom/oppo/view/OppoViewMagnifier;->mHostView:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/view/OppoViewMagnifier;->access$400(Lcom/oppo/view/OppoViewMagnifier;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 343
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 345
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 346
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 347
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v1, v1, Lcom/oppo/view/OppoViewMagnifier;->mScale:F

    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v2, v2, Lcom/oppo/view/OppoViewMagnifier;->mScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 348
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 349
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 351
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mTmpBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 352
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 353
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v0, v0, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->this$0:Lcom/oppo/view/OppoViewMagnifier;

    iget v1, v1, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->setMeasuredDimension(II)V

    .line 334
    return-void
.end method
