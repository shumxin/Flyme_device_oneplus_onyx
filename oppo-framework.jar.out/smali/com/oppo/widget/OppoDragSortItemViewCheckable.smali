.class public Lcom/oppo/widget/OppoDragSortItemViewCheckable;
.super Lcom/oppo/widget/OppoDragSortItemView;
.source "OppoDragSortItemViewCheckable.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDragSortItemView;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortItemViewCheckable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 52
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 54
    :cond_0
    return v1
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortItemViewCheckable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoDragSortItemViewCheckable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 68
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 69
    :cond_0
    return-void
.end method
