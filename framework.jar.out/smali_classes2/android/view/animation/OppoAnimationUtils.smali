.class public Landroid/view/animation/OppoAnimationUtils;
.super Ljava/lang/Object;
.source "OppoAnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInterpolatorFromXml(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroid/view/animation/BaseInterpolator;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "interpolator":Landroid/view/animation/BaseInterpolator;
    const-string v1, "oppoDecelerateInterpolator"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    new-instance v0, Landroid/view/animation/OppoDecelerateInterpolator;

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v0}, Landroid/view/animation/OppoDecelerateInterpolator;-><init>()V

    .line 47
    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    const-string v1, "oppoAccelerateDecelerateInterpolator"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    new-instance v0, Landroid/view/animation/OppoAccelerateDecelerateInterpolator;

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v0}, Landroid/view/animation/OppoAccelerateDecelerateInterpolator;-><init>()V

    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_0

    .line 42
    :cond_2
    const-string v1, "oppoBezierInterpolator"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Landroid/view/animation/OppoBezierInterpolator;

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v0, p1, p2, p3}, Landroid/view/animation/OppoBezierInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_0
.end method
