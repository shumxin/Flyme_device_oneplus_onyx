.class public Landroid/widget/OppoTranslatePanelView;
.super Landroid/widget/FrameLayout;
.source "OppoTranslatePanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoTranslatePanelView"


# instance fields
.field private mArrowDownView:Landroid/view/View;

.field private mArrowPos:I

.field private mArrowUpView:Landroid/view/View;

.field private mDownArrowBottomOffset:I

.field private mDownArrowTopOffset:I

.field private mIsArrowUp:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxHeight:I

.field private mPanelView:Landroid/view/View;

.field private mUpArrowBottomOffset:I

.field private mUpArrowTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput v0, p0, Landroid/widget/OppoTranslatePanelView;->mUpArrowTopOffset:I

    .line 96
    iput v0, p0, Landroid/widget/OppoTranslatePanelView;->mUpArrowBottomOffset:I

    .line 97
    iput v0, p0, Landroid/widget/OppoTranslatePanelView;->mDownArrowTopOffset:I

    .line 98
    iput v0, p0, Landroid/widget/OppoTranslatePanelView;->mDownArrowBottomOffset:I

    .line 99
    iput v0, p0, Landroid/widget/OppoTranslatePanelView;->mMaxHeight:I

    .line 100
    iput v0, p0, Landroid/widget/OppoTranslatePanelView;->mArrowPos:I

    .line 101
    iput-boolean v0, p0, Landroid/widget/OppoTranslatePanelView;->mIsArrowUp:Z

    .line 102
    iput-object v1, p0, Landroid/widget/OppoTranslatePanelView;->mPanelView:Landroid/view/View;

    .line 103
    iput-object v1, p0, Landroid/widget/OppoTranslatePanelView;->mArrowUpView:Landroid/view/View;

    .line 104
    iput-object v1, p0, Landroid/widget/OppoTranslatePanelView;->mArrowDownView:Landroid/view/View;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/OppoTranslatePanelView;->mListeners:Ljava/util/List;

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/OppoTranslatePanelView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method private getHeightState(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 250
    shl-int/lit8 v0, p1, 0x10

    return v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 235
    sget-object v1, Loppo/R$styleable;->OppoTranslatePanelView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 236
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/OppoTranslatePanelView;->mMaxHeight:I

    .line 237
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050450

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OppoTranslatePanelView;->mUpArrowTopOffset:I

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050451

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OppoTranslatePanelView;->mUpArrowBottomOffset:I

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050452

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OppoTranslatePanelView;->mDownArrowTopOffset:I

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050453

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OppoTranslatePanelView;->mDownArrowBottomOffset:I

    .line 247
    return-void
.end method

.method private layoutChild(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 260
    return-void
.end method

.method private measureChildAndCombineState(Landroid/view/View;III)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "childState"    # I

    .prologue
    const/4 v3, 0x0

    .line 254
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoTranslatePanelView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {p4, v0}, Landroid/widget/OppoTranslatePanelView;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addOnViewChangedListener(Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;

    .prologue
    .line 212
    iget-object v1, p0, Landroid/widget/OppoTranslatePanelView;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/widget/OppoTranslatePanelView;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    iget-object v3, p0, Landroid/widget/OppoTranslatePanelView;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 130
    :try_start_0
    iget-object v2, p0, Landroid/widget/OppoTranslatePanelView;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;

    .line 131
    .local v1, "listener":Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;
    invoke-interface {v1, p1}, Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 133
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 121
    const v0, 0xc02044c

    invoke-virtual {p0, v0}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoTranslatePanelView;->mPanelView:Landroid/view/View;

    .line 122
    const v0, 0xc02044a

    invoke-virtual {p0, v0}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoTranslatePanelView;->mArrowUpView:Landroid/view/View;

    .line 123
    const v0, 0xc02044b

    invoke-virtual {p0, v0}, Landroid/widget/OppoTranslatePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoTranslatePanelView;->mArrowDownView:Landroid/view/View;

    .line 124
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
    .line 183
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "arrowTop":I
    const/4 v3, 0x0

    .line 187
    .local v3, "panelTop":I
    const/4 v2, 0x0

    .line 188
    .local v2, "arrowView":Landroid/view/View;
    iget-boolean v4, p0, Landroid/widget/OppoTranslatePanelView;->mIsArrowUp:Z

    if-eqz v4, :cond_0

    .line 189
    iget-object v2, p0, Landroid/widget/OppoTranslatePanelView;->mArrowUpView:Landroid/view/View;

    .line 190
    iget v4, p0, Landroid/widget/OppoTranslatePanelView;->mUpArrowTopOffset:I

    neg-int v1, v4

    .line 191
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/OppoTranslatePanelView;->mUpArrowBottomOffset:I

    sub-int v3, v4, v5

    .line 197
    :goto_0
    iget v4, p0, Landroid/widget/OppoTranslatePanelView;->mArrowPos:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .line 198
    .local v0, "arrowLeft":I
    if-ltz v0, :cond_1

    .line 199
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, p4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    :goto_1
    invoke-direct {p0, v2, v0, v1}, Landroid/widget/OppoTranslatePanelView;->layoutChild(Landroid/view/View;II)V

    .line 205
    iget-object v4, p0, Landroid/widget/OppoTranslatePanelView;->mPanelView:Landroid/view/View;

    iget-object v5, p0, Landroid/widget/OppoTranslatePanelView;->mPanelView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/OppoTranslatePanelView;->layoutChild(Landroid/view/View;II)V

    .line 206
    return-void

    .line 193
    .end local v0    # "arrowLeft":I
    :cond_0
    iget-object v2, p0, Landroid/widget/OppoTranslatePanelView;->mArrowDownView:Landroid/view/View;

    .line 194
    iget v3, p0, Landroid/widget/OppoTranslatePanelView;->mDownArrowTopOffset:I

    .line 195
    iget-object v4, p0, Landroid/widget/OppoTranslatePanelView;->mPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    iget v5, p0, Landroid/widget/OppoTranslatePanelView;->mDownArrowBottomOffset:I

    sub-int v1, v4, v5

    goto :goto_0

    .line 201
    .restart local v0    # "arrowLeft":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, "childState":I
    const/4 v3, 0x0

    .line 152
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 153
    .local v1, "arrowView":Landroid/view/View;
    const/4 v0, 0x0

    .line 154
    .local v0, "arrowHide":Landroid/view/View;
    iget-boolean v6, p0, Landroid/widget/OppoTranslatePanelView;->mIsArrowUp:Z

    if-eqz v6, :cond_0

    .line 155
    iget-object v1, p0, Landroid/widget/OppoTranslatePanelView;->mArrowUpView:Landroid/view/View;

    .line 156
    iget-object v0, p0, Landroid/widget/OppoTranslatePanelView;->mArrowDownView:Landroid/view/View;

    .line 161
    :goto_0
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-direct {p0, v1, p1, p2, v2}, Landroid/widget/OppoTranslatePanelView;->measureChildAndCombineState(Landroid/view/View;III)I

    move-result v2

    .line 169
    iget-object v6, p0, Landroid/widget/OppoTranslatePanelView;->mPanelView:Landroid/view/View;

    iget v7, p0, Landroid/widget/OppoTranslatePanelView;->mMaxHeight:I

    const/high16 v8, -0x80000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-direct {p0, v6, p1, v7, v2}, Landroid/widget/OppoTranslatePanelView;->measureChildAndCombineState(Landroid/view/View;III)I

    move-result v2

    .line 171
    iget-object v6, p0, Landroid/widget/OppoTranslatePanelView;->mPanelView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 172
    .restart local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v6, p0, Landroid/widget/OppoTranslatePanelView;->mPanelView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .line 173
    .local v5, "panelWidth":I
    iget-object v6, p0, Landroid/widget/OppoTranslatePanelView;->mPanelView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v4, v6, v7

    .line 176
    .local v4, "panelHeight":I
    invoke-static {v5, p1, v2}, Landroid/widget/OppoTranslatePanelView;->resolveSizeAndState(III)I

    move-result v6

    invoke-direct {p0, v2}, Landroid/widget/OppoTranslatePanelView;->getHeightState(I)I

    move-result v7

    invoke-static {v4, p2, v7}, Landroid/widget/OppoTranslatePanelView;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/widget/OppoTranslatePanelView;->setMeasuredDimension(II)V

    .line 179
    return-void

    .line 158
    .end local v4    # "panelHeight":I
    .end local v5    # "panelWidth":I
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoTranslatePanelView;->mArrowDownView:Landroid/view/View;

    .line 159
    iget-object v0, p0, Landroid/widget/OppoTranslatePanelView;->mArrowUpView:Landroid/view/View;

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 139
    iget-object v3, p0, Landroid/widget/OppoTranslatePanelView;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 140
    :try_start_0
    iget-object v2, p0, Landroid/widget/OppoTranslatePanelView;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;

    .line 141
    .local v1, "listener":Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;
    invoke-interface {v1, p1}, Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 143
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    return-void
.end method

.method public removeOnViewChangedListener(Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;

    .prologue
    .line 218
    iget-object v1, p0, Landroid/widget/OppoTranslatePanelView;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/widget/OppoTranslatePanelView;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setArrowPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 228
    iput p1, p0, Landroid/widget/OppoTranslatePanelView;->mArrowPos:I

    .line 229
    return-void
.end method

.method public setArrowUp(Z)V
    .locals 0
    .param p1, "isArrowUp"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Landroid/widget/OppoTranslatePanelView;->mIsArrowUp:Z

    .line 225
    return-void
.end method
