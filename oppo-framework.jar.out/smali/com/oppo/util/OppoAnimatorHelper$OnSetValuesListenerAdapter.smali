.class public Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListenerAdapter;
.super Ljava/lang/Object;
.source "OppoAnimatorHelper.java"

# interfaces
.implements Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/util/OppoAnimatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSetValuesListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndValue(Landroid/view/View;)F
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getPivotXValue(Landroid/view/View;)F
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    return v0
.end method

.method public getPivotYValue(Landroid/view/View;)F
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    return v0
.end method

.method public getStartValue(Landroid/view/View;)F
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method
