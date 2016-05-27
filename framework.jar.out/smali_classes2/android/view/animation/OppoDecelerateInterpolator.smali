.class public Landroid/view/animation/OppoDecelerateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "OppoDecelerateInterpolator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OppoDecelerateInterpolator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 10
    .param p1, "input"    # F

    .prologue
    const-wide v8, 0x3ff051eb80000000L    # 1.0199999809265137

    .line 42
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    float-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double v2, v8, v2

    sub-double v2, v8, v2

    double-to-float v0, v2

    .line 46
    .local v0, "interpolation":F
    return v0
.end method
