.class public Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;
.super Lcom/oppo/widget/OppoAutoCompleteTextView;
.source "OppoSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mSearchView:Lcom/oppo/widget/OppoSearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1573
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 1574
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->mThreshold:I

    .line 1575
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1578
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1579
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->mThreshold:I

    .line 1580
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1583
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1584
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->mThreshold:I

    .line 1585
    return-void
.end method

.method static synthetic access$1500(Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 1601
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 1650
    iget v0, p0, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_0

    invoke-super {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1641
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/widget/OppoAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1642
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->mSearchView:Lcom/oppo/widget/OppoSearchView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoSearchView;->onTextFocusChanged()V

    .line 1643
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1655
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 1658
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1659
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1660
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 1661
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1676
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v1

    .line 1664
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1665
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1666
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 1667
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1669
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1670
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->mSearchView:Lcom/oppo/widget/OppoSearchView;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoSearchView;->clearFocus()V

    .line 1671
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->mSearchView:Lcom/oppo/widget/OppoSearchView;

    const/4 v3, 0x0

    # invokes: Lcom/oppo/widget/OppoSearchView;->setImeVisibility(Z)V
    invoke-static {v2, v3}, Lcom/oppo/widget/OppoSearchView;->access$2100(Lcom/oppo/widget/OppoSearchView;Z)V

    goto :goto_0

    .line 1676
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oppo/widget/OppoAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1625
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1627
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->mSearchView:Lcom/oppo/widget/OppoSearchView;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1628
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1630
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1633
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/widget/OppoSearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1634
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    .line 1637
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 1617
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1609
    return-void
.end method

.method setSearchView(Lcom/oppo/widget/OppoSearchView;)V
    .locals 0
    .param p1, "searchView"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->mSearchView:Lcom/oppo/widget/OppoSearchView;

    .line 1589
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 1593
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->setThreshold(I)V

    .line 1594
    iput p1, p0, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->mThreshold:I

    .line 1595
    return-void
.end method
