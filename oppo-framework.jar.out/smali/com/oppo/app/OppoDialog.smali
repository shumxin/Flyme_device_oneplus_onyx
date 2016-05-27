.class public Lcom/oppo/app/OppoDialog;
.super Landroid/app/Dialog;
.source "OppoDialog.java"


# instance fields
.field protected mBackgroundResId:I

.field protected mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 51
    return-void
.end method


# virtual methods
.method public getBackgroundResourse()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/oppo/app/OppoDialog;->mBackgroundResId:I

    if-lez v0, :cond_0

    .line 65
    iget v0, p0, Lcom/oppo/app/OppoDialog;->mBackgroundResId:I

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutId(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 81
    iget v0, p0, Lcom/oppo/app/OppoDialog;->mLayoutId:I

    if-lez v0, :cond_0

    .line 82
    iget v0, p0, Lcom/oppo/app/OppoDialog;->mLayoutId:I

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundResourse(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/oppo/app/OppoDialog;->mBackgroundResId:I

    .line 58
    return-void
.end method

.method public setLayoutId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/oppo/app/OppoDialog;->mLayoutId:I

    .line 75
    return-void
.end method
