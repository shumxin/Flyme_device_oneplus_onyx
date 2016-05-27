.class Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
.super Ljava/lang/Object;
.source "OppoScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationImpl"
.end annotation


# instance fields
.field private mAfterSelected:Landroid/graphics/drawable/Drawable;

.field private mAnimateTabOffset:F

.field private mAnimateTabOutLength:F

.field private mAnimateTabWidth:I

.field private mBeforeSelected:Landroid/graphics/drawable/Drawable;

.field private mDrawText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDx:I

.field private mHeadSelected:Landroid/graphics/drawable/Drawable;

.field private mIsBegin:Z

.field private mIsCleared:Z

.field private mIsClicked:Z

.field private mIsDrag:Z

.field private mIsTransparent:Z

.field private mItemWidth:I

.field private mLayout:Landroid/text/Layout;

.field private mLeftOffset:F

.field private mMiddleSelected:Landroid/graphics/drawable/Drawable;

.field private mMoveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMoveListener:Landroid/animation/Animator$AnimatorListener;

.field private mNomalUnselected:Landroid/graphics/drawable/Drawable;

.field private mRightOffset:F

.field private mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

.field private mSelectedTextAlpha:I

.field private mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

.field private mShowAnimationByClick:Z

.field private mState:I

.field private mTailSelected:Landroid/graphics/drawable/Drawable;

.field private mTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 159
    iput-object p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    .line 89
    const/16 v4, 0xff

    iput v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mSelectedTextAlpha:I

    .line 90
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    .line 95
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    .line 96
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    .line 98
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    .line 99
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    .line 100
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 107
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    .line 108
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    .line 109
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    .line 110
    iput-boolean v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsTransparent:Z

    .line 111
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    .line 112
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    .line 113
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    .line 114
    iput v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    .line 115
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    .line 116
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    .line 117
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    .line 118
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    .line 119
    iput-object v7, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    .line 120
    iput v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDx:I

    .line 121
    new-instance v4, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveListener:Landroid/animation/Animator$AnimatorListener;

    .line 160
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 161
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {p1, v9}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->setOverScrollMode(I)V

    .line 162
    const v4, 0xc05000f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I
    invoke-static {p1, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$602(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I

    .line 163
    const v4, 0xc05043c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I
    invoke-static {p1, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$702(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I

    .line 166
    sget-object v4, Loppo/R$styleable;->OppoScrollingTabContainerView:[I

    const v5, 0xc01003f

    invoke-virtual {p2, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    .line 170
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 171
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mScorllingTabBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :cond_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 175
    const v4, 0xc080477

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    :cond_1
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 180
    const v4, 0xc080471

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    .line 183
    :cond_2
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    .line 185
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    .line 186
    const v4, 0xc080473

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    .line 189
    :cond_3
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 191
    const v4, 0xc080472

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    .line 194
    :cond_4
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    .line 196
    const v4, 0xc080475

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    .line 199
    :cond_5
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    .line 201
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_6

    .line 202
    const v4, 0xc080474

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    .line 205
    :cond_6
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    .line 208
    const v4, 0xc080476

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    .line 211
    :cond_7
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 213
    .local v2, "textColor":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 214
    .local v3, "textColorAlpha":I
    if-lez v3, :cond_8

    const/16 v4, 0xff

    if-gt v3, v4, :cond_8

    .line 215
    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mSelectedTextAlpha:I

    .line 220
    :cond_8
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    .line 222
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    .line 224
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsTransparent:Z

    .line 228
    new-instance v4, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;)V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    .line 229
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    iget v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    neg-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->setX(F)V

    .line 231
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    .line 232
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I
    invoke-static {p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$700(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 235
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 237
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;Lcom/android/internal/widget/OppoScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$1;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->getTabTextPaddingRight()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->setTabSelected(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeTabAt(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeAllTabs()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->drawTab(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;III)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->measureMaxWidth(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;IFI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateAnimateTab(IFI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateScrollState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->clearSelectTabBackground()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->getTabTextPaddingLeft()I

    move-result v0

    return v0
.end method

.method private addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V
    .locals 3
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 280
    return-void
.end method

.method private addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V
    .locals 2
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .param p2, "position"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 285
    return-void
.end method

.method private clearSelectTabBackground()V
    .locals 7

    .prologue
    .line 436
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    .line 437
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 438
    .local v2, "tabCount":I
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    if-gtz v3, :cond_0

    .line 439
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    .line 440
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    iget v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    .line 442
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v3, :cond_1

    .line 443
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    iget-object v6, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v6, v6, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->setX(F)V

    .line 445
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 446
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 447
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v3, v3, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    if-ne v3, v1, :cond_2

    .line 449
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 445
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 296
    iget-object v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 297
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private drawTab(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 455
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    if-eqz v2, :cond_2

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    neg-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    add-float/2addr v4, v5

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 458
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    add-float/2addr v4, v5

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    .line 459
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    .line 470
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getY()F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v7, v7, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mContentHeight:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    .line 476
    .local v12, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    int-to-float v4, v4

    div-float v17, v2, v4

    .line 477
    .local v17, "percent":F
    const-wide v4, 0x400999999999999aL    # 3.2

    move/from16 v0, v17

    float-to-double v6, v0

    move/from16 v0, v17

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    move/from16 v0, v17

    float-to-double v6, v0

    move/from16 v0, v17

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide v6, 0x3fc999999999999aL    # 0.2

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mSelectedTextAlpha:I

    int-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-int v10, v4

    .line 479
    .local v10, "alpha":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsTransparent:Z

    if-eqz v2, :cond_0

    .line 480
    const/4 v10, 0x0

    .line 482
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 483
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 484
    .local v14, "index":I
    if-ltz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_6

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->fixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "drawText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_1

    .line 487
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    check-cast v4, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    .line 503
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v18

    .line 504
    .local v18, "lineRange":J
    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v11

    .line 505
    .local v11, "firstLine":I
    if-gez v11, :cond_5

    .line 518
    .end local v3    # "drawText":Ljava/lang/String;
    .end local v10    # "alpha":I
    .end local v11    # "firstLine":I
    .end local v12    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v14    # "index":I
    .end local v17    # "percent":F
    .end local v18    # "lineRange":J
    :cond_2
    :goto_1
    return-void

    .line 460
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 462
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOffset:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v5}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    .line 465
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    goto/16 :goto_0

    .line 467
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    .line 468
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mRightOffset:F

    goto/16 :goto_0

    .line 508
    .restart local v3    # "drawText":Ljava/lang/String;
    .restart local v10    # "alpha":I
    .restart local v11    # "firstLine":I
    .restart local v12    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .restart local v14    # "index":I
    .restart local v17    # "percent":F
    .restart local v18    # "lineRange":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .line 509
    .local v16, "lbottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int v15, v16, v2

    .line 510
    .local v15, "lbaseline":I
    iget v2, v12, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iget v4, v12, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int v13, v2, v4

    .line 513
    .local v13, "h2":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mLeftOffset:F

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDx:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mContentHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v15

    div-int/lit8 v5, v13, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 516
    .end local v3    # "drawText":Ljava/lang/String;
    .end local v11    # "firstLine":I
    .end local v13    # "h2":I
    .end local v15    # "lbaseline":I
    .end local v16    # "lbottom":I
    .end local v18    # "lineRange":J
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1
.end method

.method private fixString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 521
    if-nez p1, :cond_1

    .line 522
    const/4 p1, 0x0

    .line 544
    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 524
    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 525
    .local v1, "textWidth":I
    rem-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDx:I

    .line 526
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    if-le v1, v3, :cond_0

    .line 527
    const-string v2, "."

    .line 528
    .local v2, "tmpTabLabel":Ljava/lang/String;
    const/4 v0, 0x0

    .line 529
    .local v0, "end":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 530
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 531
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 532
    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    if-ge v1, v3, :cond_2

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 535
    :cond_2
    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 536
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 537
    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 542
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getTabTextPaddingLeft()I
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050434

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getTabTextPaddingRight()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050435

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private measureMaxWidth(III)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "childCount"    # I
    .param p3, "defaultWidth"    # I

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingRight()I

    move-result v1

    sub-int p1, v0, v1

    .line 549
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 550
    div-int v0, p1, p2

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private removeAllTabs()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    return-void
.end method

.method private removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 289
    return-void
.end method

.method private setTabSelected(I)V
    .locals 14
    .param p1, "position"    # I

    .prologue
    .line 302
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v10, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    .line 303
    .local v9, "tabCount":I
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v7, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    .line 304
    .local v7, "oldeSelected":I
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iput p1, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    .line 306
    if-lez v9, :cond_0

    .line 307
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v10, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v10

    div-int/2addr v10, v9

    iput v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    .line 310
    :cond_0
    iget v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    float-to-int v11, v11

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabWidth:I

    .line 312
    iget-boolean v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-eqz v10, :cond_2

    .line 347
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    iget-boolean v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v10, :cond_8

    .line 315
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v9, :cond_7

    .line 316
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v10, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 317
    .local v2, "child":Landroid/view/View;
    if-ne v4, p1, :cond_4

    const/4 v5, 0x1

    .line 318
    .local v5, "isSelected":Z
    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 319
    iget-object v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mDrawText:Ljava/util/ArrayList;

    move-object v10, v2

    check-cast v10, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v10}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v4, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 321
    if-eqz v5, :cond_6

    .line 322
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->animateToTab(I)V

    .line 323
    iget-boolean v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    if-eqz v10, :cond_3

    .line 324
    if-nez v5, :cond_5

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v2, v10}, Landroid/view/View;->setSelected(Z)V

    .line 315
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 317
    .end local v5    # "isSelected":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 324
    .restart local v5    # "isSelected":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 326
    :cond_6
    iget-boolean v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    if-nez v10, :cond_3

    .line 327
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mNomalUnselected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 331
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "isSelected":Z
    :cond_7
    iget-boolean v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    if-nez v10, :cond_1

    .line 332
    invoke-direct {p0, v9, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    goto :goto_0

    .line 335
    .end local v4    # "i":I
    :cond_8
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 336
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    iget-object v12, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v12, v12, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float v3, v10, v11

    .line 337
    .local v3, "endTarsX":F
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    mul-int/2addr v11, v7

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float v8, v10, v11

    .line 339
    .local v8, "startTarsX":F
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    const-string v11, "x"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v8, v12, v13

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 341
    .local v1, "animTras":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 342
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v10, v10, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    sub-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 343
    .local v6, "offset":I
    add-int/lit8 v10, v6, 0x1

    mul-int/lit8 v10, v10, 0x64

    int-to-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 344
    iget-object v10, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMoveListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private updateAnimateTab(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mItemWidth:I

    int-to-float v2, v2

    int-to-float v3, p1

    add-float/2addr v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAnimateTabOutLength:F

    sub-float v0, v1, v2

    .line 394
    .local v0, "Offset":F
    iget-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShapeHolder:Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->setX(F)V

    .line 396
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    .line 398
    :cond_0
    return-void
.end method

.method private updateScrollState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 352
    if-nez p1, :cond_3

    .line 353
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 354
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    if-eq v0, v1, :cond_2

    .line 355
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 357
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    .line 363
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    .line 389
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mState:I

    .line 390
    return-void

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V

    .line 361
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    goto :goto_0

    .line 364
    :cond_3
    if-ne v1, p1, :cond_6

    .line 365
    iput-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 366
    iput-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    .line 367
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    .line 368
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    if-eqz v0, :cond_4

    .line 375
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    .line 376
    iput-boolean v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    .line 378
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    if-nez v0, :cond_5

    .line 379
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->clearSelectTabBackground()V

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    goto :goto_1

    .line 382
    :cond_6
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 383
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    if-nez v0, :cond_7

    .line 384
    invoke-direct {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->clearSelectTabBackground()V

    .line 386
    :cond_7
    iput-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsDrag:Z

    .line 387
    iput-boolean v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    goto :goto_1
.end method

.method private updateTabBackground(II)V
    .locals 6
    .param p1, "count"    # I
    .param p2, "selected"    # I

    .prologue
    const/4 v5, 0x1

    .line 401
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z

    .line 405
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 406
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 410
    if-nez p2, :cond_2

    .line 411
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 412
    .local v1, "childSelected":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mHeadSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 414
    if-eq p1, v5, :cond_0

    .line 415
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 416
    .local v2, "childSelectedAfter":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 418
    .end local v1    # "childSelected":Landroid/view/View;
    .end local v2    # "childSelectedAfter":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, p1, -0x1

    if-ne v4, p2, :cond_3

    .line 419
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 420
    .local v3, "childSelectedBefore":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 422
    .restart local v1    # "childSelected":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mTailSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 425
    .end local v1    # "childSelected":Landroid/view/View;
    .end local v3    # "childSelectedBefore":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 426
    .restart local v3    # "childSelectedBefore":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mBeforeSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 428
    .restart local v1    # "childSelected":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mMiddleSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 430
    .restart local v2    # "childSelectedAfter":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mAfterSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    .line 265
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 242
    iget-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z

    if-eqz v4, :cond_1

    .line 258
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v5, v5, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 248
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z

    move-object v3, p1

    .line 249
    check-cast v3, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 250
    .local v3, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v3}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar$Tab;->select()V

    .line 251
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 252
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 253
    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v4, v4, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, "child":Landroid/view/View;
    if-eq v0, p1, :cond_2

    .line 255
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 252
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
