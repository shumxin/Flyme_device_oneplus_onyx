.class public Lcom/oppo/util/OppoDialogUtil;
.super Ljava/lang/Object;
.source "OppoDialogUtil.java"


# static fields
.field private static final BIT_BUTTON_NEGATIVE:I = 0x2

.field private static final BIT_BUTTON_NEUTRAL:I = 0x4

.field private static final BIT_BUTTON_POSITIVE:I = 0x1

.field public static final BIT_FOUSED_BUTTON_NEGATIVE:I = 0x10

.field public static final BIT_FOUSED_BUTTON_NEUTRAL:I = 0x20

.field public static final BIT_FOUSED_BUTTON_POSITIVE:I = 0x8

.field public static final BIT_FOUSED_DEFAULT:I = 0x0

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoDialogUtil"


# instance fields
.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonPositive:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFousedFlag:I

.field private textFousedColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    .line 77
    iput-object p1, p0, Lcom/oppo/util/OppoDialogUtil;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private initialize(Landroid/view/Window;)V
    .locals 2
    .param p1, "mWindow"    # Landroid/view/Window;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc06040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    .line 158
    return-void
.end method

.method private setButtonBackground(I)V
    .locals 2
    .param p1, "whichButtons"    # I

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 93
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 96
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 99
    :pswitch_5
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 103
    :pswitch_6
    iget-object v0, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->textFousedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public setDialogButtonFlag(Landroid/view/Window;)V
    .locals 3
    .param p1, "mWindow"    # Landroid/view/Window;

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "flag":I
    const v1, 0x1020019

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    .line 163
    const v1, 0x102001a

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    .line 164
    const v1, 0x102001b

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    .line 165
    iget v1, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 166
    const/16 v0, 0x8

    .line 168
    :cond_0
    iget v1, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 169
    const/16 v0, 0x10

    .line 171
    :cond_1
    iget v1, p0, Lcom/oppo/util/OppoDialogUtil;->mFousedFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 172
    const/16 v0, 0x20

    .line 174
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/oppo/util/OppoDialogUtil;->setDialogButtonFlag(Landroid/view/Window;I)V

    .line 175
    return-void
.end method

.method public setDialogButtonFlag(Landroid/view/Window;I)V
    .locals 3
    .param p1, "mWindow"    # Landroid/view/Window;
    .param p2, "flag"    # I

    .prologue
    .line 179
    const v2, 0x1020019

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    .line 180
    const v2, 0x102001a

    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    .line 181
    const v2, 0x102001b

    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    if-nez v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoDialogUtil;->initialize(Landroid/view/Window;)V

    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "whichButtons":I
    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 196
    or-int/lit8 v1, v1, 0x1

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 199
    or-int/lit8 v1, v1, 0x2

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/oppo/util/OppoDialogUtil;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 202
    or-int/lit8 v1, v1, 0x4

    .line 205
    :cond_4
    invoke-direct {p0, v1}, Lcom/oppo/util/OppoDialogUtil;->setButtonBackground(I)V

    .line 206
    if-nez p2, :cond_0

    goto :goto_0
.end method

.method public setDialogDrag(Lcom/android/internal/app/AlertController;Landroid/view/Window;)V
    .locals 0
    .param p1, "ac"    # Lcom/android/internal/app/AlertController;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    .line 219
    invoke-virtual {p0, p2}, Lcom/oppo/util/OppoDialogUtil;->setDialogButtonFlag(Landroid/view/Window;)V

    .line 220
    return-void
.end method
