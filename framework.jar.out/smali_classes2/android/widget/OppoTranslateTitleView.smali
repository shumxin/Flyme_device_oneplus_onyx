.class public Landroid/widget/OppoTranslateTitleView;
.super Landroid/widget/RelativeLayout;
.source "OppoTranslateTitleView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoTranslateTitleView"


# instance fields
.field private mEllipsisMargin:I

.field private mHasEllipsis:Z

.field private mPronounceLeftMargin:I

.field private mPronounceView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v1, p0, Landroid/widget/OppoTranslateTitleView;->mTitleView:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Landroid/widget/OppoTranslateTitleView;->mPronounceView:Landroid/view/View;

    .line 43
    iput v0, p0, Landroid/widget/OppoTranslateTitleView;->mEllipsisMargin:I

    .line 44
    iput v0, p0, Landroid/widget/OppoTranslateTitleView;->mPronounceLeftMargin:I

    .line 45
    iput-boolean v0, p0, Landroid/widget/OppoTranslateTitleView;->mHasEllipsis:Z

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateTitleView;->initialize(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050454

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoTranslateTitleView;->mEllipsisMargin:I

    .line 115
    return-void
.end method

.method private layoutChild(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "leftChild"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 119
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 120
    .local v0, "left":I
    if-nez p2, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/widget/OppoTranslateTitleView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    .line 126
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v3, v4, v5

    .line 127
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 128
    return-void

    .line 123
    .end local v3    # "top":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 124
    .local v2, "lpLeft":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 61
    const v1, 0xc0204b4

    invoke-virtual {p0, v1}, Landroid/widget/OppoTranslateTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/OppoTranslateTitleView;->mTitleView:Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Landroid/widget/OppoTranslateTitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 63
    const v1, 0xc0204b8

    invoke-virtual {p0, v1}, Landroid/widget/OppoTranslateTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoTranslateTitleView;->mPronounceView:Landroid/view/View;

    .line 64
    iget-object v1, p0, Landroid/widget/OppoTranslateTitleView;->mPronounceView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 65
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, p0, Landroid/widget/OppoTranslateTitleView;->mPronounceLeftMargin:I

    .line 66
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 70
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 72
    iget-boolean v3, p0, Landroid/widget/OppoTranslateTitleView;->mHasEllipsis:Z

    if-eqz v3, :cond_2

    iget v0, p0, Landroid/widget/OppoTranslateTitleView;->mEllipsisMargin:I

    .line 73
    .local v0, "ellipsisMargin":I
    :goto_0
    iget-object v3, p0, Landroid/widget/OppoTranslateTitleView;->mPronounceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 74
    .local v1, "lpPronounce":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p0, Landroid/widget/OppoTranslateTitleView;->mPronounceLeftMargin:I

    add-int/2addr v4, v0

    if-eq v3, v4, :cond_0

    .line 75
    iget v3, p0, Landroid/widget/OppoTranslateTitleView;->mPronounceLeftMargin:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 76
    iget-object v3, p0, Landroid/widget/OppoTranslateTitleView;->mPronounceView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    :cond_0
    iget-object v3, p0, Landroid/widget/OppoTranslateTitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    .local v2, "lpTitle":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Landroid/widget/OppoTranslateTitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/OppoTranslateTitleView;->getPaddingLeft()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    if-eq v3, v4, :cond_1

    .line 81
    iget-object v3, p0, Landroid/widget/OppoTranslateTitleView;->mTitleView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Landroid/widget/OppoTranslateTitleView;->layoutChild(Landroid/view/View;Landroid/view/View;)V

    .line 83
    :cond_1
    iget-object v3, p0, Landroid/widget/OppoTranslateTitleView;->mPronounceView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/OppoTranslateTitleView;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Landroid/widget/OppoTranslateTitleView;->layoutChild(Landroid/view/View;Landroid/view/View;)V

    .line 84
    return-void

    .line 72
    .end local v0    # "ellipsisMargin":I
    .end local v1    # "lpPronounce":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "lpTitle":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 89
    iget-object v5, p0, Landroid/widget/OppoTranslateTitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 90
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 91
    iget-object v5, p0, Landroid/widget/OppoTranslateTitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 93
    .local v3, "measuredWidth":F
    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v5

    int-to-float v0, v5

    .line 94
    .local v0, "ellipsisWidth":F
    cmpl-float v5, v3, v0

    if-lez v5, :cond_1

    const/4 v1, 0x1

    .line 95
    .local v1, "hasEllipsis":Z
    :goto_0
    iget-boolean v5, p0, Landroid/widget/OppoTranslateTitleView;->mHasEllipsis:Z

    if-eq v5, v1, :cond_0

    .line 96
    iput-boolean v1, p0, Landroid/widget/OppoTranslateTitleView;->mHasEllipsis:Z

    .line 97
    invoke-virtual {p0}, Landroid/widget/OppoTranslateTitleView;->requestLayout()V

    .line 100
    .end local v0    # "ellipsisWidth":F
    .end local v1    # "hasEllipsis":Z
    .end local v3    # "measuredWidth":F
    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 94
    .restart local v0    # "ellipsisWidth":F
    .restart local v3    # "measuredWidth":F
    .restart local v4    # "title":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/widget/OppoTranslateTitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method
