.class public Lcom/oppo/widget/OppoCheckBox;
.super Landroid/widget/Button;
.source "OppoCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoCheckBox$1;,
        Lcom/oppo/widget/OppoCheckBox$SavedState;,
        Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final ALLSELECT_SET:[I

.field private static final MAX_INDEX:I = 0x2

.field private static final PARTSELECT_SET:[I

.field public static final SELECT_ALL:I = 0x2

.field public static final SELECT_NONE:I = 0x0

.field public static final SELECT_PART:I = 0x1


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mOnStateChangeListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

.field private mOnStateChangeWidgetListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-array v0, v3, [I

    const v1, 0xc01005f

    aput v1, v0, v2

    sput-object v0, Lcom/oppo/widget/OppoCheckBox;->ALLSELECT_SET:[I

    .line 57
    new-array v0, v3, [I

    const v1, 0xc01005e

    aput v1, v0, v2

    sput-object v0, Lcom/oppo/widget/OppoCheckBox;->PARTSELECT_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const v0, 0xc01043e

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    sget-object v3, Loppo/R$styleable;->OppoCheckBox:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 75
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 80
    .local v2, "state":I
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoCheckBox;->setState(I)V

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 282
    iget-object v1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getDrawableState()[I

    move-result-object v0

    .line 284
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 285
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->invalidate()V

    .line 287
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v1

    .line 208
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 214
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 219
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v1

    .line 220
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 226
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v1
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 97
    iget v0, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 297
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 299
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 268
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 269
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 270
    sget-object v1, Lcom/oppo/widget/OppoCheckBox;->PARTSELECT_SET:[I

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoCheckBox;->mergeDrawableStates([I[I)[I

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 273
    sget-object v1, Lcom/oppo/widget/OppoCheckBox;->ALLSELECT_SET:[I

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoCheckBox;->mergeDrawableStates([I[I)[I

    .line 275
    :cond_1
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    iget-object v1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getGravity()I

    move-result v8

    and-int/lit8 v7, v8, 0x70

    .line 245
    .local v7, "verticalGravity":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 246
    .local v2, "drawableHeight":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 248
    .local v3, "drawableWidth":I
    const/4 v6, 0x0

    .line 249
    .local v6, "top":I
    sparse-switch v7, :sswitch_data_0

    .line 257
    :goto_0
    add-int v0, v6, v2

    .line 258
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getWidth()I

    move-result v8

    sub-int v4, v8, v3

    .line 259
    .local v4, "left":I
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getWidth()I

    move-result v5

    .line 261
    .local v5, "right":I
    :goto_2
    invoke-virtual {v1, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 262
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    .end local v0    # "bottom":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    .end local v7    # "verticalGravity":I
    :cond_0
    return-void

    .line 251
    .restart local v2    # "drawableHeight":I
    .restart local v3    # "drawableWidth":I
    .restart local v6    # "top":I
    .restart local v7    # "verticalGravity":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getHeight()I

    move-result v8

    sub-int v6, v8, v2

    .line 252
    goto :goto_0

    .line 254
    :sswitch_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    div-int/lit8 v6, v8, 0x2

    goto :goto_0

    .line 258
    .restart local v0    # "bottom":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v4    # "left":I
    :cond_2
    move v5, v3

    .line 259
    goto :goto_2

    .line 249
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 196
    const-class v0, Lcom/oppo/widget/OppoCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 202
    const-class v0, Lcom/oppo/widget/OppoCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 352
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoCheckBox$SavedState;

    .line 354
    .local v0, "ss":Lcom/oppo/widget/OppoCheckBox$SavedState;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoCheckBox$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 355
    iget v1, v0, Lcom/oppo/widget/OppoCheckBox$SavedState;->state:I

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoCheckBox;->setState(I)V

    .line 356
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->requestLayout()V

    .line 357
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 341
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoCheckBox;->setFreezesText(Z)V

    .line 342
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 344
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoCheckBox$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoCheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 346
    .local v0, "ss":Lcom/oppo/widget/OppoCheckBox$SavedState;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getState()I

    move-result v2

    iput v2, v0, Lcom/oppo/widget/OppoCheckBox$SavedState;->state:I

    .line 347
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->toggle()V

    .line 92
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 158
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonResource:I

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 177
    if-eqz p1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 180
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoCheckBox;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 183
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 184
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 185
    iput-object p1, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 187
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoCheckBox;->setMinHeight(I)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->refreshDrawableState()V

    .line 191
    return-void

    :cond_2
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method public setOnStateChangeListener(Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    .line 137
    return-void
.end method

.method setOnStateChangeWidgetListener(Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeWidgetListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    .line 145
    return-void
.end method

.method public setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 109
    iget v0, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    if-eq v0, p1, :cond_0

    .line 110
    iput p1, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    .line 111
    invoke-virtual {p0}, Lcom/oppo/widget/OppoCheckBox;->refreshDrawableState()V

    .line 112
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoCheckBox;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 116
    iget-boolean v0, p0, Lcom/oppo/widget/OppoCheckBox;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoCheckBox;->mBroadcasting:Z

    .line 121
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    iget v1, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    invoke-interface {v0, p0, v1}, Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;->onStateChanged(Lcom/oppo/widget/OppoCheckBox;I)V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeWidgetListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mOnStateChangeWidgetListener:Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;

    iget v1, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    invoke-interface {v0, p0, v1}, Lcom/oppo/widget/OppoCheckBox$OnStateChangeListener;->onStateChanged(Lcom/oppo/widget/OppoCheckBox;I)V

    .line 128
    :cond_3
    iput-boolean v2, p0, Lcom/oppo/widget/OppoCheckBox;->mBroadcasting:Z

    goto :goto_0
.end method

.method public toggle()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 85
    iget v1, p0, Lcom/oppo/widget/OppoCheckBox;->mState:I

    if-ge v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoCheckBox;->setState(I)V

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoCheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
