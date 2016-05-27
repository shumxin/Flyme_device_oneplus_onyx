.class public Lcom/oppo/widget/OppoSearchViewAnimListHeader;
.super Landroid/widget/LinearLayout;
.source "OppoSearchViewAnimListHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoSearchViewAnimListHeader$OnVoiceClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoSearchViewAnimListHeader"


# instance fields
.field private mSearchPlate:Landroid/view/View;

.field private mSearchText:Landroid/widget/TextView;

.field private mSearchVoice:Landroid/widget/ImageView;

.field private mVoiceClickListener:Lcom/oppo/widget/OppoSearchViewAnimListHeader$OnVoiceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoSearchViewAnimListHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 52
    .local v2, "inflate":Landroid/view/LayoutInflater;
    const v4, 0xc090442

    const/4 v5, 0x1

    invoke-virtual {v2, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    const v4, 0xc020440

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mSearchText:Landroid/widget/TextView;

    .line 54
    const v4, 0xc0204af

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mSearchVoice:Landroid/widget/ImageView;

    .line 55
    iget-object v4, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mSearchVoice:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v4, 0xc020442

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mSearchPlate:Landroid/view/View;

    .line 58
    sget-object v4, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 60
    .local v3, "queryHint":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    iget-object v4, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 64
    .local v1, "enabled":Z
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->setEnabled(Z)V

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mVoiceClickListener:Lcom/oppo/widget/OppoSearchViewAnimListHeader$OnVoiceClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mSearchVoice:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mVoiceClickListener:Lcom/oppo/widget/OppoSearchViewAnimListHeader$OnVoiceClickListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoSearchViewAnimListHeader$OnVoiceClickListener;->voiceImageClick()V

    .line 104
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 90
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "queryHint"    # Ljava/lang/CharSequence;

    .prologue
    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setThemeOppoBlack(Z)V
    .locals 2
    .param p1, "black"    # Z

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 80
    const-string v0, "OppoSearchViewAnimListHeader"

    const-string v1, "Please don\'t use ThemeOppoBlack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method public setVoiceClickListener(Lcom/oppo/widget/OppoSearchViewAnimListHeader$OnVoiceClickListener;)V
    .locals 0
    .param p1, "voiceClickListener"    # Lcom/oppo/widget/OppoSearchViewAnimListHeader$OnVoiceClickListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mVoiceClickListener:Lcom/oppo/widget/OppoSearchViewAnimListHeader$OnVoiceClickListener;

    .line 98
    return-void
.end method

.method public setVoiceSearchEnabled(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnimListHeader;->mSearchVoice:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    return-void
.end method
