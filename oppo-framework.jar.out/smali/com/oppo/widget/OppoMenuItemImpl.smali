.class public Lcom/oppo/widget/OppoMenuItemImpl;
.super Ljava/lang/Object;
.source "OppoMenuItemImpl.java"

# interfaces
.implements Lcom/oppo/widget/OppoMenuItem;


# static fields
.field private static final ENABLED:I = 0x10

.field private static final HIDDEN:I = 0x8

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:I

.field private mLayoutWeight:F

.field private mOrdering:I

.field private mScrollDownType:I

.field private mShowAsAction:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mLayoutWeight:F

    .line 37
    iput v1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mScrollDownType:I

    .line 39
    iput v1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mId:I

    .line 40
    iput v1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mGroup:I

    .line 41
    iput v1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mOrdering:I

    .line 43
    iput v1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mShowAsAction:I

    .line 51
    iput v1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mIconResId:I

    .line 53
    const/16 v0, 0x10

    iput v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mFlags:I

    .line 60
    iput-object p1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mOrdering:I

    return v0
.end method

.method public getScrollDownType()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mScrollDownType:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWeight()F
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mLayoutWeight:F

    return v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checkable"    # Z

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mFlags:I

    .line 248
    :goto_0
    return-object p0

    .line 245
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    iput p1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mIconResId:I

    .line 124
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mIconResId:I

    .line 116
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public setItemId(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mId:I

    .line 66
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 265
    return-object p0
.end method

.method public setScrollDownType(I)Lcom/oppo/widget/OppoMenuItem;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 370
    packed-switch p1, :pswitch_data_0

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mScrollDownType:I

    .line 381
    :goto_0
    return-object p0

    .line 375
    :pswitch_0
    iput p1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mScrollDownType:I

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 281
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 291
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :pswitch_1
    iput p1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mShowAsAction:I

    .line 295
    return-void

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "actionEnum"    # I

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 87
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoMenuItemImpl;->setVisibleInt(Z)Z

    .line 232
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 219
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mFlags:I

    .line 220
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mFlags:I

    .line 221
    iget v1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 220
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setWeight(F)Lcom/oppo/widget/OppoMenuItem;
    .locals 0
    .param p1, "weight"    # F

    .prologue
    .line 359
    iput p1, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mLayoutWeight:F

    .line 360
    return-object p0
.end method

.method public showsTextAsAction()Z
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/oppo/widget/OppoMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
