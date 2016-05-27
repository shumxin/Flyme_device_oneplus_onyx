.class public Landroid/widget/OppoFloatPanelView;
.super Landroid/widget/FrameLayout;
.source "OppoFloatPanelView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBottomOffset:I

.field private mIsArrowUp:Z

.field private mPos:I

.field private mTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "OppoFloatPanelView"

    sput-object v0, Landroid/widget/OppoFloatPanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OppoFloatPanelView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/OppoFloatPanelView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private initArrowOffset(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OppoFloatPanelView;->mTopOffset:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OppoFloatPanelView;->mBottomOffset:I

    .line 54
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/OppoFloatPanelView;->initArrowOffset(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private requestLayout(Z)V
    .locals 0
    .param p1, "invalidate"    # Z

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/widget/OppoFloatPanelView;->requestLayout()V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 86
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 88
    const v7, 0xc02044a

    invoke-virtual {p0, v7}, Landroid/widget/OppoFloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "arrowUpView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const v7, 0xc02044b

    invoke-virtual {p0, v7}, Landroid/widget/OppoFloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "arrowDownView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 96
    const v7, 0xc02044c

    invoke-virtual {p0, v7}, Landroid/widget/OppoFloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 97
    .local v4, "panelLinearLayout":Landroid/widget/LinearLayout;
    if-eqz v4, :cond_0

    .line 101
    const/4 v6, 0x0

    .line 102
    .local v6, "top":I
    const/4 v3, 0x0

    .line 104
    .local v3, "linearTop":I
    iget-boolean v7, p0, Landroid/widget/OppoFloatPanelView;->mIsArrowUp:Z

    if-eqz v7, :cond_3

    .line 105
    move-object v5, v1

    .line 106
    .local v5, "tempView":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 107
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 108
    const/4 v6, 0x0

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/OppoFloatPanelView;->mTopOffset:I

    sub-int v3, v7, v8

    .line 117
    :goto_1
    iget v7, p0, Landroid/widget/OppoFloatPanelView;->mPos:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v2, v7, v8

    .line 118
    .local v2, "left":I
    if-ltz v2, :cond_4

    .line 119
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, p4, v7

    if-le v2, v7, :cond_2

    .line 120
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v2, p4, v7

    .line 126
    :cond_2
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 128
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v7, v3, v8, v9}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0

    .line 111
    .end local v2    # "left":I
    .end local v5    # "tempView":Landroid/view/View;
    :cond_3
    move-object v5, v0

    .line 112
    .restart local v5    # "tempView":Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/OppoFloatPanelView;->mBottomOffset:I

    sub-int v6, v7, v8

    .line 115
    const/4 v3, 0x0

    goto :goto_1

    .line 123
    .restart local v2    # "left":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public setArrowPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/OppoFloatPanelView;->setArrowPos(IZ)V

    .line 82
    return-void
.end method

.method public setArrowPos(IZ)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 70
    iget v0, p0, Landroid/widget/OppoFloatPanelView;->mPos:I

    if-eq p1, v0, :cond_0

    .line 71
    iput p1, p0, Landroid/widget/OppoFloatPanelView;->mPos:I

    .line 72
    invoke-direct {p0, p2}, Landroid/widget/OppoFloatPanelView;->requestLayout(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public setArrowUp(Z)V
    .locals 1
    .param p1, "isArrowUp"    # Z

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/OppoFloatPanelView;->setArrowUp(ZZ)V

    .line 78
    return-void
.end method

.method public setArrowUp(ZZ)V
    .locals 1
    .param p1, "isArrowUp"    # Z
    .param p2, "invalidate"    # Z

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/widget/OppoFloatPanelView;->mIsArrowUp:Z

    if-eq p1, v0, :cond_0

    .line 64
    iput-boolean p1, p0, Landroid/widget/OppoFloatPanelView;->mIsArrowUp:Z

    .line 65
    invoke-direct {p0, p2}, Landroid/widget/OppoFloatPanelView;->requestLayout(Z)V

    .line 67
    :cond_0
    return-void
.end method
