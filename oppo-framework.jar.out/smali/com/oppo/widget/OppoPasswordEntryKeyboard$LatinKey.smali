.class Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "OppoPasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoPasswordEntryKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatinKey"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mShiftLockEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 244
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->mEnabled:Z

    .line 245
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->popupResId:I

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method enableShiftLock()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    .line 257
    return-void
.end method

.method public isInside(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x5

    .line 274
    iget-boolean v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->mEnabled:Z

    if-nez v2, :cond_0

    .line 287
    :goto_0
    return v1

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->codes:[I

    aget v0, v2, v1

    .line 278
    .local v0, "code":I
    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_4

    .line 279
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->height:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    .line 280
    if-ne v0, v4, :cond_2

    .line 281
    iget v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v1

    .line 282
    :cond_2
    if-ne v0, v3, :cond_3

    .line 283
    iget v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr p1, v1

    .line 287
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v1

    goto :goto_0

    .line 284
    :cond_4
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 285
    sget v1, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p2, v1

    goto :goto_1
.end method

.method public onPressed()V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 292
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->getCurrentDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 293
    return-void
.end method

.method public onReleased(Z)V
    .locals 2
    .param p1, "inside"    # Z

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_0

    .line 262
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->getCurrentDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 267
    return-void

    .line 264
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->pressed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->pressed:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboard$LatinKey;->mEnabled:Z

    .line 253
    return-void
.end method
