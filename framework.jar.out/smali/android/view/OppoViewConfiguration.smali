.class public Landroid/view/OppoViewConfiguration;
.super Ljava/lang/Object;
.source "OppoViewConfiguration.java"


# static fields
.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x78

.field private static final OVERSCROLL_DISTANCE:I = 0x78

.field private static final TAP_TIMEOUT:I = 0xb4

.field private static final TOUCH_SLOP:I = 0x8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/OppoViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/OppoViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v1, 0x78

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/OppoViewConfiguration;->mMinimumFlingVelocity:I

    .line 88
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/OppoViewConfiguration;->mTouchSlop:I

    .line 89
    iput v1, p0, Landroid/view/OppoViewConfiguration;->mOverscrollDistance:I

    .line 90
    iput v1, p0, Landroid/view/OppoViewConfiguration;->mOverflingDistance:I

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x42f00000    # 120.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 104
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 105
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 106
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 108
    .local v1, "density":F
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v4, v1, v5

    .line 113
    .local v4, "sizeAndDensity":F
    :goto_0
    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v5, v1

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/view/OppoViewConfiguration;->mMinimumFlingVelocity:I

    .line 114
    mul-float v5, v4, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/view/OppoViewConfiguration;->mOverscrollDistance:I

    .line 115
    mul-float v5, v4, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/view/OppoViewConfiguration;->mOverflingDistance:I

    .line 117
    const v5, 0xc050439

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/view/OppoViewConfiguration;->mTouchSlop:I

    .line 118
    return-void

    .line 111
    .end local v4    # "sizeAndDensity":F
    :cond_0
    move v4, v1

    .restart local v4    # "sizeAndDensity":F
    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Landroid/view/OppoViewConfiguration;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 128
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c80000    # 100.0f

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 130
    .local v1, "density":I
    sget-object v3, Landroid/view/OppoViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/OppoViewConfiguration;

    .line 131
    .local v0, "configuration":Landroid/view/OppoViewConfiguration;
    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/view/OppoViewConfiguration;

    .end local v0    # "configuration":Landroid/view/OppoViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/OppoViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 133
    .restart local v0    # "configuration":Landroid/view/OppoViewConfiguration;
    sget-object v3, Landroid/view/OppoViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    :cond_0
    return-object v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .prologue
    .line 143
    const-string/jumbo v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    const/16 v0, 0x32

    return v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0xb4

    return v0
.end method


# virtual methods
.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Landroid/view/OppoViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Landroid/view/OppoViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Landroid/view/OppoViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Landroid/view/OppoViewConfiguration;->mTouchSlop:I

    return v0
.end method
