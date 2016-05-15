.class public Landroid/preference/ColorPickerPreference;
.super Landroid/preference/CustomDialogPreference;
.source "ColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mColor:Ljava/lang/String;

.field private mDefaultColor:Ljava/lang/String;

.field private mDisabledCellColor:I

.field private mMessage:Landroid/widget/TextView;

.field private mMessageText:Ljava/lang/CharSequence;

.field private mPalette:[Ljava/lang/String;

.field private mPaletteNamesResIds:[I

.field private mRippleEffectColor:I

.field private mTmpColor:Ljava/lang/String;

.field private mUseColorLabelAsSummary:Z

.field private mViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    const-string v1, ""

    iput-object v1, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 74
    sget-object v1, Lcom/android/internal/R$styleable;->ColorPickerPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x4060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/preference/ColorPickerPreference;->mRippleEffectColor:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x4060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/preference/ColorPickerPreference;->mDisabledCellColor:I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    const v1, 0x4090008

    invoke-virtual {p0, v1}, Landroid/preference/ColorPickerPreference;->setNeutralButtonText(I)V

    .line 84
    const/high16 v1, 0x4040000

    invoke-virtual {p0, v1}, Landroid/preference/ColorPickerPreference;->setDialogLayoutResource(I)V

    .line 86
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    iput-boolean v4, p0, Landroid/preference/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-boolean v3, p0, Landroid/preference/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/preference/ColorPickerPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/preference/ColorPickerPreference;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/ColorPickerPreference;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/preference/ColorPickerPreference;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/preference/ColorPickerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/ColorPickerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/preference/ColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    return-void
.end method

.method private setTmpColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 367
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/preference/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 368
    return-void
.end method

.method private updateSummary()V
    .locals 3

    .prologue
    .line 371
    iget-boolean v1, p0, Landroid/preference/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v1, v1

    if-ltz v1, :cond_1

    .line 373
    :cond_0
    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v0, -0x1

    .line 374
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_3

    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 375
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    .end local v0    # "index":I
    :cond_1
    :goto_1
    return-void

    .line 373
    :cond_2
    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 376
    .restart local v0    # "index":I
    :cond_3
    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 377
    :cond_4
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x4090008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 379
    :cond_5
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x4090012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;
    .locals 6
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 181
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/preference/ColorPickerPreference;->mDisabledCellColor:I

    :goto_0
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 183
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v4, [[I

    new-array v3, v5, [I

    aput-object v3, v2, v5

    new-array v3, v4, [I

    iget v4, p0, Landroid/preference/ColorPickerPreference;->mRippleEffectColor:I

    aput v4, v3, v5

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 191
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2

    .line 181
    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v1    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getDefaultColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    iput-object v0, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/preference/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    .line 243
    invoke-super {p0, p1}, Landroid/preference/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 246
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/preference/ColorPickerPreference;->onSetColorPalette([Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Landroid/preference/ColorPickerPreference;->updateSummary()V

    .line 250
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v2, v3

    .line 252
    .local v2, "paletteLenght":I
    if-eqz v2, :cond_0

    .line 253
    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 255
    const v3, 0x40b0009

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_0
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 269
    .local v1, "ids":[I
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 271
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    .line 272
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Landroid/preference/ColorPickerPreference;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v4, v3, v0

    if-lez v2, :cond_1

    new-instance v3, Landroid/preference/ColorPickerPreference$1;

    invoke-direct {v3, p0}, Landroid/preference/ColorPickerPreference$1;-><init>(Landroid/preference/ColorPickerPreference;)V

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 290
    :cond_2
    const v3, 0x40b0012

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/preference/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    .line 291
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 292
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Landroid/preference/ColorPickerPreference;->setMessage(Ljava/lang/CharSequence;)V

    .line 297
    :goto_2
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->init()V

    .line 298
    return-void

    .line 294
    :cond_3
    const v3, 0x4090009

    invoke-virtual {p0, v3}, Landroid/preference/ColorPickerPreference;->setMessage(I)V

    goto :goto_2

    .line 259
    nop

    :array_0
    .array-data 4
        0x40b0001
        0x40b0003
        0x40b0005
        0x40b0007
        0x40b000a
        0x40b000c
        0x40b000e
        0x40b0010
    .end array-data
.end method

.method protected onDialogClosed(I)V
    .locals 6
    .param p1, "whichButton"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 302
    invoke-super {p0, p1}, Landroid/preference/CustomDialogPreference;->onDialogClosed(I)V

    .line 304
    const/4 v4, -0x1

    if-ne p1, v4, :cond_4

    move v2, v3

    .line 305
    .local v2, "positiveResult":Z
    :goto_0
    const/4 v4, -0x3

    if-ne p1, v4, :cond_5

    move v0, v3

    .line 307
    .local v0, "defaultResult":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 308
    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v5, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v1, v3

    .line 311
    .local v1, "equal":Z
    :cond_2
    if-nez v1, :cond_3

    .line 312
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/preference/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 322
    .end local v1    # "equal":Z
    :cond_3
    :goto_2
    return-void

    .end local v0    # "defaultResult":Z
    .end local v2    # "positiveResult":Z
    :cond_4
    move v2, v1

    .line 304
    goto :goto_0

    .restart local v2    # "positiveResult":Z
    :cond_5
    move v0, v1

    .line 305
    goto :goto_1

    .line 314
    .restart local v0    # "defaultResult":Z
    :cond_6
    if-eqz v0, :cond_3

    .line 315
    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v5, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v1, v3

    .line 318
    .restart local v1    # "equal":Z
    :cond_9
    if-nez v1, :cond_3

    .line 319
    iget-object v3, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/preference/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 348
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/ColorPickerPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 362
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 354
    check-cast v0, Landroid/preference/ColorPickerPreference$SavedState;

    .line 355
    .local v0, "myState":Landroid/preference/ColorPickerPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 358
    iget-object v1, v0, Landroid/preference/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Landroid/preference/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 360
    iget-object v1, v0, Landroid/preference/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/preference/ColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 331
    invoke-super {p0}, Landroid/preference/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 334
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 343
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 340
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Landroid/preference/ColorPickerPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 342
    .local v0, "myState":Landroid/preference/ColorPickerPreference$SavedState;
    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    iput-object v2, v0, Landroid/preference/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    move-object v1, v0

    .line 343
    goto :goto_0
.end method

.method protected onSetColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 223
    return-void
.end method

.method protected onSetColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .prologue
    .line 239
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 326
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Landroid/preference/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 327
    return-void

    .line 326
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSecondaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSecondaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 146
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/preference/ColorPickerPreference;->updateSummary()V

    .line 147
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ColorPickerPreference;->onSetColor(Ljava/lang/String;)V

    .line 150
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/ColorPickerPreference;->persistString(Ljava/lang/String;)Z

    .line 151
    return-void

    .line 143
    :cond_2
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getSecondaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public setColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setColorPalette([Ljava/lang/String;[I)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;
    .param p2, "colorStringResIds"    # [I

    .prologue
    .line 170
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 171
    iput-object p2, p0, Landroid/preference/ColorPickerPreference;->mPaletteNamesResIds:[I

    .line 172
    return-void
.end method

.method public setDefaultColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "messageResId"    # I

    .prologue
    .line 116
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/preference/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public setMessageText(I)V
    .locals 1
    .param p1, "messageResId"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 127
    return-void
.end method

.method public setMessageText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 121
    iput-object p1, p0, Landroid/preference/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 122
    return-void
.end method

.method public setSelection(Ljava/lang/String;I)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .prologue
    .line 200
    if-nez p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v1, -0x1

    .line 202
    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_0

    .line 203
    const/16 v2, 0x8

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 213
    .local v0, "ids":[I
    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 201
    .end local v0    # "ids":[I
    .end local v1    # "index":I
    :cond_2
    iget-object v2, p0, Landroid/preference/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    .line 203
    :array_0
    .array-data 4
        0x40b0002
        0x40b0004
        0x40b0006
        0x40b0008
        0x40b000b
        0x40b000d
        0x40b000f
        0x40b0011
    .end array-data
.end method
