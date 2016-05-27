.class public Landroid/widget/OppoTextViewMagnifier;
.super Landroid/view/OppoViewMagnifier;
.source "OppoTextViewMagnifier.java"


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "hostView"    # Landroid/widget/TextView;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/OppoViewMagnifier;-><init>(Landroid/view/View;)V

    .line 30
    return-void
.end method


# virtual methods
.method public move(IIII)V
    .locals 1
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "realScreenX"    # I
    .param p4, "realScreenY"    # I

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/widget/OppoTextViewMagnifier;->mShowing:Z

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p0, p3, p4}, Landroid/widget/OppoTextViewMagnifier;->calculatePosition(II)V

    .line 52
    invoke-virtual {p0, p3, p4}, Landroid/widget/OppoTextViewMagnifier;->calculateDrawingPosition(II)V

    .line 54
    iget v0, p0, Landroid/widget/OppoTextViewMagnifier;->mScreenX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/widget/OppoTextViewMagnifier;->mScreenY:I

    if-eq v0, p2, :cond_1

    .line 55
    :cond_0
    iput p1, p0, Landroid/widget/OppoTextViewMagnifier;->mScreenX:I

    .line 56
    iput p2, p0, Landroid/widget/OppoTextViewMagnifier;->mScreenY:I

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoTextViewMagnifier;->moveInternal()V

    .line 62
    :cond_2
    return-void
.end method

.method public show(IIII)V
    .locals 6
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "realScreenX"    # I
    .param p4, "realScreenY"    # I

    .prologue
    .line 33
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoTextViewMagnifier;->show(IIIIZ)V

    .line 34
    return-void
.end method

.method public show(IIIIZ)V
    .locals 1
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "realScreenX"    # I
    .param p4, "realScreenY"    # I
    .param p5, "animate"    # Z

    .prologue
    .line 37
    iget-boolean v0, p0, Landroid/widget/OppoTextViewMagnifier;->mShowing:Z

    if-nez v0, :cond_0

    .line 38
    iput p1, p0, Landroid/widget/OppoTextViewMagnifier;->mScreenX:I

    .line 39
    iput p2, p0, Landroid/widget/OppoTextViewMagnifier;->mScreenY:I

    .line 41
    invoke-virtual {p0, p3, p4}, Landroid/widget/OppoTextViewMagnifier;->calculatePosition(II)V

    .line 42
    invoke-virtual {p0, p3, p4}, Landroid/widget/OppoTextViewMagnifier;->calculateDrawingPosition(II)V

    .line 44
    invoke-virtual {p0, p5}, Landroid/widget/OppoTextViewMagnifier;->showInternal(Z)V

    .line 46
    :cond_0
    return-void
.end method
