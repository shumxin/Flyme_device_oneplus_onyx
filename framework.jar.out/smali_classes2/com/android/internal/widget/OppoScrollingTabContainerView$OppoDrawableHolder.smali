.class Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;
.super Ljava/lang/Object;
.source "OppoScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OppoDrawableHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 685
    iput-object p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->x:F

    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->y:F

    .line 687
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->y:F

    return v0
.end method

.method public setX(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 674
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->x:F

    .line 675
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 680
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;->y:F

    .line 681
    return-void
.end method
