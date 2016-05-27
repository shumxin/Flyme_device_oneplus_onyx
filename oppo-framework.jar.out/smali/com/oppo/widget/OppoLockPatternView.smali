.class public Lcom/oppo/widget/OppoLockPatternView;
.super Landroid/view/View;
.source "OppoLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoLockPatternView$SavedState;,
        Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;,
        Lcom/oppo/widget/OppoLockPatternView$DisplayMode;,
        Lcom/oppo/widget/OppoLockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field static final STATUS_BAR_HEIGHT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "OppoLockPatternView"


# instance fields
.field private mAlpha:I

.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mAspect:I

.field private mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapGreen:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapRed:Landroid/graphics/Bitmap;

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDefaultDiameterFactor:F

.field private mDefaultTrueColor:I

.field private mDefaultWrongColor:I

.field private mDiameterFactor:F

.field private mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

.field private mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

.field private mDrawableBtnDefault:Landroid/graphics/drawable/Drawable;

.field private mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

.field private mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

.field private mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

.field private mDrawableGreen:Landroid/graphics/drawable/Drawable;

.field private mDrawableRed:Landroid/graphics/drawable/Drawable;

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mNotDraw:[[Z

.field private mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintAlpha:[[I

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private final mStrokeAlpha:I

.field private mTranslateY:[[F

.field private mTrueColor:I

.field private mWrongColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 297
    const v0, 0xc010447

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 302
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawingProfilingStarted:Z

    .line 82
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 96
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0x9

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 103
    const/4 v11, 0x3

    const/4 v12, 0x3

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    .line 109
    const/high16 v11, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 110
    const/high16 v11, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 114
    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 115
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 116
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 117
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 118
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 120
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    .line 121
    const v11, 0x3eb33333    # 0.35f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultDiameterFactor:F

    .line 122
    const/16 v11, 0x7f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mStrokeAlpha:I

    .line 123
    const v11, 0x3f19999a    # 0.6f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    .line 142
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 143
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 149
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 150
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 152
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

    .line 153
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

    .line 154
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableBtnDefault:Landroid/graphics/drawable/Drawable;

    .line 159
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableGreen:Landroid/graphics/drawable/Drawable;

    .line 160
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    .line 163
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

    .line 164
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

    .line 167
    const/16 v11, 0x33

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultTrueColor:I

    .line 168
    const/16 v11, 0x66

    const/16 v12, 0xff

    const/16 v13, 0x18

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultWrongColor:I

    .line 1408
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAlpha:I

    .line 1455
    const/4 v11, 0x3

    const/4 v12, 0x3

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mNotDraw:[[Z

    .line 1456
    const/4 v11, 0x3

    const/4 v12, 0x3

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[F

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mTranslateY:[[F

    .line 1457
    const/4 v11, 0x3

    new-array v11, v11, [[I

    const/4 v12, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_1

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_2

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaintAlpha:[[I

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 305
    .local v10, "resources":Landroid/content/res/Resources;
    sget-object v11, Loppo/R$styleable;->OppoLockPatternView:[I

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 307
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "aspect":Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

    .line 309
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

    .line 310
    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

    .line 311
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

    .line 312
    const/4 v11, 0x5

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

    .line 314
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_0

    .line 315
    const v11, 0xc080423

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

    .line 317
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_1

    .line 318
    const v11, 0xc080424

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

    .line 320
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_2

    .line 321
    const v11, 0xc080425

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

    .line 326
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableBtnDefault:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_3

    .line 327
    const v11, 0xc080429

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableBtnDefault:Landroid/graphics/drawable/Drawable;

    .line 329
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableGreen:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_4

    .line 330
    const v11, 0xc08042a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableGreen:Landroid/graphics/drawable/Drawable;

    .line 332
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_5

    .line 333
    const v11, 0xc08042b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    .line 337
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_6

    .line 338
    const v11, 0xc080426

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

    .line 340
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_7

    .line 341
    const v11, 0xc080427

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

    .line 343
    :cond_7
    const/4 v11, 0x6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultDiameterFactor:F

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    .line 345
    const/4 v11, 0x7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultTrueColor:I

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mTrueColor:I

    .line 346
    const/16 v11, 0x8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultWrongColor:I

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mWrongColor:I

    .line 349
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 351
    const-string v11, "square"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 352
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    .line 361
    :goto_0
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oppo/widget/OppoLockPatternView;->setClickable(Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 365
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v12, 0x4d

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v12, 0x7f

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->initBitmapResources()V

    .line 391
    const/4 v11, 0x6

    new-array v7, v11, [Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapGreen:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapRed:Landroid/graphics/Bitmap;

    aput-object v12, v7, v11

    .line 395
    .local v7, "bitmaps":[Landroid/graphics/Bitmap;
    move-object v4, v7

    .local v4, "arr$":[Landroid/graphics/Bitmap;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_b

    aget-object v6, v4, v8

    .line 396
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    .line 397
    move-object/from16 v0, p0

    iget v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    .line 395
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 353
    .end local v4    # "arr$":[Landroid/graphics/Bitmap;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bitmaps":[Landroid/graphics/Bitmap;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_8
    const-string v11, "lock_width"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 354
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 355
    :cond_9
    const-string v11, "lock_height"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 356
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 358
    :cond_a
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 400
    .restart local v4    # "arr$":[Landroid/graphics/Bitmap;
    .restart local v7    # "bitmaps":[Landroid/graphics/Bitmap;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    :cond_b
    return-void

    .line 1457
    :array_0
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoLockPatternView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoLockPatternView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mAlpha:I

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoLockPatternView;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLockPatternView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaintAlpha:[[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoLockPatternView;)[[Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLockPatternView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mNotDraw:[[Z

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoLockPatternView;)[[F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLockPatternView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mTranslateY:[[F

    return-object v0
.end method

.method private addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V
    .locals 3
    .param p1, "newCell"    # Lcom/oppo/widget/OppoLockPatternView$Cell;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 714
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyCellAdded()V

    .line 716
    return-void
.end method

.method private changePaintColor()V
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mWrongColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1404
    :goto_0
    return-void

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mTrueColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private checkForNewHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 721
    invoke-direct {p0, p2}, Lcom/oppo/widget/OppoLockPatternView;->getRowHit(F)I

    move-result v1

    .line 722
    .local v1, "rowHit":I
    if-gez v1, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-object v2

    .line 725
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->getColumnHit(F)I

    move-result v0

    .line 726
    .local v0, "columnHit":I
    if-ltz v0, :cond_0

    .line 730
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 733
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->of(II)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 582
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 583
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 584
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 582
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoLockPatternView;->checkForNewHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v0

    .line 673
    .local v0, "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 676
    const/4 v4, 0x0

    .line 677
    .local v4, "fillInGapCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 678
    .local v7, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 679
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 680
    .local v6, "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v8, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    sub-int v2, v8, v11

    .line 681
    .local v2, "dRow":I
    iget v8, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    sub-int v1, v8, v11

    .line 683
    .local v1, "dColumn":I
    iget v5, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    .line 684
    .local v5, "fillInRow":I
    iget v3, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    .line 686
    .local v3, "fillInColumn":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 687
    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    if-lez v2, :cond_6

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    .line 690
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    .line 691
    iget v8, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    if-lez v1, :cond_1

    move v10, v9

    :cond_1
    add-int v3, v8, v10

    .line 694
    :cond_2
    invoke-static {v5, v3}, Lcom/oppo/widget/OppoLockPatternView$Cell;->of(II)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v4

    .line 697
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    iget v10, v4, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v8, v8, v10

    iget v10, v4, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    .line 699
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoLockPatternView;->addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V

    .line 701
    :cond_4
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V

    .line 702
    iget-boolean v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_5

    .line 703
    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Lcom/oppo/widget/OppoLockPatternView;->performHapticFeedback(II)Z

    .line 709
    .end local v0    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v4    # "fillInGapCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_5
    :goto_1
    return-object v0

    .restart local v0    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v1    # "dColumn":I
    .restart local v2    # "dRow":I
    .restart local v3    # "fillInColumn":I
    .restart local v4    # "fillInGapCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v5    # "fillInRow":I
    .restart local v6    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_6
    move v8, v10

    .line 687
    goto :goto_0

    .line 709
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v4    # "fillInGapCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFLcom/oppo/widget/OppoLockPatternView$Cell;Lcom/oppo/widget/OppoLockPatternView$Cell;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # F
    .param p3, "topY"    # F
    .param p4, "start"    # Lcom/oppo/widget/OppoLockPatternView$Cell;
    .param p5, "end"    # Lcom/oppo/widget/OppoLockPatternView$Cell;

    .prologue
    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/4 v10, 0x1

    .line 1152
    .local v10, "green":Z
    :goto_0
    move-object/from16 v0, p5

    iget v9, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    .line 1153
    .local v9, "endRow":I
    move-object/from16 v0, p4

    iget v14, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    .line 1154
    .local v14, "startRow":I
    move-object/from16 v0, p5

    iget v8, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    .line 1155
    .local v8, "endColumn":I
    move-object/from16 v0, p4

    iget v13, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    .line 1158
    .local v13, "startColumn":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v11, v18, 0x2

    .line 1159
    .local v11, "offsetX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v12, v18, 0x2

    .line 1164
    .local v12, "offsetY":I
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 1165
    .local v5, "arrow":Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    .line 1166
    .local v7, "cellWidth":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    .line 1169
    .local v6, "cellHeight":I
    sub-int v18, v9, v14

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-int v20, v8, v13

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    .line 1171
    .local v17, "theta":F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42b40000    # 90.0f

    add-float v4, v18, v19

    .line 1174
    .local v4, "angle":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 1175
    .local v15, "sx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 1176
    .local v16, "sy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    int-to-float v0, v11

    move/from16 v19, v0

    add-float v19, v19, p2

    int-to-float v0, v12

    move/from16 v20, v0

    add-float v20, v20, p3

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    int-to-float v0, v6

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    sub-int v19, v7, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1185
    return-void

    .line 1150
    .end local v4    # "angle":F
    .end local v5    # "arrow":Landroid/graphics/Bitmap;
    .end local v6    # "cellHeight":I
    .end local v7    # "cellWidth":I
    .end local v8    # "endColumn":I
    .end local v9    # "endRow":I
    .end local v10    # "green":Z
    .end local v11    # "offsetX":I
    .end local v12    # "offsetY":I
    .end local v13    # "startColumn":I
    .end local v14    # "startRow":I
    .end local v15    # "sx":F
    .end local v16    # "sy":F
    .end local v17    # "theta":F
    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1164
    .restart local v8    # "endColumn":I
    .restart local v9    # "endRow":I
    .restart local v10    # "green":Z
    .restart local v11    # "offsetX":I
    .restart local v12    # "offsetY":I
    .restart local v13    # "startColumn":I
    .restart local v14    # "startRow":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIIIZ)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # I
    .param p3, "topY"    # I
    .param p4, "i"    # I
    .param p5, "j"    # I
    .param p6, "partOfPattern"    # Z

    .prologue
    .line 1194
    const/4 v3, 0x0

    .line 1203
    .local v3, "outerCircle":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v10, v11, :cond_5

    .line 1205
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapGreen:Landroid/graphics/Bitmap;

    .line 1247
    :goto_0
    iget v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    .line 1248
    .local v9, "width":I
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    .line 1250
    .local v0, "height":I
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 1251
    .local v5, "squareWidth":F
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 1253
    .local v4, "squareHeight":F
    int-to-float v10, v9

    sub-float v10, v5, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-int v1, v10

    .line 1254
    .local v1, "offsetX":I
    int-to-float v10, v0

    sub-float v10, v4, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-int v2, v10

    .line 1257
    .local v2, "offsetY":I
    iget v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    iget v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1258
    .local v6, "sx":F
    iget v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    iget v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1266
    .local v7, "sy":F
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mTranslateY:[[F

    aget-object v10, v10, p4

    aget v8, v10, p5

    .line 1267
    .local v8, "value":F
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v11, p2, v1

    int-to-float v11, v11

    add-int v12, p3, v2

    int-to-float v12, v12

    add-float/2addr v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1270
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1271
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1272
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1275
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v10, v11, :cond_1

    .line 1276
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    iget-object v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v12, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1277
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mAlpha:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1287
    :cond_1
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mNotDraw:[[Z

    aget-object v10, v10, p4

    aget-boolean v10, v10, p5

    if-nez v10, :cond_2

    .line 1288
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaintAlpha:[[I

    aget-object v11, v11, p4

    aget v11, v11, p5

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1289
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1295
    :cond_2
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v10, v11, :cond_4

    .line 1296
    :cond_3
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/16 v11, 0xff

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1299
    :cond_4
    return-void

    .line 1207
    .end local v0    # "height":I
    .end local v1    # "offsetX":I
    .end local v2    # "offsetY":I
    .end local v4    # "squareHeight":F
    .end local v5    # "squareWidth":F
    .end local v6    # "sx":F
    .end local v7    # "sy":F
    .end local v8    # "value":F
    .end local v9    # "width":I
    :cond_5
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v10, v11, :cond_6

    .line 1209
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapRed:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1211
    :cond_6
    if-eqz p6, :cond_7

    iget-boolean v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v10, v11, :cond_8

    .line 1213
    :cond_7
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1220
    :cond_8
    iget-boolean v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-eqz v10, :cond_9

    .line 1222
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1229
    :cond_9
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v10, v11, :cond_a

    .line 1231
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1238
    :cond_a
    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v10, v11, :cond_b

    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v10, v11, :cond_c

    .line 1241
    :cond_b
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 1243
    :cond_c
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown display mode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 1011
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 1015
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .param p1, "x"    # F

    .prologue
    .line 765
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 766
    .local v4, "squareWidth":F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 768
    .local v1, "hitSize":F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 769
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 771
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 772
    .local v0, "hitLeft":F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 776
    .end local v0    # "hitLeft":F
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 769
    .restart local v0    # "hitLeft":F
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    .end local v0    # "hitLeft":F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getRowHit(F)I
    .locals 8
    .param p1, "y"    # F

    .prologue
    .line 744
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 745
    .local v4, "squareHeight":F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 747
    .local v0, "hitSize":F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 748
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 750
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 751
    .local v1, "hitTop":F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 755
    .end local v1    # "hitTop":F
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 748
    .restart local v1    # "hitTop":F
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 755
    .end local v1    # "hitTop":F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 978
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 979
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 980
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 981
    .local v6, "y":F
    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoLockPatternView;->detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v1

    .line 982
    .local v1, "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    if-eqz v1, :cond_2

    .line 983
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 984
    sget-object v7, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 985
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternStarted()V

    .line 990
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 991
    iget v7, v1, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 992
    .local v2, "startX":F
    iget v7, v1, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 994
    .local v3, "startY":F
    iget v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .line 995
    .local v4, "widthOffset":F
    iget v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .line 997
    .local v0, "heightOffset":F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/oppo/widget/OppoLockPatternView;->invalidate(IIII)V

    .line 1000
    .end local v0    # "heightOffset":F
    .end local v2    # "startX":F
    .end local v3    # "startY":F
    .end local v4    # "widthOffset":F
    :cond_1
    iput v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 1001
    iput v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 1008
    return-void

    .line 986
    :cond_2
    iget-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-eqz v7, :cond_0

    .line 987
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 988
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 31
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 837
    .local v8, "historySize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    add-int/lit8 v27, v8, 0x1

    move/from16 v0, v27

    if-ge v10, v0, :cond_c

    .line 838
    if-ge v10, v8, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v25

    .line 839
    .local v25, "x":F
    :goto_1
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v26

    .line 840
    .local v26, "y":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 841
    .local v18, "patternSizePreHitDetect":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoLockPatternView;->detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v9

    .line 842
    .local v9, "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 843
    .local v17, "patternSize":I
    if-eqz v9, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 844
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternStarted()V

    .line 848
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 849
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    move/from16 v27, v0

    sub-float v27, v26, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 850
    .local v6, "dy":F
    add-float v27, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v28, v0

    const v29, 0x3c23d70a    # 0.01f

    mul-float v28, v28, v29

    cmpl-float v27, v27, v28

    if-lez v27, :cond_2

    .line 852
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 853
    .local v14, "oldX":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 855
    .local v15, "oldY":F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 856
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 858
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    if-lez v17, :cond_1

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 860
    .local v16, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v19, v27, v28

    .line 862
    .local v19, "radius":F
    add-int/lit8 v27, v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 864
    .local v12, "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v0, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 865
    .local v21, "startX":F
    iget v0, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 870
    .local v22, "startY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 872
    .local v11, "invalidateRect":Landroid/graphics/Rect;
    cmpg-float v27, v21, v25

    if-gez v27, :cond_5

    .line 873
    move/from16 v13, v21

    .line 874
    .local v13, "left":F
    move/from16 v20, v25

    .line 880
    .local v20, "right":F
    :goto_3
    cmpg-float v27, v22, v26

    if-gez v27, :cond_6

    .line 881
    move/from16 v23, v22

    .line 882
    .local v23, "top":F
    move/from16 v4, v26

    .line 889
    .local v4, "bottom":F
    :goto_4
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 892
    cmpg-float v27, v21, v14

    if-gez v27, :cond_7

    .line 893
    move/from16 v13, v21

    .line 894
    move/from16 v20, v14

    .line 900
    :goto_5
    cmpg-float v27, v22, v15

    if-gez v27, :cond_8

    .line 901
    move/from16 v23, v22

    .line 902
    move v4, v15

    .line 909
    :goto_6
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 913
    if-eqz v9, :cond_1

    .line 914
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 915
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 917
    const/16 v27, 0x2

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 919
    add-int/lit8 v27, v17, -0x1

    sub-int v28, v17, v18

    sub-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    check-cast v9, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 921
    .restart local v9    # "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 922
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 924
    cmpg-float v27, v21, v14

    if-gez v27, :cond_9

    .line 925
    move/from16 v13, v21

    .line 926
    move/from16 v20, v14

    .line 932
    :goto_7
    cmpg-float v27, v22, v15

    if-gez v27, :cond_a

    .line 933
    move/from16 v23, v22

    .line 934
    move v4, v15

    .line 944
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v24, v27, v28

    .line 945
    .local v24, "widthOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v7, v27, v28

    .line 947
    .local v7, "heightOffset":F
    sub-float v27, v13, v24

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 953
    .end local v4    # "bottom":F
    .end local v7    # "heightOffset":F
    .end local v11    # "invalidateRect":Landroid/graphics/Rect;
    .end local v12    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v13    # "left":F
    .end local v16    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .end local v19    # "radius":F
    .end local v20    # "right":F
    .end local v21    # "startX":F
    .end local v22    # "startY":F
    .end local v23    # "top":F
    .end local v24    # "widthOffset":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 837
    .end local v14    # "oldX":F
    .end local v15    # "oldY":F
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 838
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v9    # "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v17    # "patternSize":I
    .end local v18    # "patternSizePreHitDetect":I
    .end local v25    # "x":F
    .end local v26    # "y":F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    goto/16 :goto_1

    .line 839
    .restart local v25    # "x":F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    goto/16 :goto_2

    .line 876
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v9    # "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v11    # "invalidateRect":Landroid/graphics/Rect;
    .restart local v12    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v14    # "oldX":F
    .restart local v15    # "oldY":F
    .restart local v16    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .restart local v17    # "patternSize":I
    .restart local v18    # "patternSizePreHitDetect":I
    .restart local v19    # "radius":F
    .restart local v21    # "startX":F
    .restart local v22    # "startY":F
    .restart local v26    # "y":F
    :cond_5
    move/from16 v13, v25

    .line 877
    .restart local v13    # "left":F
    move/from16 v20, v21

    .restart local v20    # "right":F
    goto/16 :goto_3

    .line 884
    :cond_6
    move/from16 v23, v26

    .line 885
    .restart local v23    # "top":F
    move/from16 v4, v22

    .restart local v4    # "bottom":F
    goto/16 :goto_4

    .line 896
    :cond_7
    move v13, v14

    .line 897
    move/from16 v20, v21

    goto/16 :goto_5

    .line 904
    :cond_8
    move/from16 v23, v15

    .line 905
    move/from16 v4, v22

    goto/16 :goto_6

    .line 928
    :cond_9
    move v13, v14

    .line 929
    move/from16 v20, v21

    goto :goto_7

    .line 936
    :cond_a
    move/from16 v23, v15

    .line 937
    move/from16 v4, v22

    goto :goto_8

    .line 940
    :cond_b
    move/from16 v20, v21

    move/from16 v13, v21

    .line 941
    move/from16 v4, v22

    move/from16 v23, v22

    goto :goto_8

    .line 956
    .end local v4    # "bottom":F
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v9    # "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v11    # "invalidateRect":Landroid/graphics/Rect;
    .end local v12    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v13    # "left":F
    .end local v14    # "oldX":F
    .end local v15    # "oldY":F
    .end local v16    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .end local v17    # "patternSize":I
    .end local v18    # "patternSizePreHitDetect":I
    .end local v19    # "radius":F
    .end local v20    # "right":F
    .end local v21    # "startX":F
    .end local v22    # "startY":F
    .end local v23    # "top":F
    .end local v25    # "x":F
    .end local v26    # "y":F
    :cond_c
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 964
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 966
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternDetected()V

    .line 967
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 975
    :cond_0
    return-void
.end method

.method private initBitmapResources()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleDefault:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 404
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleGreen:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 405
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableCircleRed:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 406
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowGreenUp:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 407
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableArrowRedUp:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 410
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableBtnDefault:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 411
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableGreen:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapGreen:Landroid/graphics/Bitmap;

    .line 412
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapRed:Landroid/graphics/Bitmap;

    .line 414
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 537
    :cond_0
    const v0, 0xc04045b

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 538
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternCleared()V

    .line 558
    :cond_0
    const v0, 0xc04045e

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 559
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 551
    :cond_0
    const v0, 0xc04045d

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 552
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternStart()V

    .line 544
    :cond_0
    const v0, 0xc04045c

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 545
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 573
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 574
    sget-object v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 575
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 576
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 616
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 625
    move v0, v1

    .line 627
    :goto_0
    return v0

    .line 618
    :sswitch_0
    move v0, p2

    .line 619
    goto :goto_0

    .line 621
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 622
    goto :goto_0

    .line 616
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 959
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 960
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 566
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 595
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 602
    return-void
.end method

.method public getFailAnimator()Landroid/animation/Animator;
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    const/4 v6, 0x2

    .line 1411
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    const-string v4, "alpha"

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1412
    .local v1, "oa1":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1413
    new-instance v3, Lcom/oppo/widget/OppoLockPatternView$1;

    invoke-direct {v3, p0, v1}, Lcom/oppo/widget/OppoLockPatternView$1;-><init>(Lcom/oppo/widget/OppoLockPatternView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1421
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableRed:Landroid/graphics/drawable/Drawable;

    const-string v4, "alpha"

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1422
    .local v2, "oa2":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1423
    new-instance v3, Lcom/oppo/widget/OppoLockPatternView$2;

    invoke-direct {v3, p0, v2}, Lcom/oppo/widget/OppoLockPatternView$2;-><init>(Lcom/oppo/widget/OppoLockPatternView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1430
    const-wide/16 v4, 0x258

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1432
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1433
    .local v0, "as":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1435
    return-object v0

    .line 1411
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 1421
    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public getSuccessAnimator()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 1439
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawableGreen:Landroid/graphics/drawable/Drawable;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1440
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1441
    new-instance v1, Lcom/oppo/widget/OppoLockPatternView$3;

    invoke-direct {v1, p0, v0}, Lcom/oppo/widget/OppoLockPatternView$3;-><init>(Lcom/oppo/widget/OppoLockPatternView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1449
    return-object v0

    .line 1439
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 37
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1020
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->changePaintColor()V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    .line 1023
    .local v31, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1024
    .local v17, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v20, v0

    .line 1026
    .local v20, "drawLookup":[[Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v3, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v2, v3, :cond_2

    .line 1031
    add-int/lit8 v2, v17, 0x1

    mul-int/lit16 v0, v2, 0x2bc

    move/from16 v28, v0

    .line 1032
    .local v28, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oppo/widget/OppoLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    rem-int v34, v2, v28

    .line 1034
    .local v34, "spotInCycle":I
    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v26, v0

    .line 1036
    .local v26, "numCircles":I
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 1037
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, v26

    if-ge v6, v0, :cond_0

    .line 1038
    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1039
    .local v12, "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    invoke-virtual {v12}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v2, v20, v2

    invoke-virtual {v12}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 1037
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1044
    .end local v12    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_0
    if-lez v26, :cond_3

    move/from16 v0, v26

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    const/16 v24, 0x1

    .line 1046
    .local v24, "needToUpdateInProgressPoint":Z
    :goto_1
    if-eqz v24, :cond_1

    .line 1047
    move/from16 v0, v34

    rem-int/lit16 v2, v0, 0x2bc

    int-to-float v2, v2

    const/high16 v3, 0x442f0000    # 700.0f

    div-float v32, v2, v3

    .line 1050
    .local v32, "percentageOfNextCircle":F
    add-int/lit8 v2, v26, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1051
    .local v18, "currentCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v15

    .line 1052
    .local v15, "centerX":F
    move-object/from16 v0, v18

    iget v2, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v16

    .line 1054
    .local v16, "centerY":F
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1055
    .local v25, "nextCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    move-object/from16 v0, v25

    iget v2, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    sub-float/2addr v2, v15

    mul-float v22, v32, v2

    .line 1057
    .local v22, "dx":F
    move-object/from16 v0, v25

    iget v2, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v2

    sub-float v2, v2, v16

    mul-float v23, v32, v2

    .line 1059
    .local v23, "dy":F
    add-float v2, v15, v22

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 1060
    add-float v2, v16, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 1063
    .end local v15    # "centerX":F
    .end local v16    # "centerY":F
    .end local v18    # "currentCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v22    # "dx":F
    .end local v23    # "dy":F
    .end local v25    # "nextCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v32    # "percentageOfNextCircle":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 1066
    .end local v6    # "i":I
    .end local v24    # "needToUpdateInProgressPoint":Z
    .end local v26    # "numCircles":I
    .end local v28    # "oneCycle":I
    .end local v34    # "spotInCycle":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v36, v0

    .line 1067
    .local v36, "squareWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v35, v0

    .line 1069
    .local v35, "squareHeight":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    mul-float v2, v2, v36

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v33, v2, v3

    .line 1070
    .local v33, "radius":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    .line 1073
    .local v19, "currentPath":Landroid/graphics/Path;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->rewind()V

    .line 1076
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    move/from16 v30, v0

    .line 1077
    .local v30, "paddingTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    move/from16 v29, v0

    .line 1079
    .local v29, "paddingLeft":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    const/4 v2, 0x3

    if-ge v6, v2, :cond_5

    .line 1080
    move/from16 v0, v30

    int-to-float v2, v0

    int-to-float v3, v6

    mul-float v3, v3, v35

    add-float v11, v2, v3

    .line 1082
    .local v11, "topY":F
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    const/4 v2, 0x3

    if-ge v7, v2, :cond_4

    .line 1083
    move/from16 v0, v29

    int-to-float v2, v0

    int-to-float v3, v7

    mul-float v3, v3, v36

    add-float v10, v2, v3

    .line 1084
    .local v10, "leftX":F
    float-to-int v4, v10

    float-to-int v5, v11

    aget-object v2, v20, v6

    aget-boolean v8, v2, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/oppo/widget/OppoLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIIIZ)V

    .line 1082
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1044
    .end local v7    # "j":I
    .end local v10    # "leftX":F
    .end local v11    # "topY":F
    .end local v19    # "currentPath":Landroid/graphics/Path;
    .end local v29    # "paddingLeft":I
    .end local v30    # "paddingTop":I
    .end local v33    # "radius":F
    .end local v35    # "squareHeight":F
    .end local v36    # "squareWidth":F
    .restart local v26    # "numCircles":I
    .restart local v28    # "oneCycle":I
    .restart local v34    # "spotInCycle":I
    :cond_3
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1079
    .end local v26    # "numCircles":I
    .end local v28    # "oneCycle":I
    .end local v34    # "spotInCycle":I
    .restart local v7    # "j":I
    .restart local v11    # "topY":F
    .restart local v19    # "currentPath":Landroid/graphics/Path;
    .restart local v29    # "paddingLeft":I
    .restart local v30    # "paddingTop":I
    .restart local v33    # "radius":F
    .restart local v35    # "squareHeight":F
    .restart local v36    # "squareWidth":F
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1092
    .end local v7    # "j":I
    .end local v11    # "topY":F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v3, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v2, v3, :cond_c

    :cond_6
    const/16 v21, 0x1

    .line 1096
    .local v21, "drawPath":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d

    const/16 v27, 0x1

    .line 1097
    .local v27, "oldFlag":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1098
    if-eqz v21, :cond_7

    .line 1099
    const/4 v6, 0x0

    :goto_6
    add-int/lit8 v2, v17, -0x1

    if-ge v6, v2, :cond_7

    .line 1100
    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1101
    .restart local v12    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    add-int/lit8 v2, v6, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1106
    .local v13, "next":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v2, v13, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v2, v20, v2

    iget v3, v13, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v2, v2, v3

    if-nez v2, :cond_e

    .line 1117
    .end local v12    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v13    # "next":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_7
    if-eqz v21, :cond_b

    .line 1118
    const/4 v14, 0x0

    .line 1119
    .local v14, "anyCircles":Z
    const/4 v6, 0x0

    :goto_7
    move/from16 v0, v17

    if-ge v6, v0, :cond_8

    .line 1120
    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1125
    .restart local v12    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v2, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v2, v20, v2

    iget v3, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v2, v2, v3

    if-nez v2, :cond_f

    .line 1140
    .end local v12    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v3, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v2, v3, :cond_a

    :cond_9
    if-eqz v14, :cond_a

    .line 1141
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1143
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1146
    .end local v14    # "anyCircles":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1147
    return-void

    .line 1092
    .end local v21    # "drawPath":Z
    .end local v27    # "oldFlag":Z
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 1096
    .restart local v21    # "drawPath":Z
    :cond_d
    const/16 v27, 0x0

    goto :goto_5

    .line 1110
    .restart local v12    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v13    # "next":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v27    # "oldFlag":Z
    :cond_e
    move/from16 v0, v29

    int-to-float v2, v0

    iget v3, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    int-to-float v3, v3

    mul-float v3, v3, v36

    add-float v10, v2, v3

    .line 1111
    .restart local v10    # "leftX":F
    move/from16 v0, v30

    int-to-float v2, v0

    iget v3, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    int-to-float v3, v3

    mul-float v3, v3, v35

    add-float v11, v2, v3

    .restart local v11    # "topY":F
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1113
    invoke-direct/range {v8 .. v13}, Lcom/oppo/widget/OppoLockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/oppo/widget/OppoLockPatternView$Cell;Lcom/oppo/widget/OppoLockPatternView$Cell;)V

    .line 1099
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 1128
    .end local v10    # "leftX":F
    .end local v11    # "topY":F
    .end local v13    # "next":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v14    # "anyCircles":Z
    :cond_f
    const/4 v14, 0x1

    .line 1130
    iget v2, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v15

    .line 1131
    .restart local v15    # "centerX":F
    iget v2, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v16

    .line 1132
    .restart local v16    # "centerY":F
    if-nez v6, :cond_10

    .line 1133
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1119
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 1135
    :cond_10
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 781
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 783
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 794
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 795
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 797
    .end local v0    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 785
    .restart local v0    # "action":I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 788
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 791
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 645
    .local v1, "minimumWidth":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 646
    .local v0, "minimumHeight":I
    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoLockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 647
    .local v3, "viewWidth":I
    invoke-direct {p0, p2, v0}, Lcom/oppo/widget/OppoLockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 649
    .local v2, "viewHeight":I
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    .line 660
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/oppo/widget/OppoLockPatternView;->setMeasuredDimension(II)V

    .line 661
    return-void

    .line 651
    :pswitch_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 652
    goto :goto_0

    .line 654
    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 655
    goto :goto_0

    .line 657
    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1310
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$SavedState;

    .line 1311
    .local v0, "ss":Lcom/oppo/widget/OppoLockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1312
    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/widget/OppoLockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oppo/widget/OppoLockPatternView;->setPattern(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1314
    invoke-static {}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->values()[Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 1315
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 1316
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 1317
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 1318
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1303
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1304
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoLockPatternView$SavedState;

    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/oppo/widget/OppoLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/oppo/widget/OppoLockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 606
    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 607
    .local v1, "width":I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 609
    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 610
    .local v0, "height":I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 611
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 802
    iget-boolean v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 830
    :cond_1
    :goto_0
    return v0

    .line 806
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 830
    goto :goto_0

    .line 808
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 811
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 814
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 817
    :pswitch_3
    iget-boolean v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_1

    .line 818
    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 819
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 820
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternCleared()V

    goto :goto_0

    .line 806
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public recycleBitmapResources()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 430
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 435
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 437
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapGreen:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 438
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapGreen:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 440
    :cond_6
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 441
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 444
    :cond_7
    return-void
.end method

.method public setAlphaAnimation(Landroid/animation/ValueAnimator;II)V
    .locals 3
    .param p1, "alphaAnimation"    # Landroid/animation/ValueAnimator;
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 1468
    move v0, p2

    .line 1469
    .local v0, "m":I
    move v1, p3

    .line 1470
    .local v1, "n":I
    new-instance v2, Lcom/oppo/widget/OppoLockPatternView$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternView$4;-><init>(Lcom/oppo/widget/OppoLockPatternView;II)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1477
    return-void
.end method

.method public setBitmapNotDraw()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1461
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 1462
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mNotDraw:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 1461
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1460
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1465
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public setDisplayMode(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;)V
    .locals 4
    .param p1, "displayMode"    # Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 519
    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    .line 520
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 521
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mAnimatingPeriodStart:J

    .line 525
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 526
    .local v0, "first":Lcom/oppo/widget/OppoLockPatternView$Cell;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 527
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 528
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 530
    .end local v0    # "first":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 531
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 472
    return-void
.end method

.method public setOnPatternListener(Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;)V
    .locals 0
    .param p1, "onPatternListener"    # Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    .line 491
    return-void
.end method

.method public setPattern(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .param p1, "displayMode"    # Lcom/oppo/widget/OppoLockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/widget/OppoLockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 501
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 502
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 503
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 504
    .local v0, "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 507
    .end local v0    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->setDisplayMode(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;)V

    .line 508
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 482
    return-void
.end method

.method public setTranslateAnimation(Landroid/animation/ValueAnimator;II)V
    .locals 3
    .param p1, "translateAnimation"    # Landroid/animation/ValueAnimator;
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 1480
    move v0, p2

    .line 1481
    .local v0, "m":I
    move v1, p3

    .line 1482
    .local v1, "n":I
    new-instance v2, Lcom/oppo/widget/OppoLockPatternView$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternView$5;-><init>(Lcom/oppo/widget/OppoLockPatternView;II)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1488
    new-instance v2, Lcom/oppo/widget/OppoLockPatternView$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternView$6;-><init>(Lcom/oppo/widget/OppoLockPatternView;II)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1495
    return-void
.end method
