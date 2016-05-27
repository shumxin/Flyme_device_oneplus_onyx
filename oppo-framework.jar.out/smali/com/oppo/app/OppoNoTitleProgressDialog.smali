.class public Lcom/oppo/app/OppoNoTitleProgressDialog;
.super Lcom/oppo/app/OppoDialog;
.source "OppoNoTitleProgressDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoNoTitileProgressDialog"


# instance fields
.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/oppo/app/OppoDialog;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/oppo/app/OppoDialog;-><init>(Landroid/content/Context;I)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 54
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/app/OppoDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/oppo/app/OppoNoTitleProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mWindow:Landroid/view/Window;

    .line 59
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 60
    iget v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mLayoutId:I

    if-lez v0, :cond_0

    .line 61
    iget v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mLayoutId:I

    invoke-virtual {p0, v0}, Lcom/oppo/app/OppoNoTitleProgressDialog;->setContentView(I)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mWindow:Landroid/view/Window;

    const v1, 0xc020420

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 66
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mWindow:Landroid/view/Window;

    const v1, 0xc090412

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/oppo/app/OppoNoTitleProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/app/OppoNoTitleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 95
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/oppo/app/OppoDialog;->show()V

    .line 71
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    iget v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mBackgroundResId:I

    if-lez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mBackgroundResId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/oppo/app/OppoNoTitleProgressDialog;->mWindow:Landroid/view/Window;

    const v1, 0xc08001e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method
