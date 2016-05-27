.class public Lcom/android/internal/widget/OppoScrollingTabContainerView;
.super Lcom/android/internal/widget/ScrollingTabContainerView;
.source "OppoScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/OppoScrollingTabContainerView$1;,
        Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoDrawableHolder;,
        Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;,
        Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final SCROLL_STATE_DRAGGING:I = 0x1

.field private static final SCROLL_STATE_IDLE:I = 0x0

.field private static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final SUSPENSION:Ljava/lang/String; = "."

.field private static final TAG:Ljava/lang/String; = "OppoScrollingTabContainerView"


# instance fields
.field private mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

.field private mTabTextSize:I

.field private mTabTextSizeSelected:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 598
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .line 80
    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I

    .line 81
    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I

    .line 599
    new-instance v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;Lcom/android/internal/widget/OppoScrollingTabContainerView$1;)V

    iput-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    .line 601
    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/OppoScrollingTabContainerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/OppoScrollingTabContainerView;)Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/OppoScrollingTabContainerView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    new-instance v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 610
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 648
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 649
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V
    invoke-static {v1, v0, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1400(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;I)V

    .line 650
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 642
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 643
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->addTab(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V
    invoke-static {v1, v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1300(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V

    .line 644
    return-void
.end method

.method public animateToTab(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 618
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 619
    return-void
.end method

.method createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    .line 628
    new-instance v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;-><init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 629
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 630
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 631
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    :goto_0
    return-object v0

    .line 634
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 635
    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 666
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 667
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->drawTab(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1700(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Landroid/graphics/Canvas;)V

    .line 668
    return-void
.end method

.method hookResizeMaxWidth(I)V
    .locals 3
    .param p1, "childCount"    # I

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    invoke-virtual {p0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mMaxTabWidth:I

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->measureMaxWidth(III)I
    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1800(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;III)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mMaxTabWidth:I

    .line 696
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 660
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 661
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeAllTabs()V
    invoke-static {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1600(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V

    .line 662
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 654
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->removeTabAt(I)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1500(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V

    .line 656
    return-void
.end method

.method public setTabSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->setTabSelected(I)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1200(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V

    .line 624
    return-void
.end method

.method public updateAnimateTab(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateAnimateTab(IFI)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1900(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;IFI)V

    .line 703
    return-void
.end method

.method public updateScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateScrollState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$2000(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;I)V

    .line 707
    return-void
.end method
