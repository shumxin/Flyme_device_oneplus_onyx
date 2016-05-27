.class public Lcom/oppo/widget/OppoProgressBar;
.super Landroid/view/View;
.source "OppoProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoProgressBar$1;,
        Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;,
        Lcom/oppo/widget/OppoProgressBar$SavedState;,
        Lcom/oppo/widget/OppoProgressBar$RefreshData;,
        Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_LEVEL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "OppoProgressBar"

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsCustomStyle:Z

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field protected mOppoProgressBgDrawable:Landroid/graphics/drawable/Drawable;

.field protected mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mScale:F

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/widget/OppoProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "styleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    iput-boolean v3, p0, Lcom/oppo/widget/OppoProgressBar;->mMirrorForRtl:Z

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oppo/widget/OppoProgressBar;->mUiThreadId:J

    .line 148
    invoke-direct {p0}, Lcom/oppo/widget/OppoProgressBar;->initProgressBar()V

    .line 150
    sget-object v5, Landroid/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    .local v0, "a":Landroid/content/res/TypedArray;
    iput-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mNoInvalidate:Z

    .line 155
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 156
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0, v1, v3}, Lcom/oppo/widget/OppoProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :cond_0
    const/16 v5, 0x9

    iget v6, p0, Lcom/oppo/widget/OppoProgressBar;->mDuration:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoProgressBar;->mDuration:I

    .line 166
    const/16 v5, 0xb

    iget v6, p0, Lcom/oppo/widget/OppoProgressBar;->mMinWidth:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoProgressBar;->mMinWidth:I

    .line 167
    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxWidth:I

    .line 168
    const/16 v5, 0xc

    iget v6, p0, Lcom/oppo/widget/OppoProgressBar;->mMinHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoProgressBar;->mMinHeight:I

    .line 169
    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    .line 171
    const/16 v5, 0xa

    iget v6, p0, Lcom/oppo/widget/OppoProgressBar;->mBehavior:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoProgressBar;->mBehavior:I

    .line 173
    const/16 v5, 0xd

    const v6, 0x10a000b

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 176
    .local v2, "resID":I
    if-lez v2, :cond_1

    .line 177
    invoke-virtual {p0, p1, v2}, Lcom/oppo/widget/OppoProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 180
    :cond_1
    const/4 v5, 0x2

    iget v6, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoProgressBar;->setMax(I)V

    .line 182
    const/4 v5, 0x3

    iget v6, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoProgressBar;->setProgress(I)V

    .line 184
    const/4 v5, 0x4

    iget v6, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoProgressBar;->setSecondaryProgress(I)V

    .line 187
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_2

    .line 189
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_2
    const/4 v5, 0x6

    iget-boolean v6, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    .line 196
    iput-boolean v3, p0, Lcom/oppo/widget/OppoProgressBar;->mNoInvalidate:Z

    .line 198
    iget-boolean v5, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    if-nez v5, :cond_3

    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoProgressBar;->setIndeterminate(Z)V

    .line 201
    const/16 v3, 0xf

    iget-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mMirrorForRtl:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oppo/widget/OppoProgressBar;->mMirrorForRtl:Z

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoProgressBar;->initOppoProgressBar(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoProgressBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoProgressBar;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoProgressBar;IIZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoProgressBar;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 532
    .local v4, "scale":F
    :goto_0
    iput v4, p0, Lcom/oppo/widget/OppoProgressBar;->mScale:F

    .line 533
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 534
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 535
    const/4 v3, 0x0

    .line 537
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 538
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 539
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->canResolveLayoutDirection()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 544
    :cond_0
    const v5, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 545
    .local v2, "level":I
    if-eqz v3, :cond_3

    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 550
    .end local v2    # "level":I
    :goto_2
    if-eqz p4, :cond_1

    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 551
    invoke-virtual {p0, v4, p3}, Lcom/oppo/widget/OppoProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :cond_1
    monitor-exit p0

    return-void

    .line 531
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "level":I
    .restart local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "scale":F
    :cond_3
    move-object v3, v1

    .line 545
    goto :goto_1

    .line 547
    .end local v2    # "level":I
    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 531
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private initOppoProgressBar(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "styleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1185
    sget-object v1, Loppo/R$styleable;->OppoProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1187
    .local v0, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mIsCustomStyle:Z

    .line 1188
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1190
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc080419

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1191
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc08041a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1192
    return-void
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 302
    const/16 v0, 0x64

    iput v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    .line 303
    iput v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    .line 304
    iput v1, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    .line 305
    iput-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    .line 306
    iput-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    .line 307
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/oppo/widget/OppoProgressBar;->mDuration:I

    .line 308
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoProgressBar;->mBehavior:I

    .line 309
    iput v2, p0, Lcom/oppo/widget/OppoProgressBar;->mMinWidth:I

    .line 310
    iput v3, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxWidth:I

    .line 311
    iput v2, p0, Lcom/oppo/widget/OppoProgressBar;->mMinHeight:I

    .line 312
    iput v3, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    .line 313
    return-void
.end method

.method private onOppoDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 1195
    const-string v3, "OppoProgressBar"

    const-string v4, "onDraw oppo theme!"

    invoke-static {v6, v3, v4}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1198
    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1199
    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mScale:F

    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 1200
    .local v2, "space":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 1201
    .local v0, "height":I
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v6, v6, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1202
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1203
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1205
    .local v1, "min":I
    if-ge v2, v1, :cond_1

    .line 1206
    if-lez v2, :cond_0

    .line 1207
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v6, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1214
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1216
    return-void

    .line 1209
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v6, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1212
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/oppo/widget/OppoProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 563
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/oppo/widget/OppoProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 565
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    if-nez v1, :cond_2

    .line 566
    new-instance v1, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;-><init>(Lcom/oppo/widget/OppoProgressBar;Lcom/oppo/widget/OppoProgressBar$1;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    .line 569
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/oppo/widget/OppoProgressBar$RefreshData;->obtain(IIZ)Lcom/oppo/widget/OppoProgressBar$RefreshData;

    move-result-object v0

    .line 570
    .local v0, "rd":Lcom/oppo/widget/OppoProgressBar$RefreshData;
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iget-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mAttached:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshIsPosted:Z

    if-nez v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 573
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 562
    .end local v0    # "rd":Lcom/oppo/widget/OppoProgressBar$RefreshData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1123
    new-instance v0, Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;-><init>(Lcom/oppo/widget/OppoProgressBar;Lcom/oppo/widget/OppoProgressBar$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    .line 1127
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/oppo/widget/OppoProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1128
    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    .line 214
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v14, :cond_3

    move-object/from16 v3, p1

    .line 215
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 216
    .local v3, "background":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 217
    .local v2, "N":I
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    .line 219
    .local v11, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 220
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 221
    .local v6, "id":I
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v14, 0x102000d

    if-eq v6, v14, :cond_0

    const v14, 0x102000f

    if-ne v6, v14, :cond_1

    :cond_0
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/oppo/widget/OppoProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v11, v5

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 225
    .end local v6    # "id":I
    :cond_2
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 227
    .local v8, "newBg":Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_5

    .line 228
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v14

    invoke-virtual {v8, v5, v14}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 233
    .end local v2    # "N":I
    .end local v3    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v5    # "i":I
    .end local v8    # "newBg":Landroid/graphics/drawable/LayerDrawable;
    .end local v11    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v14, :cond_6

    move-object/from16 v7, p1

    .line 234
    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    .line 235
    .local v7, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 236
    .local v10, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v9

    .line 237
    .local v9, "numStates":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v9, :cond_4

    .line 238
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v14

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v15, v1}, Lcom/oppo/widget/OppoProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 237
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move-object v8, v10

    .line 258
    .end local v5    # "i":I
    .end local v7    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v9    # "numStates":I
    .end local v10    # "out":Landroid/graphics/drawable/StateListDrawable;
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_4
    return-object v8

    .line 242
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_9

    .line 243
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 244
    .local v13, "tileBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v14, :cond_7

    .line 245
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/widget/OppoProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 248
    :cond_7
    new-instance v12, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 250
    .local v12, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v14, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v13, v14, v15}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 252
    .local v4, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v12}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 254
    if-eqz p2, :cond_8

    new-instance v14, Landroid/graphics/drawable/ClipDrawable;

    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v12, v15, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v12, v14

    .end local v12    # "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    :cond_8
    move-object v8, v12

    goto :goto_4

    .end local v4    # "bitmapShader":Landroid/graphics/BitmapShader;
    .end local v13    # "tileBitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v8, p1

    .line 258
    goto :goto_4
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 272
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 273
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 274
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 275
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 276
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 278
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 279
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 280
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 281
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 284
    move-object p1, v4

    .line 286
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 15
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 877
    iget v12, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingRight:I

    iget v13, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int p1, p1, v12

    .line 878
    iget v12, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingTop:I

    iget v13, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingBottom:I

    add-int/2addr v12, v13

    sub-int p2, p2, v12

    .line 880
    move/from16 v8, p1

    .line 881
    .local v8, "right":I
    move/from16 v1, p2

    .line 882
    .local v1, "bottom":I
    const/4 v10, 0x0

    .line 883
    .local v10, "top":I
    const/4 v7, 0x0

    .line 885
    .local v7, "left":I
    iget-object v12, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 887
    iget-boolean v12, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v12, :cond_0

    .line 890
    iget-object v12, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 891
    .local v6, "intrinsicWidth":I
    iget-object v12, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 892
    .local v5, "intrinsicHeight":I
    int-to-float v12, v6

    int-to-float v13, v5

    div-float v4, v12, v13

    .line 893
    .local v4, "intrinsicAspect":F
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v2, v12, v13

    .line 894
    .local v2, "boundAspect":F
    cmpl-float v12, v4, v2

    if-eqz v12, :cond_0

    .line 895
    cmpl-float v12, v2, v4

    if-lez v12, :cond_4

    .line 897
    move/from16 v0, p2

    int-to-float v12, v0

    mul-float/2addr v12, v4

    float-to-int v11, v12

    .line 898
    .local v11, "width":I
    sub-int v12, p1, v11

    div-int/lit8 v7, v12, 0x2

    .line 899
    add-int v8, v7, v11

    .line 908
    .end local v2    # "boundAspect":F
    .end local v4    # "intrinsicAspect":F
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicWidth":I
    .end local v11    # "width":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Lcom/oppo/widget/OppoProgressBar;->mMirrorForRtl:Z

    if-eqz v12, :cond_1

    .line 909
    move v9, v7

    .line 910
    .local v9, "tempLeft":I
    sub-int v7, p1, v8

    .line 911
    sub-int v8, p1, v9

    .line 913
    .end local v9    # "tempLeft":I
    :cond_1
    iget-object v12, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v7, v10, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 916
    :cond_2
    iget-object v12, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 917
    iget-object v12, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 919
    :cond_3
    return-void

    .line 902
    .restart local v2    # "boundAspect":F
    .restart local v4    # "intrinsicAspect":F
    .restart local v5    # "intrinsicHeight":I
    .restart local v6    # "intrinsicWidth":I
    :cond_4
    move/from16 v0, p1

    int-to-float v12, v0

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v4

    mul-float/2addr v12, v13

    float-to-int v3, v12

    .line 903
    .local v3, "height":I
    sub-int v12, p2, v3

    div-int/lit8 v10, v12, 0x2

    .line 904
    add-int v1, v10, v3

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 991
    .local v0, "state":[I
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 995
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 996
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 998
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 984
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 985
    invoke-direct {p0}, Lcom/oppo/widget/OppoProgressBar;->updateDrawableState()V

    .line 986
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 263
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 262
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 691
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 727
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    monitor-exit p0

    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 738
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    monitor-exit p0

    return-void

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 855
    iget-boolean v3, p0, Lcom/oppo/widget/OppoProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 856
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 857
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 858
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mScrollX:I

    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 859
    .local v1, "scrollX":I
    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mScrollY:I

    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingTop:I

    add-int v2, v3, v4

    .line 861
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/oppo/widget/OppoProgressBar;->invalidate(IIII)V

    .line 867
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 460
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 461
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 463
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1062
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1063
    iget-boolean v3, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eqz v3, :cond_0

    .line 1064
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->startAnimation()V

    .line 1066
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1067
    monitor-enter p0

    .line 1068
    :try_start_0
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1069
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1070
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoProgressBar$RefreshData;

    .line 1071
    .local v2, "rd":Lcom/oppo/widget/OppoProgressBar$RefreshData;
    iget v3, v2, Lcom/oppo/widget/OppoProgressBar$RefreshData;->id:I

    iget v4, v2, Lcom/oppo/widget/OppoProgressBar$RefreshData;->progress:I

    iget-boolean v5, v2, Lcom/oppo/widget/OppoProgressBar$RefreshData;->fromUser:Z

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/oppo/widget/OppoProgressBar;->doRefreshProgress(IIZZ)V

    .line 1072
    invoke-virtual {v2}, Lcom/oppo/widget/OppoProgressBar$RefreshData;->recycle()V

    .line 1069
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1074
    .end local v2    # "rd":Lcom/oppo/widget/OppoProgressBar$RefreshData;
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1075
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    iput-boolean v7, p0, Lcom/oppo/widget/OppoProgressBar;->mAttached:Z

    .line 1078
    return-void

    .line 1075
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->stopAnimation()V

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshIsPosted:Z

    if-eqz v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mRefreshProgressRunnable:Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1091
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_3

    .line 1092
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAccessibilityEventSender:Lcom/oppo/widget/OppoProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1096
    :cond_3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAttached:Z

    .line 1098
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 923
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 925
    const/4 v4, 0x0

    const-string v5, "OppoProgressBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDraw mOnlyIndeterminate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v4, p0, Lcom/oppo/widget/OppoProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->isOppoStyle()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mIsCustomStyle:Z

    if-eqz v4, :cond_3

    .line 927
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoProgressBar;->onOppoDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 930
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    const-string v5, "OppoProgressBar"

    const-string v6, "onDraw original theme!"

    invoke-static {v4, v5, v6}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 933
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 936
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 937
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_5

    .line 938
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 939
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 943
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 944
    .local v2, "time":J
    iget-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mHasAnimation:Z

    if-eqz v4, :cond_4

    .line 945
    iget-object v4, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v5, p0, Lcom/oppo/widget/OppoProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v5}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 946
    iget-object v4, p0, Lcom/oppo/widget/OppoProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 948
    .local v1, "scale":F
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mInDrawing:Z

    .line 949
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 951
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mInDrawing:Z

    .line 953
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->postInvalidateOnAnimation()V

    .line 955
    .end local v1    # "scale":F
    :cond_4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 956
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 957
    iget-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_2

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_2

    .line 958
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 959
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oppo/widget/OppoProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 923
    .end local v2    # "time":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 941
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    :try_start_4
    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 951
    .restart local v1    # "scale":F
    .restart local v2    # "time":J
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oppo/widget/OppoProgressBar;->mInDrawing:Z

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1102
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1103
    const-class v0, Lcom/oppo/widget/OppoProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1104
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1105
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1106
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1110
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1111
    const-class v0, Lcom/oppo/widget/OppoProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1112
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 966
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 968
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 969
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 970
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 971
    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 972
    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 974
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoProgressBar;->updateDrawableState()V

    .line 975
    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingLeft:I

    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 976
    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingTop:I

    iget v4, p0, Lcom/oppo/widget/OppoProgressBar;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 978
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/oppo/widget/OppoProgressBar;->resolveSizeAndState(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, p2, v4}, Lcom/oppo/widget/OppoProgressBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/oppo/widget/OppoProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    monitor-exit p0

    return-void

    .line 966
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 556
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/oppo/widget/OppoProgressBar;->scheduleAccessibilityEventSender()V

    .line 559
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 471
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 480
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1053
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoProgressBar$SavedState;

    .line 1054
    .local v0, "ss":Lcom/oppo/widget/OppoProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1056
    iget v1, v0, Lcom/oppo/widget/OppoProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoProgressBar;->setProgress(I)V

    .line 1057
    iget v1, v0, Lcom/oppo/widget/OppoProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoProgressBar;->setSecondaryProgress(I)V

    .line 1058
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1042
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1043
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoProgressBar$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1045
    .local v0, "ss":Lcom/oppo/widget/OppoProgressBar$SavedState;
    iget v2, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    iput v2, v0, Lcom/oppo/widget/OppoProgressBar$SavedState;->progress:I

    .line 1046
    iget v2, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lcom/oppo/widget/OppoProgressBar$SavedState;->secondaryProgress:I

    .line 1048
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 871
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoProgressBar;->updateDrawableBounds(II)V

    .line 872
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 841
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 843
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 845
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 846
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->stopAnimation()V

    .line 851
    :cond_1
    :goto_0
    return-void

    .line 848
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 485
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 487
    :cond_0
    return-void
.end method

.method public setCustomStyled(Z)V
    .locals 3
    .param p1, "isCustomStyle"    # Z

    .prologue
    .line 1180
    const-string v0, "OppoProgressBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomStyled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/util/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iput-boolean p1, p0, Lcom/oppo/widget/OppoProgressBar;->mIsCustomStyle:Z

    .line 1182
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 338
    iput-boolean p1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    .line 340
    if-eqz p1, :cond_2

    .line 342
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 343
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 345
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 374
    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 377
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 378
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->canResolveLayoutDirection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 381
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_2

    .line 382
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 383
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->postInvalidate()V

    .line 385
    :cond_2
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 800
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 801
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 811
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 705
    monitor-enter p0

    if-gez p1, :cond_0

    .line 706
    const/4 p1, 0x0

    .line 708
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 709
    iput p1, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    .line 710
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->postInvalidate()V

    .line 712
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 713
    iput p1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    .line 715
    :cond_1
    const v0, 0x102000d

    iget v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/widget/OppoProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    :cond_2
    monitor-exit p0

    return-void

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOppoProgressBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1171
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->invalidate()V

    .line 1172
    return-void
.end method

.method public setOppoProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mOppoProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1161
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->invalidate()V

    .line 1162
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 591
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 596
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 600
    :cond_1
    if-gez p1, :cond_2

    .line 601
    const/4 p1, 0x0

    .line 604
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 605
    iget p1, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    .line 608
    :cond_3
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    if-eq p1, v0, :cond_0

    .line 609
    iput p1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    .line 610
    const v0, 0x102000d

    iget v1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/oppo/widget/OppoProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 411
    iget-object v2, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4

    .line 412
    iget-object v2, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 413
    const/4 v1, 0x1

    .line 418
    .local v1, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 419
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 420
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 425
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 426
    .local v0, "drawableHeight":I
    iget v2, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    if-ge v2, v0, :cond_1

    .line 427
    iput v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMaxHeight:I

    .line 428
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->requestLayout()V

    .line 431
    .end local v0    # "drawableHeight":I
    :cond_1
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 432
    iget-boolean v2, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-nez v2, :cond_2

    .line 433
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 434
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->postInvalidate()V

    .line 437
    :cond_2
    if-eqz v1, :cond_3

    .line 438
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/oppo/widget/OppoProgressBar;->updateDrawableBounds(II)V

    .line 439
    invoke-direct {p0}, Lcom/oppo/widget/OppoProgressBar;->updateDrawableState()V

    .line 440
    const v2, 0x102000d

    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/oppo/widget/OppoProgressBar;->doRefreshProgress(IIZZ)V

    .line 441
    const v2, 0x102000f

    iget v3, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/oppo/widget/OppoProgressBar;->doRefreshProgress(IIZZ)V

    .line 443
    :cond_3
    return-void

    .line 415
    .end local v1    # "needUpdate":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "needUpdate":Z
    goto :goto_0
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 644
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 632
    :cond_1
    if-gez p1, :cond_2

    .line 633
    const/4 p1, 0x0

    .line 636
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 637
    iget p1, p0, Lcom/oppo/widget/OppoProgressBar;->mMax:I

    .line 640
    :cond_3
    iget v0, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    .line 641
    iput p1, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    .line 642
    const v0, 0x102000f

    iget v1, p0, Lcom/oppo/widget/OppoProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/widget/OppoProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 826
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 828
    iget-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 830
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 831
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->stopAnimation()V

    .line 837
    :cond_1
    :goto_0
    return-void

    .line 833
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 745
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 750
    iput-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mShouldStartAnimationDrawable:Z

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoProgressBar;->mHasAnimation:Z

    .line 777
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->postInvalidate()V

    goto :goto_0

    .line 753
    :cond_1
    iput-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mHasAnimation:Z

    .line 755
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 756
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    .line 760
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 765
    :goto_2
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 766
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 771
    :goto_3
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/oppo/widget/OppoProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 772
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 773
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/oppo/widget/OppoProgressBar;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 774
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/oppo/widget/OppoProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 775
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1

    .line 762
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_2

    .line 768
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_3
.end method

.method stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 784
    iput-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mHasAnimation:Z

    .line 785
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 787
    iput-boolean v1, p0, Lcom/oppo/widget/OppoProgressBar;->mShouldStartAnimationDrawable:Z

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoProgressBar;->postInvalidate()V

    .line 790
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
