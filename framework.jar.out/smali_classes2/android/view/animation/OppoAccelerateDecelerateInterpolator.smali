.class public Landroid/view/animation/OppoAccelerateDecelerateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "OppoAccelerateDecelerateInterpolator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OppoAccelerateDecelerateInterpolator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 10
    .param p1, "input"    # F

    .prologue
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 42
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 43
    float-to-double v2, p1

    mul-double/2addr v2, v8

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    div-double/2addr v2, v6

    double-to-float v0, v2

    .line 50
    .local v0, "interpolation":F
    :goto_0
    return v0

    .line 45
    .end local v0    # "interpolation":F
    :cond_0
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    div-double/2addr v2, v6

    double-to-float v0, v2

    .restart local v0    # "interpolation":F
    goto :goto_0
.end method
