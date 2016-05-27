.class public Landroid/widget/OppoGridView;
.super Landroid/widget/AbsListView;
.source "OppoGridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoGridView$1;,
        Landroid/widget/OppoGridView$HeaderViewListAdapter;,
        Landroid/widget/OppoGridView$FixedViewInfo;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field private static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/OppoGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoGridView"


# instance fields
.field private mColumnWidth:I

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/OppoGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGravity:I

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/OppoGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/widget/OppoGridView;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OppoGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OppoGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iput v8, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 97
    iput v7, p0, Landroid/widget/OppoGridView;->mHorizontalSpacing:I

    .line 99
    iput v7, p0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    .line 100
    iput v9, p0, Landroid/widget/OppoGridView;->mStretchMode:I

    .line 105
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    .line 106
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/OppoGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 108
    iput v11, p0, Landroid/widget/OppoGridView;->mGravity:I

    .line 110
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/OppoGridView;->mTempRect:Landroid/graphics/Rect;

    .line 2652
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2653
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 123
    sget-object v6, Landroid/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 128
    .local v2, "hSpacing":I
    invoke-virtual {p0, v2}, Landroid/widget/OppoGridView;->setHorizontalSpacing(I)V

    .line 130
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 132
    .local v5, "vSpacing":I
    invoke-virtual {p0, v5}, Landroid/widget/OppoGridView;->setVerticalSpacing(I)V

    .line 134
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 135
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 136
    invoke-virtual {p0, v3}, Landroid/widget/OppoGridView;->setStretchMode(I)V

    .line 139
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 140
    .local v1, "columnWidth":I
    if-lez v1, :cond_1

    .line 141
    invoke-virtual {p0, v1}, Landroid/widget/OppoGridView;->setColumnWidth(I)V

    .line 144
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 145
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Landroid/widget/OppoGridView;->setNumColumns(I)V

    .line 147
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 148
    if-ltz v3, :cond_2

    .line 149
    invoke-virtual {p0, v3}, Landroid/widget/OppoGridView;->setGravity(I)V

    .line 152
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/widget/OppoGridView;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-object v0
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 891
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 895
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 899
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 900
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 903
    .local v0, "offset":I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/OppoGridView;->offsetChildrenTopAndBottom(I)V

    .line 905
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 919
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 922
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 926
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 927
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 930
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Landroid/widget/OppoGridView;->offsetChildrenTopAndBottom(I)V

    .line 932
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 2275
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v1

    .line 2277
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 2281
    iget-boolean v3, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 2284
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2285
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2286
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 2289
    iget v3, p0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2291
    :cond_0
    if-gez v2, :cond_1

    .line 2293
    const/4 v2, 0x0

    .line 2312
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2313
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/OppoGridView;->offsetChildrenTopAndBottom(I)V

    .line 2316
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 2297
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2298
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2300
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/OppoGridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 2303
    iget v3, p0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2306
    :cond_4
    if-lez v2, :cond_1

    .line 2308
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/OppoGridView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2886
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/OppoGridView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 2887
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2889
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2890
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/OppoGridView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/OppoGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 2891
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 2892
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 2893
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2889
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2897
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1666
    iget-object v4, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 1793
    :goto_0
    return v2

    .line 1670
    :cond_0
    iget-boolean v4, p0, Landroid/widget/OppoGridView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 1671
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->layoutChildren()V

    .line 1674
    :cond_1
    const/4 v1, 0x0

    .line 1675
    .local v1, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1677
    .local v0, "action":I
    if-eq v0, v3, :cond_2

    .line 1678
    sparse-switch p1, :sswitch_data_0

    .line 1777
    :cond_2
    :goto_1
    if-eqz v1, :cond_25

    move v2, v3

    .line 1778
    goto :goto_0

    .line 1680
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1681
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Landroid/widget/OppoGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1686
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1687
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Landroid/widget/OppoGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    .line 1692
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1693
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, v5}, Landroid/widget/OppoGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    :goto_4
    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    .line 1694
    :cond_9
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1695
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Landroid/widget/OppoGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v1, v3

    :goto_5
    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_5

    .line 1700
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1701
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0, v6}, Landroid/widget/OppoGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move v1, v3

    :goto_6
    goto :goto_1

    :cond_d
    move v1, v2

    goto :goto_6

    .line 1702
    :cond_e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1703
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0, v6}, Landroid/widget/OppoGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    move v1, v3

    :goto_7
    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_7

    .line 1709
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1710
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1711
    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1713
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->keyPressed()V

    .line 1714
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1720
    :sswitch_5
    iget-object v4, p0, Landroid/widget/OppoGridView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_11

    iget-object v4, p0, Landroid/widget/OppoGridView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1721
    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1722
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0, v6}, Landroid/widget/OppoGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move v1, v3

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_8

    .line 1723
    :cond_14
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1724
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0, v5}, Landroid/widget/OppoGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    move v1, v3

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v1, v2

    goto :goto_9

    .line 1730
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1731
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p0, v5}, Landroid/widget/OppoGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    move v1, v3

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v1, v2

    goto :goto_a

    .line 1732
    :cond_19
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1733
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, v5}, Landroid/widget/OppoGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    move v1, v3

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v1, v2

    goto :goto_b

    .line 1738
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1739
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p0, v6}, Landroid/widget/OppoGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    move v1, v3

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v1, v2

    goto :goto_c

    .line 1740
    :cond_1e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1741
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {p0, v6}, Landroid/widget/OppoGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    move v1, v3

    :goto_d
    goto/16 :goto_1

    :cond_20
    move v1, v2

    goto :goto_d

    .line 1746
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1747
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p0, v5}, Landroid/widget/OppoGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    move v1, v3

    :goto_e
    goto/16 :goto_1

    :cond_22
    move v1, v2

    goto :goto_e

    .line 1752
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1753
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0, v6}, Landroid/widget/OppoGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move v1, v3

    :goto_f
    goto/16 :goto_1

    :cond_24
    move v1, v2

    goto :goto_f

    .line 1781
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/OppoGridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v2, v3

    .line 1782
    goto/16 :goto_0

    .line 1785
    :cond_26
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1787
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1789
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1791
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1678
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 1785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 685
    iget v7, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 686
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 688
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 691
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 693
    .local v4, "lastBottom":I
    iget v7, p0, Landroid/widget/OppoGridView;->mBottom:I

    iget v8, p0, Landroid/widget/OppoGridView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 697
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 699
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 700
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 704
    .local v3, "firstTop":I
    if-lez v0, :cond_3

    iget v7, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 705
    :cond_0
    iget v7, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 707
    iget-object v7, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 711
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/OppoGridView;->offsetChildrenTopAndBottom(I)V

    .line 712
    iget v7, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 715
    iget v7, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    .line 718
    invoke-direct {p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V

    .line 722
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 725
    iget v8, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 727
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 730
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 733
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 736
    .local v6, "start":I
    iget v8, p0, Landroid/widget/OppoGridView;->mBottom:I

    iget v9, p0, Landroid/widget/OppoGridView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 740
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 741
    .local v7, "topOffset":I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 742
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 743
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 747
    .local v5, "lastPosition":I
    if-lez v7, :cond_3

    iget v8, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 748
    :cond_0
    iget v8, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 750
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 754
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/OppoGridView;->offsetChildrenTopAndBottom(I)V

    .line 755
    iget v8, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 758
    iget-boolean v8, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/OppoGridView;->fillDown(II)Landroid/view/View;

    .line 761
    invoke-direct {p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V

    .line 765
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8
    .param p1, "availableSpace"    # I

    .prologue
    const/4 v7, 0x1

    .line 1052
    iget v2, p0, Landroid/widget/OppoGridView;->mRequestedHorizontalSpacing:I

    .line 1053
    .local v2, "requestedHorizontalSpacing":I
    iget v4, p0, Landroid/widget/OppoGridView;->mStretchMode:I

    .line 1054
    .local v4, "stretchMode":I
    iget v1, p0, Landroid/widget/OppoGridView;->mRequestedColumnWidth:I

    .line 1055
    .local v1, "requestedColumnWidth":I
    const/4 v0, 0x0

    .line 1057
    .local v0, "didNotInitiallyFit":Z
    iget v5, p0, Landroid/widget/OppoGridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 1058
    if-lez v1, :cond_2

    .line 1060
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 1071
    :goto_0
    iget v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    if-gtz v5, :cond_0

    .line 1072
    iput v7, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 1075
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 1083
    iget v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 1086
    .local v3, "spaceLeftOver":I
    if-gez v3, :cond_1

    .line 1087
    const/4 v0, 0x1

    .line 1090
    :cond_1
    packed-switch v4, :pswitch_data_1

    .line 1122
    .end local v3    # "spaceLeftOver":I
    :goto_1
    return v0

    .line 1064
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    goto :goto_0

    .line 1068
    :cond_3
    iget v5, p0, Landroid/widget/OppoGridView;->mRequestedNumColumns:I

    iput v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    goto :goto_0

    .line 1078
    :pswitch_0
    iput v1, p0, Landroid/widget/OppoGridView;->mColumnWidth:I

    .line 1079
    iput v2, p0, Landroid/widget/OppoGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1093
    .restart local v3    # "spaceLeftOver":I
    :pswitch_1
    iget v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/OppoGridView;->mColumnWidth:I

    .line 1094
    iput v2, p0, Landroid/widget/OppoGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1099
    :pswitch_2
    iput v1, p0, Landroid/widget/OppoGridView;->mColumnWidth:I

    .line 1100
    iget v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    if-le v5, v7, :cond_4

    .line 1101
    iget v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/OppoGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1104
    :cond_4
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/OppoGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1110
    :pswitch_3
    iput v1, p0, Landroid/widget/OppoGridView;->mColumnWidth:I

    .line 1111
    iget v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    if-le v5, v7, :cond_5

    .line 1112
    iget v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/OppoGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1115
    :cond_5
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/OppoGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1075
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1090
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    const/4 v8, 0x1

    .line 299
    const/4 v4, 0x0

    .line 301
    .local v4, "selectedView":Landroid/view/View;
    iget v6, p0, Landroid/widget/OppoGridView;->mBottom:I

    iget v7, p0, Landroid/widget/OppoGridView;->mTop:I

    sub-int v0, v6, v7

    .line 302
    .local v0, "end":I
    iget v6, p0, Landroid/widget/OppoGridView;->mGroupFlags:I

    and-int/lit8 v6, v6, 0x22

    const/16 v7, 0x22

    if-ne v6, v7, :cond_0

    .line 303
    iget-object v6, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    .line 306
    :cond_0
    iget-object v6, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 307
    .local v2, "headerCount":I
    iget-object v6, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 308
    .local v1, "footerCount":I
    :goto_0
    if-ge p2, v0, :cond_5

    iget v6, p0, Landroid/widget/OppoGridView;->mItemCount:I

    if-ge p1, v6, :cond_5

    .line 311
    if-lt p1, v2, :cond_1

    iget v6, p0, Landroid/widget/OppoGridView;->mItemCount:I

    sub-int/2addr v6, v1

    if-lt p1, v6, :cond_3

    .line 312
    :cond_1
    invoke-direct {p0, p1, p2, v8}, Landroid/widget/OppoGridView;->makeHeaderFooter(IIZ)Landroid/view/View;

    move-result-object v5

    .line 313
    .local v5, "temp":Landroid/view/View;
    const/4 v3, 0x1

    .line 322
    .local v3, "nextOffset":I
    :goto_1
    if-eqz v5, :cond_2

    .line 323
    move-object v4, v5

    .line 328
    :cond_2
    iget-object v6, p0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, p0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    add-int p2, v6, v7

    .line 330
    add-int/2addr p1, v3

    .line 331
    goto :goto_0

    .line 315
    .end local v3    # "nextOffset":I
    .end local v5    # "temp":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1, p2, v8}, Landroid/widget/OppoGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v5

    .line 316
    .restart local v5    # "temp":Landroid/view/View;
    iget v6, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    add-int/2addr v6, p1

    iget v7, p0, Landroid/widget/OppoGridView;->mItemCount:I

    sub-int/2addr v7, v1

    if-le v6, v7, :cond_4

    .line 317
    iget v6, p0, Landroid/widget/OppoGridView;->mItemCount:I

    sub-int/2addr v6, v1

    sub-int v3, v6, p1

    .restart local v3    # "nextOffset":I
    goto :goto_1

    .line 319
    .end local v3    # "nextOffset":I
    :cond_4
    iget v3, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .restart local v3    # "nextOffset":I
    goto :goto_1

    .line 333
    .end local v3    # "nextOffset":I
    .end local v5    # "temp":Landroid/view/View;
    :cond_5
    iget v6, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    iget v7, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/OppoGridView;->setVisibleRangeHint(II)V

    .line 334
    return-object v4
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .prologue
    .line 474
    iget v1, p0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 475
    iget v1, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 477
    iget v1, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 478
    .local v0, "invertedPosition":I
    iget v1, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 480
    invoke-direct {p0, p1, p2}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 21
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 778
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 779
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 780
    .local v16, "selectedPosition":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 781
    .local v11, "numColumns":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 782
    .local v18, "verticalSpacing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 783
    .local v7, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 786
    .local v6, "footerCount":I
    const/4 v13, -0x1

    .line 789
    .local v13, "rowEnd":I
    move/from16 v0, v16

    if-lt v0, v7, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    sub-int v19, v19, v6

    move/from16 v0, v16

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 790
    :cond_0
    move/from16 v14, v16

    .line 791
    .local v14, "rowStart":I
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v14, v1, v2}, Landroid/widget/OppoGridView;->makeHeaderFooter(IIZ)Landroid/view/View;

    move-result-object v15

    .line 807
    .local v15, "sel":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Landroid/widget/OppoGridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 808
    .local v17, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v11, v14}, Landroid/widget/OppoGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 812
    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 814
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    .line 815
    .local v12, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1, v4}, Landroid/widget/OppoGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 816
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1, v4}, Landroid/widget/OppoGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 819
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 820
    move/from16 v0, v16

    if-lt v0, v7, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    sub-int v19, v19, v6

    move/from16 v0, v16

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 821
    :cond_1
    const/4 v10, 0x1

    .line 825
    .local v10, "nextOffset":I
    :goto_1
    sub-int v19, v14, v10

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    .line 826
    invoke-direct/range {p0 .. p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V

    .line 827
    add-int v19, v14, v10

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillDown(II)Landroid/view/View;

    .line 839
    :goto_2
    return-object v15

    .line 793
    .end local v4    # "bottomSelectionPixel":I
    .end local v10    # "nextOffset":I
    .end local v12    # "referenceView":Landroid/view/View;
    .end local v14    # "rowStart":I
    .end local v15    # "sel":Landroid/view/View;
    .end local v17    # "topSelectionPixel":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 794
    rem-int v19, v16, v11

    sub-int v19, v16, v19

    add-int v14, v19, v7

    .line 802
    .restart local v14    # "rowStart":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move/from16 v19, v13

    :goto_4
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OppoGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .restart local v15    # "sel":Landroid/view/View;
    goto/16 :goto_0

    .line 796
    .end local v14    # "rowStart":I
    .end local v15    # "sel":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v9, v19, v6

    .line 797
    .local v9, "lastGrid":I
    sub-int v8, v9, v16

    .line 799
    .local v8, "invertedSelection":I
    rem-int v19, v8, v11

    sub-int v19, v8, v19

    sub-int v13, v9, v19

    .line 800
    sub-int v19, v13, v11

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .restart local v14    # "rowStart":I
    goto :goto_3

    .end local v8    # "invertedSelection":I
    .end local v9    # "lastGrid":I
    :cond_4
    move/from16 v19, v14

    .line 802
    goto :goto_4

    .line 823
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    .restart local v17    # "topSelectionPixel":I
    :cond_5
    move v10, v11

    .restart local v10    # "nextOffset":I
    goto :goto_1

    .line 829
    .end local v10    # "nextOffset":I
    :cond_6
    move/from16 v0, v16

    if-le v0, v7, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    sub-int v19, v19, v6

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 830
    :cond_7
    const/4 v10, 0x1

    .line 834
    .restart local v10    # "nextOffset":I
    :goto_5
    add-int v19, v13, v10

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillDown(II)Landroid/view/View;

    .line 835
    invoke-direct/range {p0 .. p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V

    .line 836
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_2

    .line 832
    .end local v10    # "nextOffset":I
    :cond_8
    move v10, v11

    .restart local v10    # "nextOffset":I
    goto :goto_5
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    .prologue
    .line 464
    iget v0, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 465
    iget v0, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 466
    iget v0, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 469
    :cond_0
    iget v0, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 470
    iget v0, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/OppoGridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 22
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->reconcileSelectedPosition()I

    move-result v17

    .line 485
    .local v17, "selectedPosition":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 486
    .local v11, "numColumns":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    move/from16 v19, v0

    .line 487
    .local v19, "verticalSpacing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 488
    .local v7, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 491
    .local v6, "footerCount":I
    const/4 v14, -0x1

    .line 493
    .local v14, "rowEnd":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 496
    .local v5, "fadingEdgeLength":I
    move/from16 v0, v17

    if-lt v0, v7, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v20, v0

    sub-int v20, v20, v6

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 497
    :cond_0
    move/from16 v15, v17

    .line 498
    .local v15, "rowStart":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5, v15}, Landroid/widget/OppoGridView;->getTopSelectionPixel(III)I

    move-result v18

    .line 499
    .local v18, "topSelectionPixel":I
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OppoGridView;->makeHeaderFooter(IIZ)Landroid/view/View;

    move-result-object v16

    .line 516
    .local v16, "sel":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 518
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    .line 521
    .local v13, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 522
    move/from16 v0, v17

    if-lt v0, v7, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v20, v0

    sub-int v20, v20, v6

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 523
    :cond_1
    const/4 v10, 0x1

    .line 527
    .local v10, "nextOffset":I
    :goto_1
    add-int v20, v15, v10

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillDown(II)Landroid/view/View;

    .line 528
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/OppoGridView;->pinToBottom(I)V

    .line 529
    sub-int v20, v15, v10

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    .line 530
    invoke-direct/range {p0 .. p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V

    .line 547
    :goto_2
    return-object v16

    .line 501
    .end local v10    # "nextOffset":I
    .end local v13    # "referenceView":Landroid/view/View;
    .end local v15    # "rowStart":I
    .end local v16    # "sel":Landroid/view/View;
    .end local v18    # "topSelectionPixel":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 502
    rem-int v20, v17, v11

    sub-int v20, v17, v20

    add-int v15, v20, v7

    .line 511
    .restart local v15    # "rowStart":I
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5, v15}, Landroid/widget/OppoGridView;->getTopSelectionPixel(III)I

    move-result v18

    .line 513
    .restart local v18    # "topSelectionPixel":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move/from16 v20, v14

    :goto_4
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OppoGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "sel":Landroid/view/View;
    goto :goto_0

    .line 504
    .end local v15    # "rowStart":I
    .end local v16    # "sel":Landroid/view/View;
    .end local v18    # "topSelectionPixel":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    sub-int v9, v20, v6

    .line 505
    .local v9, "lastGrid":I
    sub-int v8, v9, v17

    .line 507
    .local v8, "invertedSelection":I
    rem-int v20, v8, v11

    sub-int v20, v8, v20

    sub-int v14, v9, v20

    .line 508
    sub-int v20, v14, v11

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .restart local v15    # "rowStart":I
    goto :goto_3

    .end local v8    # "invertedSelection":I
    .end local v9    # "lastGrid":I
    .restart local v18    # "topSelectionPixel":I
    :cond_4
    move/from16 v20, v15

    .line 513
    goto :goto_4

    .line 525
    .restart local v13    # "referenceView":Landroid/view/View;
    .restart local v16    # "sel":Landroid/view/View;
    :cond_5
    move v10, v11

    .restart local v10    # "nextOffset":I
    goto :goto_1

    .line 532
    .end local v10    # "nextOffset":I
    :cond_6
    move/from16 v0, v17

    if-le v0, v7, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v20, v0

    sub-int v20, v20, v6

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 533
    :cond_7
    const/4 v10, 0x1

    .line 537
    .restart local v10    # "nextOffset":I
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v11, v15}, Landroid/widget/OppoGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 539
    .local v4, "bottomSelectionPixel":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v20

    sub-int v12, v4, v20

    .line 540
    .local v12, "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/OppoGridView;->offsetChildrenTopAndBottom(I)V

    .line 541
    add-int/lit8 v20, v15, -0x1

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    .line 542
    invoke-direct/range {p0 .. p1}, Landroid/widget/OppoGridView;->pinToTop(I)V

    .line 543
    add-int v20, v14, v10

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillDown(II)Landroid/view/View;

    .line 544
    invoke-direct/range {p0 .. p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V

    goto/16 :goto_2

    .line 535
    .end local v4    # "bottomSelectionPixel":I
    .end local v10    # "nextOffset":I
    .end local v12    # "offset":I
    :cond_8
    move v10, v11

    .restart local v10    # "nextOffset":I
    goto :goto_5
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 605
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 606
    .local v14, "numColumns":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 607
    .local v8, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 610
    .local v7, "footerCount":I
    const/4 v11, -0x1

    .line 613
    .local v11, "motionRowEnd":I
    move/from16 v0, p1

    if-lt v0, v8, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v18, v0

    sub-int v18, v18, v7

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 614
    :cond_0
    move/from16 v12, p1

    .line 615
    .local v12, "motionRowStart":I
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v12, v1, v2}, Landroid/widget/OppoGridView;->makeHeaderFooter(IIZ)Landroid/view/View;

    move-result-object v16

    .line 630
    .local v16, "temp":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 632
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    .line 634
    .local v15, "referenceView":Landroid/view/View;
    if-nez v15, :cond_5

    .line 635
    const/16 v16, 0x0

    .line 679
    .end local v16    # "temp":Landroid/view/View;
    :cond_1
    :goto_1
    return-object v16

    .line 617
    .end local v12    # "motionRowStart":I
    .end local v15    # "referenceView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 618
    rem-int v18, p1, v14

    sub-int v18, p1, v18

    add-int v12, v18, v8

    .line 626
    .restart local v12    # "motionRowStart":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move/from16 v18, v11

    :goto_3
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OppoGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "temp":Landroid/view/View;
    goto :goto_0

    .line 620
    .end local v12    # "motionRowStart":I
    .end local v16    # "temp":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    sub-int v10, v18, v7

    .line 621
    .local v10, "lastGrid":I
    sub-int v9, v10, p1

    .line 623
    .local v9, "invertedSelection":I
    rem-int v18, v9, v14

    sub-int v18, v9, v18

    sub-int v11, v10, v18

    .line 624
    sub-int v18, v11, v14

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .restart local v12    # "motionRowStart":I
    goto :goto_2

    .end local v9    # "invertedSelection":I
    .end local v10    # "lastGrid":I
    :cond_4
    move/from16 v18, v12

    .line 626
    goto :goto_3

    .line 638
    .restart local v15    # "referenceView":Landroid/view/View;
    .restart local v16    # "temp":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    move/from16 v17, v0

    .line 644
    .local v17, "verticalSpacing":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 645
    move/from16 v0, p1

    if-lt v0, v8, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v18, v0

    sub-int v18, v18, v7

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    .line 646
    :cond_6
    const/4 v13, 0x1

    .line 650
    .local v13, "nextOffset":I
    :goto_4
    sub-int v18, v12, v13

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v19, v17

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    move-result-object v4

    .line 651
    .local v4, "above":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V

    .line 652
    add-int v18, v12, v13

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v19

    add-int v19, v19, v17

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillDown(II)Landroid/view/View;

    move-result-object v5

    .line 654
    .local v5, "below":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v6

    .line 655
    .local v6, "childCount":I
    if-lez v6, :cond_7

    .line 656
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v1, v6}, Landroid/widget/OppoGridView;->correctTooHigh(III)V

    .line 674
    :cond_7
    :goto_5
    if-nez v16, :cond_1

    .line 676
    if-eqz v4, :cond_c

    move-object/from16 v16, v4

    .line 677
    goto/16 :goto_1

    .line 648
    .end local v4    # "above":Landroid/view/View;
    .end local v5    # "below":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v13    # "nextOffset":I
    :cond_8
    move v13, v14

    .restart local v13    # "nextOffset":I
    goto :goto_4

    .line 659
    .end local v13    # "nextOffset":I
    :cond_9
    move/from16 v0, p1

    if-le v0, v8, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v18, v0

    sub-int v18, v18, v7

    move/from16 v0, p1

    move/from16 v1, v18

    if-le v0, v1, :cond_b

    .line 660
    :cond_a
    const/4 v13, 0x1

    .line 664
    .restart local v13    # "nextOffset":I
    :goto_6
    add-int v18, v11, v13

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v19

    add-int v19, v19, v17

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillDown(II)Landroid/view/View;

    move-result-object v5

    .line 665
    .restart local v5    # "below":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V

    .line 666
    add-int/lit8 v18, v12, -0x1

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v19, v17

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    move-result-object v4

    .line 668
    .restart local v4    # "above":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v6

    .line 669
    .restart local v6    # "childCount":I
    if-lez v6, :cond_7

    .line 670
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v1, v6}, Landroid/widget/OppoGridView;->correctTooLow(III)V

    goto :goto_5

    .line 662
    .end local v4    # "above":Landroid/view/View;
    .end local v5    # "below":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v13    # "nextOffset":I
    :cond_b
    move v13, v14

    .restart local v13    # "nextOffset":I
    goto :goto_6

    .restart local v4    # "above":Landroid/view/View;
    .restart local v5    # "below":Landroid/view/View;
    .restart local v6    # "childCount":I
    :cond_c
    move-object/from16 v16, v5

    .line 679
    goto/16 :goto_1
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v8, 0x0

    .line 403
    const/4 v4, 0x0

    .line 405
    .local v4, "selectedView":Landroid/view/View;
    const/4 v0, 0x0

    .line 406
    .local v0, "end":I
    iget v6, p0, Landroid/widget/OppoGridView;->mGroupFlags:I

    and-int/lit8 v6, v6, 0x22

    const/16 v7, 0x22

    if-ne v6, v7, :cond_0

    .line 407
    iget-object v6, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->top:I

    .line 410
    :cond_0
    iget-object v6, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 411
    .local v2, "headerCount":I
    iget-object v6, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 412
    .local v1, "footerCount":I
    :goto_0
    if-le p2, v0, :cond_8

    if-ltz p1, :cond_8

    .line 415
    if-lt p1, v2, :cond_1

    iget v6, p0, Landroid/widget/OppoGridView;->mItemCount:I

    sub-int/2addr v6, v1

    if-le p1, v6, :cond_3

    .line 416
    :cond_1
    invoke-direct {p0, p1, p2, v8}, Landroid/widget/OppoGridView;->makeHeaderFooter(IIZ)Landroid/view/View;

    move-result-object v5

    .line 417
    .local v5, "temp":Landroid/view/View;
    const/4 v3, 0x1

    .line 436
    .local v3, "nextOffset":I
    :goto_1
    if-eqz v5, :cond_2

    .line 437
    move-object v4, v5

    .line 440
    :cond_2
    iget-object v6, p0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    sub-int p2, v6, v7

    .line 442
    iput p1, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 444
    sub-int/2addr p1, v3

    .line 445
    goto :goto_0

    .line 418
    .end local v3    # "nextOffset":I
    .end local v5    # "temp":Landroid/view/View;
    :cond_3
    iget v6, p0, Landroid/widget/OppoGridView;->mItemCount:I

    sub-int/2addr v6, v1

    if-ne p1, v6, :cond_5

    .line 419
    invoke-direct {p0, p1, p2, v8}, Landroid/widget/OppoGridView;->makeHeaderFooter(IIZ)Landroid/view/View;

    move-result-object v5

    .line 420
    .restart local v5    # "temp":Landroid/view/View;
    iget v6, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    sub-int v6, p1, v6

    if-ge v6, v2, :cond_4

    .line 421
    sub-int v3, p1, v2

    .restart local v3    # "nextOffset":I
    goto :goto_1

    .line 423
    .end local v3    # "nextOffset":I
    :cond_4
    iget v3, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .restart local v3    # "nextOffset":I
    goto :goto_1

    .line 425
    .end local v3    # "nextOffset":I
    .end local v5    # "temp":Landroid/view/View;
    :cond_5
    if-ne p1, v2, :cond_6

    .line 426
    invoke-direct {p0, p1, p2, v8}, Landroid/widget/OppoGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v5

    .line 427
    .restart local v5    # "temp":Landroid/view/View;
    const/4 v3, 0x1

    .restart local v3    # "nextOffset":I
    goto :goto_1

    .line 429
    .end local v3    # "nextOffset":I
    .end local v5    # "temp":Landroid/view/View;
    :cond_6
    invoke-direct {p0, p1, p2, v8}, Landroid/widget/OppoGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v5

    .line 430
    .restart local v5    # "temp":Landroid/view/View;
    iget v6, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    sub-int v6, p1, v6

    if-ge v6, v2, :cond_7

    .line 431
    sub-int v3, p1, v2

    .restart local v3    # "nextOffset":I
    goto :goto_1

    .line 433
    .end local v3    # "nextOffset":I
    :cond_7
    iget v3, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .restart local v3    # "nextOffset":I
    goto :goto_1

    .line 447
    .end local v3    # "nextOffset":I
    .end local v5    # "temp":Landroid/view/View;
    :cond_8
    iget-boolean v6, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-eqz v6, :cond_9

    .line 448
    add-int/lit8 v6, p1, 0x1

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 451
    :cond_9
    iget v6, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    iget v7, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/OppoGridView;->setVisibleRangeHint(II)V

    .line 452
    return-object v4
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .prologue
    .line 854
    move v0, p1

    .line 855
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 856
    sub-int/2addr v0, p2

    .line 858
    :cond_0
    return v0
.end method

.method private getRowCount(II)I
    .locals 4
    .param p1, "count"    # I
    .param p2, "numColumns"    # I

    .prologue
    .line 2879
    iget-object v3, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2880
    .local v2, "headerCount":I
    iget-object v3, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2881
    .local v0, "footerCount":I
    sub-int v3, p1, v2

    sub-int v1, v3, v0

    .line 2882
    .local v1, "gridCount":I
    add-int v3, v1, p2

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, p2

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    return v3
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .prologue
    .line 871
    move v0, p1

    .line 872
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 873
    add-int/2addr v0, p2

    .line 875
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2024
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v0

    .line 2025
    .local v0, "count":I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 2030
    .local v1, "invertedIndex":I
    iget-boolean v6, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 2031
    iget v6, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 2032
    .local v3, "rowStart":I
    iget v6, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2038
    .local v2, "rowEnd":I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 2059
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2034
    .end local v2    # "rowEnd":I
    .end local v3    # "rowStart":I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 2035
    .restart local v2    # "rowEnd":I
    iget v6, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "rowStart":I
    goto :goto_0

    .line 2042
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 2057
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 2042
    goto :goto_1

    .line 2045
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 2048
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 2051
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 2054
    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    .line 2057
    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    .line 2038
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .prologue
    .line 1447
    iget-boolean v0, p0, Landroid/widget/OppoGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1449
    iget-object v0, p0, Landroid/widget/OppoGridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1450
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1453
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/OppoGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1465
    .end local v1    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    :goto_0
    return-object v9

    .line 1460
    .end local v9    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoGridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/OppoGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1463
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/OppoGridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/OppoGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1465
    .end local v1    # "child":Landroid/view/View;
    .restart local v9    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private makeHeaderFooter(IIZ)Landroid/view/View;
    .locals 12
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2853
    iget-object v0, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 2855
    .local v4, "nextLeft":I
    const/4 v11, 0x0

    .line 2857
    .local v11, "selectedView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->shouldShowSelector()Z

    move-result v8

    .line 2858
    .local v8, "hasFocus":Z
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->touchModeDrawsInPressedState()Z

    move-result v9

    .line 2859
    .local v9, "inClick":Z
    iget v10, p0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    .line 2861
    .local v10, "selectedPosition":I
    move v1, p1

    .line 2862
    .local v1, "pos":I
    if-ne v1, v10, :cond_4

    const/4 v5, 0x1

    .line 2863
    .local v5, "selected":Z
    :goto_0
    if-eqz p3, :cond_0

    const/4 v6, -0x1

    .local v6, "where":I
    :cond_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    .line 2864
    invoke-direct/range {v0 .. v6}, Landroid/widget/OppoGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 2866
    .local v7, "child":Landroid/view/View;
    if-eqz v5, :cond_2

    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    .line 2867
    :cond_1
    move-object v11, v7

    .line 2869
    :cond_2
    iput-object v7, p0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    .line 2871
    if-eqz v11, :cond_3

    .line 2872
    iget-object v0, p0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/OppoGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 2875
    :cond_3
    return-object v11

    .end local v5    # "selected":Z
    .end local v6    # "where":I
    .end local v7    # "child":Landroid/view/View;
    :cond_4
    move v5, v6

    .line 2862
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 18
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OppoGridView;->mColumnWidth:I

    .line 339
    .local v9, "columnWidth":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/OppoGridView;->mHorizontalSpacing:I

    .line 340
    .local v13, "horizontalSpacing":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 341
    .local v12, "headerCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 344
    .local v10, "footerCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OppoGridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    move v1, v13

    :goto_0
    add-int v5, v3, v1

    .line 347
    .local v5, "nextLeft":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-nez v1, :cond_5

    .line 348
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OppoGridView;->mNumColumns:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OppoGridView;->mItemCount:I

    sub-int/2addr v3, v10

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 358
    .local v15, "last":I
    :cond_0
    :goto_1
    const/16 v17, 0x0

    .line 360
    .local v17, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->shouldShowSelector()Z

    move-result v11

    .line 361
    .local v11, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->touchModeDrawsInPressedState()Z

    move-result v14

    .line 362
    .local v14, "inClick":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 364
    .local v16, "selectedPosition":I
    const/4 v8, 0x0

    .line 365
    .local v8, "child":Landroid/view/View;
    move/from16 v2, p1

    .local v2, "pos":I
    :goto_2
    if-ge v2, v15, :cond_8

    .line 367
    move/from16 v0, v16

    if-ne v2, v0, :cond_6

    const/4 v6, 0x1

    .line 370
    .local v6, "selected":Z
    :goto_3
    if-eqz p3, :cond_7

    const/4 v7, -0x1

    .local v7, "where":I
    :goto_4
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    .line 371
    invoke-direct/range {v1 .. v7}, Landroid/widget/OppoGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v8

    .line 373
    add-int/2addr v5, v9

    .line 374
    add-int/lit8 v1, v15, -0x1

    if-ge v2, v1, :cond_1

    .line 375
    add-int/2addr v5, v13

    .line 378
    :cond_1
    if-eqz v6, :cond_3

    if-nez v11, :cond_2

    if-eqz v14, :cond_3

    .line 379
    :cond_2
    move-object/from16 v17, v8

    .line 365
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 344
    .end local v2    # "pos":I
    .end local v5    # "nextLeft":I
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "hasFocus":Z
    .end local v14    # "inClick":Z
    .end local v15    # "last":I
    .end local v16    # "selectedPosition":I
    .end local v17    # "selectedView":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 350
    .restart local v5    # "nextLeft":I
    :cond_5
    add-int/lit8 v15, p1, 0x1

    .line 351
    .restart local v15    # "last":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OppoGridView;->mNumColumns:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 353
    sub-int v1, v15, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OppoGridView;->mNumColumns:I

    if-ge v1, v3, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OppoGridView;->mNumColumns:I

    sub-int v3, v15, p1

    sub-int/2addr v1, v3

    add-int v3, v9, v13

    mul-int/2addr v1, v3

    add-int/2addr v5, v1

    goto :goto_1

    .line 367
    .restart local v2    # "pos":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v11    # "hasFocus":Z
    .restart local v14    # "inClick":Z
    .restart local v16    # "selectedPosition":I
    .restart local v17    # "selectedView":Landroid/view/View;
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 370
    .restart local v6    # "selected":Z
    :cond_7
    sub-int v7, v2, p1

    goto :goto_4

    .line 383
    .end local v6    # "selected":Z
    :cond_8
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    .line 385
    if-eqz v17, :cond_9

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/OppoGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 389
    :cond_9
    return-object v17
.end method

.method private measureHeaderFooter()I
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2819
    const/4 v1, 0x0

    .line 2820
    .local v1, "childHeight":I
    const/4 v3, 0x0

    .line 2821
    .local v3, "childState":I
    iget-object v9, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2822
    .local v6, "headerCount":I
    iget-object v9, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2823
    .local v5, "footerCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v9, p0, Landroid/widget/OppoGridView;->mItemCount:I

    if-ge v7, v9, :cond_3

    .line 2824
    if-lt v7, v6, :cond_0

    iget v9, p0, Landroid/widget/OppoGridView;->mItemCount:I

    sub-int/2addr v9, v5

    if-lt v7, v9, :cond_2

    .line 2825
    :cond_0
    iget-object v9, p0, Landroid/widget/OppoGridView;->mIsScrap:[Z

    invoke-virtual {p0, v7, v9}, Landroid/widget/OppoGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 2827
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 2828
    .local v8, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v8, :cond_1

    .line 2829
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .end local v8    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 2830
    .restart local v8    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2832
    :cond_1
    iget-object v9, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v12}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    iput v9, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2833
    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2835
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v10, v8, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v9, v12, v10}, Landroid/widget/OppoGridView;->getChildMeasureSpec(III)I

    move-result v2

    .line 2837
    .local v2, "childHeightSpec":I
    iget v9, p0, Landroid/widget/OppoGridView;->mWidthMeasureSpec:I

    iget-object v10, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    iget v11, v8, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v9, v10, v11}, Landroid/widget/OppoGridView;->getChildMeasureSpec(III)I

    move-result v4

    .line 2839
    .local v4, "childWidthSpec":I
    invoke-virtual {v0, v4, v2}, Landroid/view/View;->measure(II)V

    .line 2841
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v1, v9

    .line 2842
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v3, v9}, Landroid/widget/OppoGridView;->combineMeasuredStates(II)I

    move-result v3

    .line 2844
    iget-object v9, p0, Landroid/widget/OppoGridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v10, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v9, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2845
    iget-object v9, p0, Landroid/widget/OppoGridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v10, -0x1

    invoke-virtual {v9, v0, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2823
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    .end local v8    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2849
    :cond_3
    return v1
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 968
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 969
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 970
    .local v16, "selectedPosition":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 971
    .local v7, "numColumns":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 975
    .local v18, "verticalSpacing":I
    const/4 v13, -0x1

    .line 977
    .local v13, "rowEnd":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 978
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 980
    .local v9, "oldRowStart":I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 992
    .local v14, "rowStart":I
    :goto_0
    sub-int v12, v14, v9

    .line 994
    .local v12, "rowDelta":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Landroid/widget/OppoGridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 995
    .local v17, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Landroid/widget/OppoGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 999
    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 1004
    if-lez v12, :cond_3

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 1012
    .local v8, "oldBottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OppoGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 1013
    .local v15, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    .line 1015
    .local v11, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/OppoGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 1038
    .end local v8    # "oldBottom":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 1039
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    .line 1040
    invoke-direct/range {p0 .. p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V

    .line 1041
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillDown(II)Landroid/view/View;

    .line 1048
    :goto_4
    return-object v15

    .line 982
    .end local v4    # "bottomSelectionPixel":I
    .end local v9    # "oldRowStart":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v12    # "rowDelta":I
    .end local v14    # "rowStart":I
    .end local v15    # "sel":Landroid/view/View;
    .end local v17    # "topSelectionPixel":I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 984
    .local v6, "invertedSelection":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 985
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 987
    .restart local v14    # "rowStart":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 988
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 989
    .restart local v9    # "oldRowStart":I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 1009
    .end local v6    # "invertedSelection":I
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "rowDelta":I
    .restart local v17    # "topSelectionPixel":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_1

    .restart local v8    # "oldBottom":I
    :cond_2
    move/from16 v19, v14

    .line 1012
    goto/16 :goto_2

    .line 1016
    .end local v8    # "oldBottom":I
    :cond_3
    if-gez v12, :cond_6

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .line 1023
    .local v10, "oldTop":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OppoGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 1024
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    .line 1026
    .restart local v11    # "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/OppoGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 1020
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10    # "oldTop":I
    :cond_5
    move/from16 v19, v14

    .line 1023
    goto :goto_6

    .line 1031
    .end local v10    # "oldTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 1034
    .restart local v10    # "oldTop":I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/OppoGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 1035
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/OppoGridView;->mReferenceView:Landroid/view/View;

    .restart local v11    # "referenceView":Landroid/view/View;
    goto/16 :goto_3

    .line 1031
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10    # "oldTop":I
    :cond_8
    move/from16 v19, v14

    .line 1034
    goto :goto_8

    .line 1043
    .end local v10    # "oldTop":I
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_9
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillDown(II)Landroid/view/View;

    .line 1044
    invoke-direct/range {p0 .. p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V

    .line 1045
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .param p1, "childrenBottom"    # I

    .prologue
    .line 561
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v1

    .line 562
    .local v1, "count":I
    iget v3, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/OppoGridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 563
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 564
    .local v0, "bottom":I
    sub-int v2, p1, v0

    .line 565
    .local v2, "offset":I
    if-lez v2, :cond_0

    .line 566
    invoke-virtual {p0, v2}, Landroid/widget/OppoGridView;->offsetChildrenTopAndBottom(I)V

    .line 569
    .end local v0    # "bottom":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .param p1, "childrenTop"    # I

    .prologue
    .line 551
    iget v2, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 552
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 553
    .local v1, "top":I
    sub-int v0, p1, v1

    .line 554
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 555
    invoke-virtual {p0, v0}, Landroid/widget/OppoGridView;->offsetChildrenTopAndBottom(I)V

    .line 558
    .end local v0    # "offset":I
    .end local v1    # "top":I
    :cond_0
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/OppoGridView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2808
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/OppoGridView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2809
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2810
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/OppoGridView$FixedViewInfo;

    .line 2811
    .local v1, "info":Landroid/widget/OppoGridView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/OppoGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 2812
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2816
    .end local v1    # "info":Landroid/widget/OppoGridView$FixedViewInfo;
    :cond_0
    return-void

    .line 2809
    .restart local v1    # "info":Landroid/widget/OppoGridView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 28
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flow"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    .prologue
    .line 1486
    if-eqz p6, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->shouldShowSelector()Z

    move-result v25

    if-eqz v25, :cond_b

    const/16 v17, 0x1

    .line 1487
    .local v17, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/16 v23, 0x1

    .line 1488
    .local v23, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mTouchMode:I

    move/from16 v19, v0

    .line 1489
    .local v19, "mode":I
    if-lez v19, :cond_d

    const/16 v25, 0x3

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mMotionPosition:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p2

    if-ne v0, v1, :cond_d

    const/16 v16, 0x1

    .line 1491
    .local v16, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    const/16 v22, 0x1

    .line 1492
    .local v22, "updateChildPressed":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1493
    .local v15, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1495
    .local v13, "footerCount":I
    if-eqz p7, :cond_0

    if-nez v23, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v25

    if-eqz v25, :cond_f

    :cond_0
    const/16 v20, 0x1

    .line 1499
    .local v20, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/AbsListView$LayoutParams;

    .line 1500
    .local v21, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v21, :cond_1

    .line 1501
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .end local v21    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v21, Landroid/widget/AbsListView$LayoutParams;

    .line 1503
    .restart local v21    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1505
    if-eqz p7, :cond_2

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    :cond_2
    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v25, v0

    if-eqz v25, :cond_10

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 1507
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/OppoGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1516
    :goto_5
    if-eqz v23, :cond_4

    .line 1517
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1518
    if-eqz v17, :cond_4

    .line 1519
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->requestFocus()Z

    .line 1523
    :cond_4
    if-eqz v22, :cond_5

    .line 1524
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1527
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mChoiceMode:I

    move/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 1528
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v25, v0

    if-eqz v25, :cond_12

    move-object/from16 v25, p1

    .line 1529
    check-cast v25, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v26

    invoke-interface/range {v25 .. v26}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1536
    :cond_6
    :goto_6
    if-eqz v20, :cond_14

    .line 1538
    move/from16 v0, p2

    if-lt v0, v15, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v25, v0

    sub-int v25, v25, v13

    move/from16 v0, p2

    move/from16 v1, v25

    if-lt v0, v1, :cond_13

    .line 1539
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mWidthMeasureSpec:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Landroid/widget/OppoGridView;->getChildMeasureSpec(III)I

    move-result v11

    .line 1545
    .local v11, "childWidthSpec":I
    :goto_7
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Landroid/widget/OppoGridView;->getChildMeasureSpec(III)I

    move-result v7

    .line 1547
    .local v7, "childHeightSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1552
    .end local v7    # "childHeightSpec":I
    .end local v11    # "childWidthSpec":I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1553
    .local v24, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1555
    .local v14, "h":I
    move/from16 v0, p2

    if-lt v0, v15, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v25, v0

    sub-int v25, v25, v13

    move/from16 v0, p2

    move/from16 v1, v25

    if-lt v0, v1, :cond_15

    .line 1556
    :cond_8
    move/from16 v12, v24

    .line 1562
    .local v12, "columnWidth":I
    :goto_9
    if-eqz p4, :cond_16

    move/from16 v10, p3

    .line 1564
    .local v10, "childTop":I
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->getLayoutDirection()I

    move-result v18

    .line 1565
    .local v18, "layoutDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mGravity:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1566
    .local v5, "absoluteGravity":I
    and-int/lit8 v25, v5, 0x7

    sparse-switch v25, :sswitch_data_0

    .line 1569
    move/from16 v8, p5

    .line 1579
    .local v8, "childLeft":I
    :goto_b
    if-eqz v20, :cond_17

    .line 1580
    add-int v9, v8, v24

    .line 1581
    .local v9, "childRight":I
    add-int v6, v10, v14

    .line 1582
    .local v6, "childBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1588
    .end local v6    # "childBottom":I
    .end local v9    # "childRight":I
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mCachingStarted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 1589
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1592
    :cond_9
    if-eqz p7, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p2

    if-eq v0, v1, :cond_a

    .line 1594
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1596
    :cond_a
    return-void

    .line 1486
    .end local v5    # "absoluteGravity":I
    .end local v8    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v12    # "columnWidth":I
    .end local v13    # "footerCount":I
    .end local v14    # "h":I
    .end local v15    # "headerCount":I
    .end local v16    # "isPressed":Z
    .end local v17    # "isSelected":Z
    .end local v18    # "layoutDirection":I
    .end local v19    # "mode":I
    .end local v20    # "needToMeasure":Z
    .end local v21    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v22    # "updateChildPressed":Z
    .end local v23    # "updateChildSelected":Z
    .end local v24    # "w":I
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1487
    .restart local v17    # "isSelected":Z
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 1489
    .restart local v19    # "mode":I
    .restart local v23    # "updateChildSelected":Z
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1491
    .restart local v16    # "isPressed":Z
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1495
    .restart local v13    # "footerCount":I
    .restart local v15    # "headerCount":I
    .restart local v22    # "updateChildPressed":Z
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 1509
    .restart local v20    # "needToMeasure":Z
    .restart local v21    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_10
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1510
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 1511
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1513
    :cond_11
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v21

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/OppoGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1530
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v25, v0

    const/16 v26, 0xb

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 1542
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mColumnWidth:I

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Landroid/widget/OppoGridView;->getChildMeasureSpec(III)I

    move-result v11

    .restart local v11    # "childWidthSpec":I
    goto/16 :goto_7

    .line 1549
    .end local v11    # "childWidthSpec":I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/widget/OppoGridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_8

    .line 1558
    .restart local v14    # "h":I
    .restart local v24    # "w":I
    :cond_15
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/OppoGridView;->mColumnWidth:I

    .restart local v12    # "columnWidth":I
    goto/16 :goto_9

    .line 1562
    :cond_16
    sub-int v10, p3, v14

    goto/16 :goto_a

    .line 1572
    .restart local v5    # "absoluteGravity":I
    .restart local v10    # "childTop":I
    .restart local v18    # "layoutDirection":I
    :sswitch_0
    sub-int v25, v12, v24

    div-int/lit8 v25, v25, 0x2

    add-int v8, p5, v25

    .line 1573
    .restart local v8    # "childLeft":I
    goto/16 :goto_b

    .line 1575
    .end local v8    # "childLeft":I
    :sswitch_1
    add-int v25, p5, v12

    sub-int v8, v25, v24

    .restart local v8    # "childLeft":I
    goto/16 :goto_b

    .line 1584
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v25

    sub-int v25, v8, v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1585
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v25, v10, v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_c

    .line 1566
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2777
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/OppoGridView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2778
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 2753
    new-instance v0, Landroid/widget/OppoGridView$FixedViewInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/OppoGridView$FixedViewInfo;-><init>(Landroid/widget/OppoGridView;Landroid/widget/OppoGridView$1;)V

    .line 2754
    .local v0, "info":Landroid/widget/OppoGridView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/OppoGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 2755
    iput-object p2, v0, Landroid/widget/OppoGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 2756
    iput-boolean p3, v0, Landroid/widget/OppoGridView$FixedViewInfo;->isSelectable:Z

    .line 2757
    iget-object v1, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2761
    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 2762
    iget-object v1, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 2764
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2703
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/OppoGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2704
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 2673
    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/OppoGridView$HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 2674
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2678
    :cond_0
    new-instance v0, Landroid/widget/OppoGridView$FixedViewInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/OppoGridView$FixedViewInfo;-><init>(Landroid/widget/OppoGridView;Landroid/widget/OppoGridView$1;)V

    .line 2679
    .local v0, "info":Landroid/widget/OppoGridView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/OppoGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 2680
    iput-object p2, v0, Landroid/widget/OppoGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 2681
    iput-boolean p3, v0, Landroid/widget/OppoGridView$FixedViewInfo;->isSelectable:Z

    .line 2682
    iget-object v1, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 2687
    iget-object v1, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 2689
    :cond_1
    return-void
.end method

.method arrowScroll(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1859
    iget v4, p0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    .line 1860
    .local v4, "selectedPosition":I
    iget v3, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 1865
    .local v3, "numColumns":I
    const/4 v2, 0x0

    .line 1867
    .local v2, "moved":Z
    iget-boolean v6, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 1868
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1869
    .local v5, "startOfRowPos":I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1876
    .local v0, "endOfRowPos":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1907
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1908
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/OppoGridView;->playSoundEffect(I)V

    .line 1909
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->invokeOnItemScrollListener()V

    .line 1912
    :cond_1
    if-eqz v2, :cond_2

    .line 1913
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->awakenScrollBars()Z

    .line 1916
    :cond_2
    return v2

    .line 1871
    .end local v0    # "endOfRowPos":I
    .end local v5    # "startOfRowPos":I
    :cond_3
    iget v6, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1872
    .local v1, "invertedSelection":I
    iget v6, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1873
    .restart local v0    # "endOfRowPos":I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "startOfRowPos":I
    goto :goto_0

    .line 1878
    .end local v1    # "invertedSelection":I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1879
    iput v8, p0, Landroid/widget/OppoGridView;->mLayoutMode:I

    .line 1880
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/OppoGridView;->setSelectionInt(I)V

    .line 1881
    const/4 v2, 0x1

    goto :goto_1

    .line 1885
    :sswitch_1
    iget v6, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 1886
    iput v8, p0, Landroid/widget/OppoGridView;->mLayoutMode:I

    .line 1887
    add-int v6, v4, v3

    iget v7, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/OppoGridView;->setSelectionInt(I)V

    .line 1888
    const/4 v2, 0x1

    goto :goto_1

    .line 1892
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 1893
    iput v8, p0, Landroid/widget/OppoGridView;->mLayoutMode:I

    .line 1894
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/OppoGridView;->setSelectionInt(I)V

    .line 1895
    const/4 v2, 0x1

    goto :goto_1

    .line 1899
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 1900
    iput v8, p0, Landroid/widget/OppoGridView;->mLayoutMode:I

    .line 1901
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/OppoGridView;->setSelectionInt(I)V

    .line 1902
    const/4 v2, 0x1

    goto :goto_1

    .line 1876
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 1222
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1225
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1226
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1227
    .restart local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1230
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1231
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1232
    iget v2, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1233
    iget v2, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1235
    iget-boolean v2, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1236
    iget v2, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1237
    iget v2, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1244
    :goto_0
    return-void

    .line 1239
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1241
    .local v1, "invertedIndex":I
    iget v2, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1242
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2320
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v1

    .line 2321
    .local v1, "count":I
    if-lez v1, :cond_2

    .line 2322
    iget v4, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 2323
    .local v4, "numColumns":I
    invoke-direct {p0, v1, v4}, Landroid/widget/OppoGridView;->getRowCount(II)I

    move-result v5

    .line 2325
    .local v5, "rowCount":I
    mul-int/lit8 v2, v5, 0x64

    .line 2327
    .local v2, "extent":I
    invoke-virtual {p0, v8}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2328
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2329
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2330
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2331
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 2334
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2335
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2336
    .local v0, "bottom":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2337
    if-lez v3, :cond_1

    .line 2338
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 2343
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2348
    iget v8, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    if-ltz v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 2349
    invoke-virtual {p0, v7}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2350
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2351
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2352
    .local v0, "height":I
    if-lez v0, :cond_0

    .line 2353
    iget v1, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 2354
    .local v1, "numColumns":I
    iget v8, p0, Landroid/widget/OppoGridView;->mItemCount:I

    invoke-direct {p0, v8, v1}, Landroid/widget/OppoGridView;->getRowCount(II)I

    move-result v3

    .line 2358
    .local v3, "rowCount":I
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->isStackFromBottom()Z

    move-result v8

    if-eqz v8, :cond_1

    mul-int v8, v3, v1

    iget v9, p0, Landroid/widget/OppoGridView;->mItemCount:I

    sub-int v2, v8, v9

    .line 2360
    .local v2, "oddItemsOnFirstRow":I
    :goto_0
    iget v8, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    add-int/2addr v8, v2

    div-int v6, v8, v1

    .line 2361
    .local v6, "whichRow":I
    mul-int/lit8 v8, v6, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v0

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/OppoGridView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2365
    .end local v0    # "height":I
    .end local v1    # "numColumns":I
    .end local v2    # "oddItemsOnFirstRow":I
    .end local v3    # "rowCount":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "whichRow":I
    :cond_0
    return v7

    .restart local v0    # "height":I
    .restart local v1    # "numColumns":I
    .restart local v3    # "rowCount":I
    .restart local v4    # "top":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    move v2, v7

    .line 2358
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 2371
    iget v0, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 2372
    .local v0, "numColumns":I
    iget v3, p0, Landroid/widget/OppoGridView;->mItemCount:I

    invoke-direct {p0, v3, v0}, Landroid/widget/OppoGridView;->getRowCount(II)I

    move-result v2

    .line 2373
    .local v2, "rowCount":I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2374
    .local v1, "result":I
    iget v3, p0, Landroid/widget/OppoGridView;->mScrollY:I

    if-eqz v3, :cond_0

    .line 2376
    iget v3, p0, Landroid/widget/OppoGridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2378
    :cond_0
    return v1
.end method

.method fillGap(Z)V
    .locals 12
    .param p1, "down"    # Z

    .prologue
    const/16 v11, 0x22

    .line 243
    iget v4, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 244
    .local v4, "numColumns":I
    iget v9, p0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    .line 245
    .local v9, "verticalSpacing":I
    iget-object v10, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 246
    .local v2, "headerCount":I
    iget-object v10, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 248
    .local v1, "footerCount":I
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v0

    .line 250
    .local v0, "count":I
    if-eqz p1, :cond_3

    .line 251
    const/4 v6, 0x0

    .line 252
    .local v6, "paddingTop":I
    iget v10, p0, Landroid/widget/OppoGridView;->mGroupFlags:I

    and-int/lit8 v10, v10, 0x22

    if-ne v10, v11, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getListPaddingTop()I

    move-result v6

    .line 255
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int v8, v10, v9

    .line 257
    .local v8, "startOffset":I
    :goto_0
    iget v10, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    add-int v7, v10, v0

    .line 258
    .local v7, "position":I
    iget-boolean v10, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-eqz v10, :cond_1

    .line 259
    add-int/lit8 v10, v4, -0x1

    add-int/2addr v7, v10

    .line 261
    :cond_1
    invoke-direct {p0, v7, v8}, Landroid/widget/OppoGridView;->fillDown(II)Landroid/view/View;

    .line 262
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v10

    invoke-direct {p0, v4, v9, v10}, Landroid/widget/OppoGridView;->correctTooHigh(III)V

    .line 285
    .end local v6    # "paddingTop":I
    :goto_1
    return-void

    .end local v7    # "position":I
    .end local v8    # "startOffset":I
    .restart local v6    # "paddingTop":I
    :cond_2
    move v8, v6

    .line 255
    goto :goto_0

    .line 264
    .end local v6    # "paddingTop":I
    :cond_3
    const/4 v5, 0x0

    .line 265
    .local v5, "paddingBottom":I
    iget v10, p0, Landroid/widget/OppoGridView;->mGroupFlags:I

    and-int/lit8 v10, v10, 0x22

    if-ne v10, v11, :cond_4

    .line 266
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getListPaddingBottom()I

    move-result v5

    .line 268
    :cond_4
    if-lez v0, :cond_6

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v8, v10, v9

    .line 270
    .restart local v8    # "startOffset":I
    :goto_2
    iget v7, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 272
    .restart local v7    # "position":I
    if-le v7, v2, :cond_5

    iget v10, p0, Landroid/widget/OppoGridView;->mItemCount:I

    sub-int/2addr v10, v1

    if-le v7, v10, :cond_7

    .line 273
    :cond_5
    const/4 v3, 0x1

    .line 277
    .local v3, "nextOffset":I
    :goto_3
    iget-boolean v10, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-nez v10, :cond_8

    .line 278
    sub-int/2addr v7, v3

    .line 282
    :goto_4
    invoke-direct {p0, v7, v8}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    .line 283
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v10

    invoke-direct {p0, v4, v9, v10}, Landroid/widget/OppoGridView;->correctTooLow(III)V

    goto :goto_1

    .line 268
    .end local v3    # "nextOffset":I
    .end local v7    # "position":I
    .end local v8    # "startOffset":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getHeight()I

    move-result v10

    sub-int v8, v10, v5

    goto :goto_2

    .line 275
    .restart local v7    # "position":I
    .restart local v8    # "startOffset":I
    :cond_7
    move v3, v4

    .restart local v3    # "nextOffset":I
    goto :goto_3

    .line 280
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_4
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v0

    .line 574
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 576
    iget v2, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 577
    .local v2, "numColumns":I
    iget-boolean v3, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 578
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 579
    invoke-virtual {p0, v1}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 580
    iget v3, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 591
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :goto_1
    return v3

    .line 578
    .restart local v1    # "i":I
    .restart local v2    # "numColumns":I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 584
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 585
    invoke-virtual {p0, v1}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 586
    iget v3, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 584
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 591
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x2

    .line 1830
    const/4 v0, 0x0

    .line 1831
    .local v0, "moved":Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1832
    iput v2, p0, Landroid/widget/OppoGridView;->mLayoutMode:I

    .line 1833
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/OppoGridView;->setSelectionInt(I)V

    .line 1834
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->invokeOnItemScrollListener()V

    .line 1835
    const/4 v0, 0x1

    .line 1843
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1844
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->awakenScrollBars()Z

    .line 1847
    :cond_1
    return v0

    .line 1836
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1837
    iput v2, p0, Landroid/widget/OppoGridView;->mLayoutMode:I

    .line 1838
    iget v1, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/OppoGridView;->setSelectionInt(I)V

    .line 1839
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->invokeOnItemScrollListener()V

    .line 1840
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .locals 1

    .prologue
    .line 2223
    iget v0, p0, Landroid/widget/OppoGridView;->mColumnWidth:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 2088
    iget v0, p0, Landroid/widget/OppoGridView;->mGravity:I

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 2708
    iget-object v0, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .prologue
    .line 2123
    iget v0, p0, Landroid/widget/OppoGridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2267
    iget v0, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    .prologue
    .line 2240
    iget v0, p0, Landroid/widget/OppoGridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    .prologue
    .line 2143
    iget v0, p0, Landroid/widget/OppoGridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 2193
    iget v0, p0, Landroid/widget/OppoGridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .prologue
    .line 2174
    iget v0, p0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 1248
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/OppoGridView;->mBlockLayoutRequests:Z

    .line 1249
    .local v3, "blockLayoutRequests":Z
    if-nez v3, :cond_0

    .line 1250
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoGridView;->mBlockLayoutRequests:Z

    .line 1254
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1256
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->invalidate()V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1259
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->resetList()V

    .line 1260
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    if-nez v3, :cond_1

    .line 1423
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoGridView;->mBlockLayoutRequests:Z

    .line 1426
    :cond_1
    :goto_0
    return-void

    .line 1264
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1265
    .local v7, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1267
    .local v6, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v5

    .line 1269
    .local v5, "childCount":I
    const/4 v9, 0x0

    .line 1272
    .local v9, "delta":I
    const/16 v16, 0x0

    .line 1273
    .local v16, "oldSel":Landroid/view/View;
    const/4 v15, 0x0

    .line 1274
    .local v15, "oldFirst":Landroid/view/View;
    const/4 v14, 0x0

    .line 1277
    .local v14, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1296
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1297
    .local v12, "index":I
    if-ltz v12, :cond_3

    if-ge v12, v5, :cond_3

    .line 1298
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1302
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1305
    .end local v12    # "index":I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/OppoGridView;->mDataChanged:Z

    .line 1306
    .local v8, "dataChanged":Z
    if-eqz v8, :cond_5

    .line 1307
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->handleDataChanged()V

    .line 1312
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 1313
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->resetList()V

    .line 1314
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1422
    if-nez v3, :cond_1

    .line 1423
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoGridView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1279
    .end local v8    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1280
    .restart local v12    # "index":I
    if-ltz v12, :cond_4

    if-ge v12, v5, :cond_4

    .line 1281
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    .line 1290
    .end local v12    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_4

    .line 1291
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_1

    .line 1318
    .restart local v8    # "dataChanged":Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/OppoGridView;->setSelectedPositionInt(I)V

    .line 1322
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 1323
    .local v10, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1325
    .local v17, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v8, :cond_7

    .line 1326
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v5, :cond_8

    .line 1327
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1326
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1330
    .end local v11    # "i":I
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1335
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->detachAllViewsFromParent()V

    .line 1336
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1338
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 1366
    if-nez v5, :cond_13

    .line 1367
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_9
    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/OppoGridView;->setSelectedPositionInt(I)V

    .line 1370
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/OppoGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1392
    .end local v7    # "childrenTop":I
    .local v18, "sel":Landroid/view/View;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1394
    if-eqz v18, :cond_18

    .line 1395
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoGridView;->positionSelector(ILandroid/view/View;)V

    .line 1396
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoGridView;->mSelectedTop:I

    .line 1405
    :cond_a
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoGridView;->mLayoutMode:I

    .line 1406
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoGridView;->mDataChanged:Z

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/OppoGridView;->post(Ljava/lang/Runnable;)Z

    .line 1409
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/OppoGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1411
    :cond_b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoGridView;->mNeedSync:Z

    .line 1412
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/OppoGridView;->setNextSelectedPositionInt(I)V

    .line 1414
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->updateScrollIndicators()V

    .line 1416
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_c

    .line 1417
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->checkSelectionChanged()V

    .line 1420
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1422
    if-nez v3, :cond_1

    .line 1423
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoGridView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1340
    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :pswitch_3
    if-eqz v14, :cond_d

    .line 1341
    :try_start_3
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Landroid/widget/OppoGridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1343
    .end local v18    # "sel":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Landroid/widget/OppoGridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1345
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1347
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoGridView;->mFirstPosition:I

    .line 1348
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/OppoGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1349
    .restart local v18    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1422
    .end local v5    # "childCount":I
    .end local v6    # "childrenBottom":I
    .end local v7    # "childrenTop":I
    .end local v8    # "dataChanged":Z
    .end local v9    # "delta":I
    .end local v10    # "firstPosition":I
    .end local v14    # "newSel":Landroid/view/View;
    .end local v15    # "oldFirst":Landroid/view/View;
    .end local v16    # "oldSel":Landroid/view/View;
    .end local v17    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v18    # "sel":Landroid/view/View;
    :catchall_0
    move-exception v19

    if-nez v3, :cond_e

    .line 1423
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoGridView;->mBlockLayoutRequests:Z

    :cond_e
    throw v19

    .line 1352
    .restart local v5    # "childCount":I
    .restart local v6    # "childrenBottom":I
    .restart local v7    # "childrenTop":I
    .restart local v8    # "dataChanged":Z
    .restart local v9    # "delta":I
    .restart local v10    # "firstPosition":I
    .restart local v14    # "newSel":Landroid/view/View;
    .restart local v15    # "oldFirst":Landroid/view/View;
    .restart local v16    # "oldSel":Landroid/view/View;
    .restart local v17    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Landroid/widget/OppoGridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1353
    .restart local v18    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/OppoGridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1356
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1357
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1359
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/OppoGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1360
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1363
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Landroid/widget/OppoGridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1364
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1368
    .end local v18    # "sel":Landroid/view/View;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1372
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1373
    .local v13, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_12

    :cond_11
    const/16 v19, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/OppoGridView;->setSelectedPositionInt(I)V

    .line 1375
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Landroid/widget/OppoGridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1376
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    :cond_12
    move/from16 v19, v13

    .line 1373
    goto :goto_6

    .line 1378
    .end local v13    # "last":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    .line 1379
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_14

    .end local v7    # "childrenTop":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/OppoGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :cond_14
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_7

    .line 1381
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 1382
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_16

    .end local v7    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/OppoGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_8

    .line 1385
    :cond_17
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/OppoGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1397
    .end local v7    # "childrenTop":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    .line 1398
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1399
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/widget/OppoGridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1401
    .end local v4    # "child":Landroid/view/View;
    :cond_19
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoGridView;->mSelectedTop:I

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 1277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1338
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v1, -0x1

    .line 227
    iget-object v0, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 228
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OppoGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 235
    .end local p1    # "position":I
    :cond_1
    :goto_0
    return p1

    .line 232
    .restart local p1    # "position":I
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Landroid/widget/OppoGridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 233
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1979
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1981
    const/4 v1, -0x1

    .line 1982
    .local v1, "closestChildIndex":I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1983
    iget v7, p0, Landroid/widget/OppoGridView;->mScrollX:I

    iget v8, p0, Landroid/widget/OppoGridView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1987
    iget-object v6, p0, Landroid/widget/OppoGridView;->mTempRect:Landroid/graphics/Rect;

    .line 1988
    .local v6, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1989
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v0

    .line 1990
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1992
    invoke-direct {p0, v3, p2}, Landroid/widget/OppoGridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1990
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1996
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/OppoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1997
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1998
    invoke-virtual {p0, v5, v6}, Landroid/widget/OppoGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1999
    invoke-static {p3, v6, p2}, Landroid/widget/OppoGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 2001
    .local v2, "distance":I
    if-ge v2, v4, :cond_0

    .line 2002
    move v4, v2

    .line 2003
    move v1, v3

    goto :goto_1

    .line 2008
    .end local v0    # "childCount":I
    .end local v2    # "distance":I
    .end local v3    # "i":I
    .end local v4    # "minDistance":I
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherRect":Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 2009
    iget v7, p0, Landroid/widget/OppoGridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/OppoGridView;->setSelection(I)V

    .line 2013
    :goto_2
    return-void

    .line 2011
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2383
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2384
    const-class v0, Landroid/widget/OppoGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2385
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2389
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2390
    const-class v0, Landroid/widget/OppoGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2391
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1652
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/OppoGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1657
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OppoGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1662
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/OppoGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1128
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1130
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1131
    .local v18, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1132
    .local v12, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1133
    .local v19, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1134
    .local v13, "heightSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1135
    .local v11, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1137
    .local v10, "footerCount":I
    if-nez v18, :cond_0

    .line 1138
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mColumnWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_a

    .line 1139
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mColumnWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    .line 1143
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->getVerticalScrollbarWidth()I

    move-result v20

    add-int v19, v19, v20

    .line 1146
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v6, v20, v21

    .line 1147
    .local v6, "childWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/OppoGridView;->determineColumns(I)Z

    move-result v9

    .line 1149
    .local v9, "didNotInitiallyFit":Z
    const/4 v3, 0x0

    .line 1150
    .local v3, "childHeight":I
    const/4 v5, 0x0

    .line 1152
    .local v5, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoGridView;->mItemCount:I

    .line 1153
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/OppoGridView;->mItemCount:I

    .line 1154
    .local v8, "count":I
    if-le v8, v11, :cond_2

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mIsScrap:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/widget/OppoGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1157
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/AbsListView$LayoutParams;

    .line 1158
    .local v17, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v17, :cond_1

    .line 1159
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .end local v17    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v17, Landroid/widget/AbsListView$LayoutParams;

    .line 1160
    .restart local v17    # "p":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1163
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1165
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/widget/OppoGridView;->getChildMeasureSpec(III)I

    move-result v4

    .line 1167
    .local v4, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/widget/OppoGridView;->getChildMeasureSpec(III)I

    move-result v7

    .line 1169
    .local v7, "childWidthSpec":I
    invoke-virtual {v2, v7, v4}, Landroid/view/View;->measure(II)V

    .line 1171
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1172
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v5, v0}, Landroid/widget/OppoGridView;->combineMeasuredStates(II)I

    move-result v5

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1179
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childHeightSpec":I
    .end local v7    # "childWidthSpec":I
    .end local v17    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    if-nez v12, :cond_3

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoGridView;->getVerticalFadingEdgeLength()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v13, v20, v21

    .line 1184
    :cond_3
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v12, v0, :cond_7

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1187
    .local v16, "ourSize":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 1188
    .local v15, "numColumns":I
    move v14, v11

    .local v14, "i":I
    :goto_2
    sub-int v20, v8, v10

    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 1189
    add-int v16, v16, v3

    .line 1190
    add-int v20, v14, v15

    move/from16 v0, v20

    if-ge v0, v8, :cond_4

    .line 1191
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 1193
    :cond_4
    move/from16 v0, v16

    if-lt v0, v13, :cond_c

    .line 1194
    move/from16 v16, v13

    .line 1198
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/widget/OppoGridView;->measureHeaderFooter()I

    move-result v20

    add-int v16, v16, v20

    .line 1199
    move/from16 v0, v16

    if-lt v0, v13, :cond_6

    .line 1200
    move/from16 v16, v13

    .line 1202
    :cond_6
    move/from16 v13, v16

    .line 1205
    .end local v14    # "i":I
    .end local v15    # "numColumns":I
    .end local v16    # "ourSize":I
    :cond_7
    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 1206
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mColumnWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mRequestedNumColumns:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoGridView;->mHorizontalSpacing:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1209
    .restart local v16    # "ourSize":I
    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    if-eqz v9, :cond_9

    .line 1210
    :cond_8
    const/high16 v20, 0x1000000

    or-int v19, v19, v20

    .line 1214
    .end local v16    # "ourSize":I
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/widget/OppoGridView;->setMeasuredDimension(II)V

    .line 1215
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoGridView;->mWidthMeasureSpec:I

    .line 1216
    return-void

    .line 1141
    .end local v3    # "childHeight":I
    .end local v5    # "childState":I
    .end local v6    # "childWidth":I
    .end local v8    # "count":I
    .end local v9    # "didNotInitiallyFit":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    goto/16 :goto_0

    .line 1152
    .restart local v3    # "childHeight":I
    .restart local v5    # "childState":I
    .restart local v6    # "childWidth":I
    .restart local v9    # "didNotInitiallyFit":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    goto/16 :goto_1

    .line 1188
    .restart local v8    # "count":I
    .restart local v14    # "i":I
    .restart local v15    # "numColumns":I
    .restart local v16    # "ourSize":I
    :cond_c
    add-int/2addr v14, v15

    goto/16 :goto_2
.end method

.method pageScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1804
    const/4 v0, -0x1

    .line 1806
    .local v0, "nextPage":I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1807
    iget v2, p0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1812
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 1813
    invoke-virtual {p0, v0}, Landroid/widget/OppoGridView;->setSelectionInt(I)V

    .line 1814
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->invokeOnItemScrollListener()V

    .line 1815
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->awakenScrollBars()Z

    .line 1816
    const/4 v1, 0x1

    .line 1819
    :cond_1
    return v1

    .line 1808
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1809
    iget v2, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/OppoGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2793
    iget-object v1, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2794
    const/4 v0, 0x0

    .line 2795
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/OppoGridView$HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2796
    iget-object v1, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 2797
    iget-object v1, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 2799
    :cond_0
    const/4 v0, 0x1

    .line 2801
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/OppoGridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 2804
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2719
    iget-object v1, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2720
    const/4 v0, 0x0

    .line 2721
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/OppoGridView$HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2722
    iget-object v1, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 2723
    iget-object v1, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 2725
    :cond_0
    const/4 v0, 0x1

    .line 2727
    :cond_1
    iget-object v1, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/OppoGridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 2730
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 2906
    iget-object v0, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/OppoGridView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 2907
    iget-object v0, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/OppoGridView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 2909
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 2911
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoGridView;->mLayoutMode:I

    .line 2912
    return-void
.end method

.method sequenceScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1924
    iget v5, p0, Landroid/widget/OppoGridView;->mSelectedPosition:I

    .line 1925
    .local v5, "selectedPosition":I
    iget v4, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    .line 1926
    .local v4, "numColumns":I
    iget v0, p0, Landroid/widget/OppoGridView;->mItemCount:I

    .line 1930
    .local v0, "count":I
    iget-boolean v10, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    .line 1931
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1932
    .local v7, "startOfRow":I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1939
    .local v1, "endOfRow":I
    :goto_0
    const/4 v3, 0x0

    .line 1940
    .local v3, "moved":Z
    const/4 v6, 0x0

    .line 1941
    .local v6, "showScroll":Z
    packed-switch p1, :pswitch_data_0

    .line 1965
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1966
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/OppoGridView;->playSoundEffect(I)V

    .line 1967
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->invokeOnItemScrollListener()V

    .line 1970
    :cond_1
    if-eqz v6, :cond_2

    .line 1971
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->awakenScrollBars()Z

    .line 1974
    :cond_2
    return v3

    .line 1934
    .end local v1    # "endOfRow":I
    .end local v3    # "moved":Z
    .end local v6    # "showScroll":Z
    .end local v7    # "startOfRow":I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1935
    .local v2, "invertedSelection":I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1936
    .restart local v1    # "endOfRow":I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "startOfRow":I
    goto :goto_0

    .line 1943
    .end local v2    # "invertedSelection":I
    .restart local v3    # "moved":Z
    .restart local v6    # "showScroll":Z
    :pswitch_0
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_0

    .line 1945
    iput v12, p0, Landroid/widget/OppoGridView;->mLayoutMode:I

    .line 1946
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/OppoGridView;->setSelectionInt(I)V

    .line 1947
    const/4 v3, 0x1

    .line 1949
    if-ne v5, v1, :cond_4

    move v6, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    .line 1954
    :pswitch_1
    if-lez v5, :cond_0

    .line 1956
    iput v12, p0, Landroid/widget/OppoGridView;->mLayoutMode:I

    .line 1957
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/OppoGridView;->setSelectionInt(I)V

    .line 1958
    const/4 v3, 0x1

    .line 1960
    if-ne v5, v7, :cond_5

    move v6, v8

    :goto_3
    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_3

    .line 1941
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 58
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/OppoGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->resetList()V

    .line 182
    iget-object v1, p0, Landroid/widget/OppoGridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 184
    iget-object v1, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 185
    :cond_1
    new-instance v1, Landroid/widget/OppoGridView$HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/OppoGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/OppoGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, p1}, Landroid/widget/OppoGridView$HeaderViewListAdapter;-><init>(Landroid/widget/OppoGridView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 190
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/OppoGridView;->mOldSelectedPosition:I

    .line 191
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/OppoGridView;->mOldSelectedRowId:J

    .line 194
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_4

    .line 197
    iget v1, p0, Landroid/widget/OppoGridView;->mItemCount:I

    iput v1, p0, Landroid/widget/OppoGridView;->mOldItemCount:I

    .line 198
    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/OppoGridView;->mItemCount:I

    .line 199
    iput-boolean v5, p0, Landroid/widget/OppoGridView;->mDataChanged:Z

    .line 200
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->checkFocus()V

    .line 202
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 203
    iget-object v1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/OppoGridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 205
    iget-object v1, p0, Landroid/widget/OppoGridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 208
    iget-boolean v1, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-eqz v1, :cond_3

    .line 209
    iget v1, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/OppoGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 213
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/OppoGridView;->setSelectedPositionInt(I)V

    .line 214
    invoke-virtual {p0, v0}, Landroid/widget/OppoGridView;->setNextSelectedPositionInt(I)V

    .line 215
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->checkSelectionChanged()V

    .line 222
    .end local v0    # "position":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->requestLayout()V

    .line 223
    return-void

    .line 187
    :cond_2
    iput-object p1, p0, Landroid/widget/OppoGridView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {p0, v4, v5}, Landroid/widget/OppoGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 217
    .end local v0    # "position":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->checkFocus()V

    .line 219
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "columnWidth"    # I

    .prologue
    .line 2204
    iget v0, p0, Landroid/widget/OppoGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2205
    iput p1, p0, Landroid/widget/OppoGridView;->mRequestedColumnWidth:I

    .line 2206
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->requestLayoutIfNecessary()V

    .line 2208
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 2074
    iget v0, p0, Landroid/widget/OppoGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 2075
    iput p1, p0, Landroid/widget/OppoGridView;->mGravity:I

    .line 2076
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->requestLayoutIfNecessary()V

    .line 2078
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 2101
    iget v0, p0, Landroid/widget/OppoGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2102
    iput p1, p0, Landroid/widget/OppoGridView;->mRequestedHorizontalSpacing:I

    .line 2103
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->requestLayoutIfNecessary()V

    .line 2105
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 2251
    iget v0, p0, Landroid/widget/OppoGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2252
    iput p1, p0, Landroid/widget/OppoGridView;->mRequestedNumColumns:I

    .line 2253
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->requestLayoutIfNecessary()V

    .line 2255
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1608
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1609
    invoke-virtual {p0, p1}, Landroid/widget/OppoGridView;->setNextSelectedPositionInt(I)V

    .line 1613
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/OppoGridView;->mLayoutMode:I

    .line 1614
    iget-object v0, p0, Landroid/widget/OppoGridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Landroid/widget/OppoGridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1617
    :cond_0
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->requestLayout()V

    .line 1618
    return-void

    .line 1611
    :cond_1
    iput p1, p0, Landroid/widget/OppoGridView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 1627
    iget v4, p0, Landroid/widget/OppoGridView;->mNextSelectedPosition:I

    .line 1629
    .local v4, "previousSelectedPosition":I
    iget-object v5, p0, Landroid/widget/OppoGridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_0

    .line 1630
    iget-object v5, p0, Landroid/widget/OppoGridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1633
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/OppoGridView;->setNextSelectedPositionInt(I)V

    .line 1634
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->layoutChildren()V

    .line 1636
    iget-boolean v5, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/OppoGridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1638
    .local v0, "next":I
    :goto_0
    iget-boolean v5, p0, Landroid/widget/OppoGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/widget/OppoGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1641
    .local v2, "previous":I
    :goto_1
    iget v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1642
    .local v1, "nextRow":I
    iget v5, p0, Landroid/widget/OppoGridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1644
    .local v3, "previousRow":I
    if-eq v1, v3, :cond_1

    .line 1645
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->awakenScrollBars()Z

    .line 1648
    :cond_1
    return-void

    .line 1636
    .end local v0    # "next":I
    .end local v1    # "nextRow":I
    .end local v2    # "previous":I
    .end local v3    # "previousRow":I
    :cond_2
    iget v0, p0, Landroid/widget/OppoGridView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0    # "next":I
    :cond_3
    move v2, v4

    .line 1638
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .param p1, "stretchMode"    # I

    .prologue
    .line 2186
    iget v0, p0, Landroid/widget/OppoGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 2187
    iput p1, p0, Landroid/widget/OppoGridView;->mStretchMode:I

    .line 2188
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->requestLayoutIfNecessary()V

    .line 2190
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 2158
    iget v0, p0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2159
    iput p1, p0, Landroid/widget/OppoGridView;->mVerticalSpacing:I

    .line 2160
    invoke-virtual {p0}, Landroid/widget/OppoGridView;->requestLayoutIfNecessary()V

    .line 2162
    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 951
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 952
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 941
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 942
    return-void
.end method
