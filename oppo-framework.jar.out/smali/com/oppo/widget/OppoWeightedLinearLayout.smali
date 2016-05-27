.class public Lcom/oppo/widget/OppoWeightedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "OppoWeightedLinearLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMajorWeight:F

.field private mMinorWeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object p1, p0, Lcom/oppo/widget/OppoWeightedLinearLayout;->mContext:Landroid/content/Context;

    .line 51
    sget-object v1, Loppo/R$styleable;->OppoWeightedLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoWeightedLinearLayout;->mMajorWeight:F

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoWeightedLinearLayout;->mMinorWeight:F

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 61
    invoke-virtual {p0}, Lcom/oppo/widget/OppoWeightedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 62
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 63
    .local v5, "screenWidth":I
    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v9, :cond_3

    const/4 v1, 0x1

    .line 65
    .local v1, "isPortrait":Z
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 67
    .local v7, "widthMode":I
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 69
    invoke-virtual {p0}, Lcom/oppo/widget/OppoWeightedLinearLayout;->getMeasuredWidth()I

    move-result v6

    .line 70
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoWeightedLinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 71
    .local v0, "height":I
    const/4 v3, 0x0

    .line 73
    .local v3, "measure":Z
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 74
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "maxHeight":I
    if-eqz v1, :cond_4

    .line 78
    iget-object v9, p0, Lcom/oppo/widget/OppoWeightedLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0xc050402

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 85
    :goto_1
    if-le v0, v2, :cond_0

    .line 86
    move v0, v2

    .line 87
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 88
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 91
    :cond_0
    if-eqz v1, :cond_5

    iget v8, p0, Lcom/oppo/widget/OppoWeightedLinearLayout;->mMinorWeight:F

    .line 92
    .local v8, "widthWeight":F
    :goto_2
    const/high16 v9, -0x80000000

    if-ne v7, v9, :cond_1

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1

    .line 93
    int-to-float v9, v6

    int-to-float v10, v5

    mul-float/2addr v10, v8

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 94
    int-to-float v9, v5

    mul-float/2addr v9, v8

    float-to-int v9, v9

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 96
    const/4 v3, 0x1

    .line 100
    :cond_1
    if-eqz v3, :cond_2

    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 103
    :cond_2
    return-void

    .line 63
    .end local v0    # "height":I
    .end local v1    # "isPortrait":Z
    .end local v2    # "maxHeight":I
    .end local v3    # "measure":Z
    .end local v6    # "width":I
    .end local v7    # "widthMode":I
    .end local v8    # "widthWeight":F
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 81
    .restart local v0    # "height":I
    .restart local v1    # "isPortrait":Z
    .restart local v2    # "maxHeight":I
    .restart local v3    # "measure":Z
    .restart local v6    # "width":I
    .restart local v7    # "widthMode":I
    :cond_4
    iget-object v9, p0, Lcom/oppo/widget/OppoWeightedLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0xc05044b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1

    .line 91
    :cond_5
    iget v8, p0, Lcom/oppo/widget/OppoWeightedLinearLayout;->mMajorWeight:F

    goto :goto_2
.end method
