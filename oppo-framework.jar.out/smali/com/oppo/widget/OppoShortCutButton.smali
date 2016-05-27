.class public Lcom/oppo/widget/OppoShortCutButton;
.super Landroid/widget/LinearLayout;
.source "OppoShortCutButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;
    }
.end annotation


# static fields
.field private static final ACTION_IME_HIDE:Ljava/lang/String; = "com.oppo.android.INPUT_WINDOW_HIDDED"

.field private static final ACTION_IME_SHOW:Ljava/lang/String; = "com.oppo.android.INPUT_WINDOW_SHOWN"

.field private static final DEBUG:Z = false

.field private static final MAXCHILDCOUNT:I = 0x3

.field private static final MINCHILDCOUNT:I = 0x1

.field private static final NONECHILD:I = 0x0

.field private static final ONECHILD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoShortCutButton"

.field private static final THREECHILD:I = 0x3

.field private static final TWOECHILD:I = 0x2


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundButton:Landroid/graphics/drawable/Drawable;

.field private mButtonColor:I

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeText:Ljava/lang/String;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralText:Ljava/lang/String;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveText:Ljava/lang/String;

.field private mButtonShadowColor:I

.field private mButtonSize:I

.field private mChildCount:I

.field private mImeStateReceiverRegistered:Z

.field private final mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

.field private mIsButtonNegativeAble:Z

.field private mIsButtonNeutralAble:Z

.field private mIsButtonPositiveAble:Z

.field private mIsShow:Z

.field private mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

.field private mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

.field private mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

.field private mReceiverEnabled:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoShortCutButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-boolean v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    .line 61
    iput v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 62
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 63
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackgroundButton:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    .line 65
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    .line 66
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    .line 67
    iput-boolean v8, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonPositiveAble:Z

    .line 68
    iput-boolean v8, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNegativeAble:Z

    .line 69
    iput-boolean v8, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNeutralAble:Z

    .line 70
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    .line 71
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    .line 72
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    .line 84
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    .line 85
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 86
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    .line 87
    iput-boolean v7, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z

    .line 88
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mView:Landroid/view/View;

    .line 89
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    .line 90
    iput-boolean v8, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    .line 95
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 692
    new-instance v5, Lcom/oppo/widget/OppoShortCutButton$1;

    invoke-direct {v5, p0}, Lcom/oppo/widget/OppoShortCutButton$1;-><init>(Lcom/oppo/widget/OppoShortCutButton;)V

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p0, p0, Lcom/oppo/widget/OppoShortCutButton;->mView:Landroid/view/View;

    .line 130
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc080062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc080067

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc080069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc080068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    .line 145
    sget-object v5, Loppo/R$styleable;->OppoShortCutButton:[I

    invoke-virtual {p1, p2, v5, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 148
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 149
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 150
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 148
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :pswitch_0
    const/16 v5, 0xc

    iget v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonShadowColor:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonShadowColor:I

    goto :goto_1

    .line 185
    :pswitch_1
    const/4 v5, 0x4

    iget v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonColor:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonColor:I

    goto :goto_1

    .line 193
    :pswitch_2
    iget v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonSize:I

    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonSize:I

    goto :goto_1

    .line 201
    :pswitch_3
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    goto :goto_1

    .line 209
    :pswitch_4
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 217
    :pswitch_5
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackgroundButton:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 225
    :pswitch_6
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    goto :goto_1

    .line 233
    :pswitch_7
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    goto :goto_1

    .line 241
    :pswitch_8
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    goto :goto_1

    .line 249
    :pswitch_9
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonPositiveAble:Z

    goto :goto_1

    .line 257
    :pswitch_a
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNegativeAble:Z

    goto :goto_1

    .line 265
    :pswitch_b
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNeutralAble:Z

    goto :goto_1

    .line 273
    :pswitch_c
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    goto :goto_1

    .line 286
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    .end local v2    # "i":I
    .end local v4    # "n":I
    :cond_1
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 291
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0xc09040a

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 293
    iget v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->getCountChild(I)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 297
    const v5, 0xc020409

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    .line 298
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 299
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositiveText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonPositiveAble:Z

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 302
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setId(I)V

    .line 307
    const v5, 0xc02040a

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    .line 308
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 309
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegativeText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNegativeAble:Z

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setId(I)V

    .line 317
    const v5, 0xc02040b

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    .line 318
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 319
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutralText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_4
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsButtonNeutralAble:Z

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 322
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setId(I)V

    .line 327
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 328
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoShortCutButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    :cond_5
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 354
    iget v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    packed-switch v5, :pswitch_data_1

    .line 393
    :goto_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoShortCutButton;->prepareTabLayoutAnim()V

    .line 394
    return-void

    .line 356
    :pswitch_d
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 357
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 363
    :pswitch_e
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 364
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 367
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 374
    :pswitch_f
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 375
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 381
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object v5, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutButton;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_0
    .end packed-switch

    .line 354
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoShortCutButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoShortCutButton;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoShortCutButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoShortCutButton;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoShortCutButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoShortCutButton;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/oppo/widget/OppoShortCutButton;->mIsShow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoShortCutButton;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoShortCutButton;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoShortCutButton;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoShortCutButton;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private prepareTabLayoutAnim()V
    .locals 12

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const-wide/16 v10, 0x32

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 747
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 748
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 749
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 750
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 753
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    .line 754
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    invoke-direct {v0, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 755
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 756
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 757
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    const/4 v5, 0x2

    const/4 v7, 0x2

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 760
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 761
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 762
    return-void
.end method


# virtual methods
.method public getCountChild(I)I
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "countChild":I
    if-lt p1, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 406
    move v0, p1

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    if-ge p1, v1, :cond_2

    .line 408
    const/4 v0, 0x1

    goto :goto_0

    .line 409
    :cond_2
    if-le p1, v2, :cond_0

    .line 410
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 724
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 726
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 727
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "com.oppo.android.INPUT_WINDOW_HIDDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    const-string v1, "com.oppo.android.INPUT_WINDOW_SHOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 730
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    .line 731
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;->onShortCutButtonClick(Landroid/view/View;)V

    .line 690
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 737
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 739
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutButton;->mInputMethodStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 742
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mImeStateReceiverRegistered:Z

    .line 743
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 672
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 675
    return-void
.end method

.method public setBroadcastEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 771
    iput-boolean p1, p0, Lcom/oppo/widget/OppoShortCutButton;->mReceiverEnabled:Z

    .line 772
    return-void
.end method

.method public setButtonBackground(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 602
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonEnable([Z)Z
    .locals 4
    .param p1, "enable"    # [Z

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "count":I
    array-length v2, p1

    iget v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-ge v2, v3, :cond_0

    .line 489
    const/4 v2, 0x0

    .line 499
    :goto_0
    return v2

    .line 492
    :cond_0
    array-length v2, p1

    iget v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-lt v2, v3, :cond_1

    .line 493
    iget v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 496
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 497
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aget-boolean v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setButtonNegativeEnbale(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 463
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNegativeText(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 537
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNegativeVisible(I)Z
    .locals 1
    .param p1, "enable"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNeutralEnbale(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 475
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNeutralText(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonNeutralVisible(I)Z
    .locals 1
    .param p1, "enable"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonPositiveEnbale(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 451
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonPositiveText(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonPositiveVisible(I)Z
    .locals 1
    .param p1, "enable"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method public setButtonText([Ljava/lang/String;)Z
    .locals 5
    .param p1, "string"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 423
    const/4 v0, 0x0

    .line 425
    .local v0, "count":I
    if-nez p1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v2

    .line 429
    :cond_1
    array-length v3, p1

    iget v4, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-lt v3, v4, :cond_0

    .line 433
    array-length v2, p1

    iget v3, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    if-lt v2, v3, :cond_2

    .line 434
    iget v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mChildCount:I

    .line 437
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 438
    iget-object v2, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setNegativeButtonTextSize(I)Z
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 640
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 641
    const/4 v0, 0x1

    return v0
.end method

.method public setNeutralButtonTextSize(I)Z
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 652
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 653
    const/4 v0, 0x1

    return v0
.end method

.method public setPositiveButtonTextSize(I)Z
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 629
    const/4 v0, 0x1

    return v0
.end method

.method public setShortButtonListener(Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutButton;->mOnShortCutButtonListener:Lcom/oppo/widget/OppoShortCutButton$OnShortCutButtonListener;

    .line 684
    return-void
.end method

.method public setShortCutButtonBackground(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoShortCutButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 589
    const/4 v0, 0x1

    return v0
.end method

.method public setShortCutButtonTextColor(I)Z
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 665
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 666
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 667
    const/4 v0, 0x1

    return v0
.end method

.method public setShortCutButtonTextSize(I)Z
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 614
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonPositive:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 615
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNegative:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 616
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutButton;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 617
    const/4 v0, 0x1

    return v0
.end method
