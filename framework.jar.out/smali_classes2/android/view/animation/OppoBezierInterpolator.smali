.class public Landroid/view/animation/OppoBezierInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "OppoBezierInterpolator.java"


# instance fields
.field private final ABOVE_ONE:F

.field private final ABOVE_ZERO:F

.field private final BELOW_ONE:F

.field private final DEBUG:Z

.field private final EPSILON:D

.field private final TAG:Ljava/lang/String;

.field private mAbove:Z

.field private mLimit:Z

.field private mOppoUnitBezier:Landroid/view/animation/OppoUnitBezier;


# direct methods
.method public constructor <init>(DDDDZ)V
    .locals 13
    .param p1, "p1x"    # D
    .param p3, "p1y"    # D
    .param p5, "p2x"    # D
    .param p7, "p2y"    # D
    .param p9, "limit"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 30
    const-string v2, "OppoBezierInterpolator"

    iput-object v2, p0, Landroid/view/animation/OppoBezierInterpolator;->TAG:Ljava/lang/String;

    .line 31
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->DEBUG:Z

    .line 33
    const-wide v2, 0x3f10624dd2f1a9fcL    # 6.25E-5

    iput-wide v2, p0, Landroid/view/animation/OppoBezierInterpolator;->EPSILON:D

    .line 34
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/animation/OppoBezierInterpolator;->ABOVE_ONE:F

    .line 35
    const v2, 0x3f7ff972    # 0.9999f

    iput v2, p0, Landroid/view/animation/OppoBezierInterpolator;->BELOW_ONE:F

    .line 36
    const v2, 0x38d1b717    # 1.0E-4f

    iput v2, p0, Landroid/view/animation/OppoBezierInterpolator;->ABOVE_ZERO:F

    .line 37
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    .line 38
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mLimit:Z

    .line 62
    move/from16 v0, p9

    iput-boolean v0, p0, Landroid/view/animation/OppoBezierInterpolator;->mLimit:Z

    .line 63
    new-instance v3, Landroid/view/animation/OppoUnitBezier;

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/OppoUnitBezier;-><init>(DDDD)V

    iput-object v3, p0, Landroid/view/animation/OppoBezierInterpolator;->mOppoUnitBezier:Landroid/view/animation/OppoUnitBezier;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/OppoBezierInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 30
    const-string v3, "OppoBezierInterpolator"

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/animation/OppoBezierInterpolator;->TAG:Ljava/lang/String;

    .line 31
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/animation/OppoBezierInterpolator;->DEBUG:Z

    .line 33
    const-wide v4, 0x3f10624dd2f1a9fcL    # 6.25E-5

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/animation/OppoBezierInterpolator;->EPSILON:D

    .line 34
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/animation/OppoBezierInterpolator;->ABOVE_ONE:F

    .line 35
    const v3, 0x3f7ff972    # 0.9999f

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/animation/OppoBezierInterpolator;->BELOW_ONE:F

    .line 36
    const v3, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/animation/OppoBezierInterpolator;->ABOVE_ZERO:F

    .line 37
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    .line 38
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/animation/OppoBezierInterpolator;->mLimit:Z

    .line 46
    if-eqz p2, :cond_0

    .line 47
    sget-object v3, Loppo/R$styleable;->oppoBezierInterpolator:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 51
    .local v2, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 52
    .local v12, "pointAx":F
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 53
    .local v13, "pointAy":F
    const/4 v3, 0x2

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 54
    .local v14, "pointBx":F
    const/4 v3, 0x3

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    .line 55
    .local v15, "pointBy":F
    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/animation/OppoBezierInterpolator;->mLimit:Z

    .line 56
    new-instance v3, Landroid/view/animation/OppoUnitBezier;

    float-to-double v4, v12

    float-to-double v6, v13

    float-to-double v8, v14

    float-to-double v10, v15

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/OppoUnitBezier;-><init>(DDDD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/animation/OppoBezierInterpolator;->mOppoUnitBezier:Landroid/view/animation/OppoUnitBezier;

    .line 58
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void

    .line 49
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "pointAx":F
    .end local v13    # "pointAy":F
    .end local v14    # "pointBx":F
    .end local v15    # "pointBy":F
    :cond_0
    sget-object v3, Loppo/R$styleable;->oppoBezierInterpolator:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .restart local v2    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "input"    # F

    .prologue
    .line 67
    iget-object v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mOppoUnitBezier:Landroid/view/animation/OppoUnitBezier;

    float-to-double v4, p1

    const-wide v6, 0x3f10624dd2f1a9fcL    # 6.25E-5

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/animation/OppoUnitBezier;->solve(DD)D

    move-result-wide v0

    .line 68
    .local v0, "interpolation":D
    iget-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mLimit:Z

    if-eqz v2, :cond_3

    .line 69
    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    const v2, 0x3f7ff972    # 0.9999f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 70
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    .line 72
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    iget-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    if-nez v2, :cond_2

    .line 73
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    .line 76
    :cond_2
    iget-boolean v2, p0, Landroid/view/animation/OppoBezierInterpolator;->mAbove:Z

    if-eqz v2, :cond_3

    .line 77
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 83
    :cond_3
    double-to-float v2, v0

    return v2
.end method
