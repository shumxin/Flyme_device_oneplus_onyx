.class abstract Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UcGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    .prologue
    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
    sget-object v0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    .line 961
    iput p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 962
    iput p2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 963
    iput p3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mMessageResId:I

    .line 964
    iput p4, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 965
    iput p5, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 966
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .param p1, "buttonOn"    # Z

    .prologue
    .line 1037
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    .line 1038
    return-void

    .line 1037
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x0

    .line 983
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->willCreate()V

    .line 985
    const v6, 0x1090054

    invoke-virtual {p4, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 988
    .local v5, "v":Landroid/view/View;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 989
    .local v1, "icon":Landroid/widget/ImageView;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 990
    .local v2, "messageView":Landroid/widget/TextView;
    const v6, 0x10202f6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 991
    .local v4, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    .line 993
    .local v0, "enabled":Z
    if-eqz v2, :cond_0

    .line 994
    iget v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 995
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 998
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    if-eq v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    if-ne v6, v8, :cond_4

    :cond_1
    const/4 v3, 0x1

    .line 999
    .local v3, "on":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1000
    if-eqz v3, :cond_5

    iget v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_1
    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1002
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1005
    :cond_2
    if-eqz v4, :cond_3

    .line 1006
    if-eqz v3, :cond_6

    iget v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1007
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1008
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1010
    :cond_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1012
    return-object v5

    .end local v3    # "on":Z
    :cond_4
    move v3, v7

    .line 998
    goto :goto_0

    .line 1000
    .restart local v3    # "on":Z
    :cond_5
    iget v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_1

    .line 1006
    :cond_6
    iget v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_2
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 978
    iget v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onPress()V
    .locals 3

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    const-string v1, "UcGlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1022
    .local v0, "nowOn":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->onToggle(Z)V

    .line 1023
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 1021
    .end local v0    # "nowOn":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    .line 1044
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 974
    return-void
.end method
