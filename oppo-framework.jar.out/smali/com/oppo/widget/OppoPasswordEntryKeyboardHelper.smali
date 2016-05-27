.class public Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;
.super Ljava/lang/Object;
.source "OppoPasswordEntryKeyboardHelper.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field public static final KEYBOARD_MODE_ALPHA:I = 0x0

.field public static final KEYBOARD_MODE_NUMERIC:I = 0x1

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final NUMERIC:I = 0x0

.field private static final QWERTY:I = 0x1

.field private static final QWERTY_SHIFTED:I = 0x2

.field private static final SYMBOLS:I = 0x3

.field private static final SYMBOLS_SHIFTED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "OppoPasswordEntryKeyboardHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnableHaptics:Z

.field private mKeyboardMode:I

.field private mKeyboardState:I

.field private final mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field mLayouts:[I

.field private mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

.field private final mTargetView:Landroid/view/View;

.field private mUsingScreenWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Landroid/inputmethodservice/KeyboardView;
    .param p3, "targetView"    # Landroid/view/View;

    .prologue
    .line 87
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Landroid/inputmethodservice/KeyboardView;
    .param p3, "targetView"    # Landroid/view/View;
    .param p4, "useFullScreenWidth"    # Z

    .prologue
    .line 92
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Landroid/inputmethodservice/KeyboardView;
    .param p3, "targetView"    # Landroid/view/View;
    .param p4, "useFullScreenWidth"    # Z
    .param p5, "layouts"    # [I

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 53
    iput v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 68
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mEnableHaptics:Z

    .line 76
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    .line 97
    iput-object p1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    .line 98
    iput-object p3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    .line 99
    iput-object p2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 100
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 101
    iput-boolean p4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mUsingScreenWidth:Z

    .line 102
    if-eqz p5, :cond_1

    .line 103
    array-length v1, p5

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wrong number of layouts"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, p5, v0

    aput v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->createKeyboards()V

    .line 111
    return-void

    .line 76
    :array_0
    .array-data 4
        0xc0b0401
        0xc0b0402
        0xc0b0400
        0xc0b0403
        0xc0b0404
    .end array-data
.end method

.method private createKeyboardsWithDefaultWidth()V
    .locals 6

    .prologue
    const v5, 0xc020449

    const/4 v4, 0x1

    .line 151
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 152
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, v2, v4

    invoke-direct {v0, v1, v2, v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 153
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 155
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 157
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 158
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v4}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 160
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 161
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 163
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 164
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 165
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v4}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 166
    return-void
.end method

.method private createKeyboardsWithSpecificSize(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const v3, 0xc020449

    const/4 v6, 0x1

    .line 131
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 132
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, v2, v6

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 134
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 136
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 138
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 139
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v6}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 141
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 142
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 144
    new-instance v0, Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 146
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->enableShiftLock()V

    .line 147
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v0, v6}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShifted(Z)Z

    .line 148
    return-void
.end method

.method private handleCharacter(I[I)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 324
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->sendKeyEventsToTarget(I)V

    .line 327
    return-void
.end method

.method private handleClose()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method private handleModeChange()V
    .locals 3

    .prologue
    .line 273
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 274
    .local v0, "current":Landroid/inputmethodservice/Keyboard;
    const/4 v1, 0x0

    .line 275
    .local v1, "next":Landroid/inputmethodservice/Keyboard;
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-ne v0, v2, :cond_3

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 280
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 281
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 282
    const/4 v2, 0x0

    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 284
    :cond_2
    return-void

    .line 277
    :cond_3
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-ne v0, v2, :cond_1

    .line 278
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_0
.end method

.method private handleShift()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 295
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-nez v5, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 299
    .local v0, "current":Landroid/inputmethodservice/Keyboard;
    const/4 v2, 0x0

    .line 300
    .local v2, "next":Lcom/oppo/widget/OppoPasswordEntryKeyboard;
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-eq v0, v5, :cond_2

    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    if-ne v0, v5, :cond_5

    :cond_2
    move v1, v4

    .line 302
    .local v1, "isAlphaMode":Z
    :goto_1
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-nez v5, :cond_8

    .line 303
    if-eqz v1, :cond_6

    move v5, v4

    :goto_2
    iput v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 304
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    .line 312
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 313
    if-eq v2, v0, :cond_4

    .line 314
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 316
    :cond_4
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v6, :cond_c

    move v5, v4

    :goto_4
    invoke-virtual {v2, v5}, Lcom/oppo/widget/OppoPasswordEntryKeyboard;->setShiftLocked(Z)V

    .line 317
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget v6, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-eqz v6, :cond_d

    :goto_5
    invoke-virtual {v5, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    goto :goto_0

    .end local v1    # "isAlphaMode":Z
    :cond_5
    move v1, v3

    .line 300
    goto :goto_1

    .restart local v1    # "isAlphaMode":Z
    :cond_6
    move v5, v6

    .line 303
    goto :goto_2

    .line 304
    :cond_7
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_3

    .line 305
    :cond_8
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v4, :cond_a

    .line 306
    iput v6, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 307
    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    :goto_6
    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_6

    .line 308
    :cond_a
    iget v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v6, :cond_3

    .line 309
    iput v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 310
    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    :goto_7
    goto :goto_3

    :cond_b
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    goto :goto_7

    :cond_c
    move v5, v3

    .line 316
    goto :goto_4

    :cond_d
    move v4, v3

    .line 317
    goto :goto_5
.end method

.method private performHapticFeedback()V
    .locals 3

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->performHapticFeedback(II)Z

    .line 343
    :cond_0
    return-void
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 9
    .param p1, "character"    # I

    .prologue
    .line 189
    iget-object v5, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 190
    .local v4, "viewRootImpl":Landroid/view/ViewRootImpl;
    const/4 v5, -0x1

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    int-to-char v8, p1

    aput-char v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 192
    .local v2, "events":[Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 193
    array-length v0, v2

    .line 194
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 195
    aget-object v1, v2, v3

    .line 196
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x4

    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 198
    invoke-virtual {v4, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "N":I
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v3    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public createKeyboards()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 115
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mUsingScreenWidth:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->createKeyboardsWithDefaultWidth()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->createKeyboardsWithSpecificSize(II)V

    goto :goto_0
.end method

.method public handleBackspace()V
    .locals 1

    .prologue
    .line 287
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 288
    return-void
.end method

.method public handleClear()V
    .locals 1

    .prologue
    .line 291
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 292
    return-void
.end method

.method public isAlpha()Z
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(I[I)V
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 217
    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleBackspace()V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 220
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0

    .line 221
    :cond_2
    const/4 v0, -0x7

    if-ne p1, v0, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleClear()V

    goto :goto_0

    .line 223
    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    .line 224
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleClose()V

    goto :goto_0

    .line 226
    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_5

    .line 227
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleModeChange()V

    goto :goto_0

    .line 229
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleCharacter(I[I)V

    .line 231
    iget v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 233
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 234
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0
.end method

.method public onPress(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->performHapticFeedback()V

    .line 335
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 347
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 351
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13
    .param p1, "keyEventCode"    # I

    .prologue
    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 205
    .local v2, "eventTime":J
    iget-object v1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 206
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 210
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 214
    return-void
.end method

.method public setEnableHaptics(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mEnableHaptics:Z

    .line 124
    return-void
.end method

.method public setKeyboardMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    iput p1, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 186
    return-void

    .line 171
    :pswitch_0
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 172
    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 173
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    .local v1, "visiblePassword":Z
    :goto_1
    const/4 v0, 0x0

    .line 177
    .local v0, "enablePreview":Z
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v1, :cond_0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    .end local v0    # "enablePreview":Z
    .end local v1    # "visiblePassword":Z
    :cond_1
    move v1, v2

    .line 173
    goto :goto_1

    .line 180
    :pswitch_1
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v4, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/oppo/widget/OppoPasswordEntryKeyboard;

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 181
    iput v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 182
    iget-object v3, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVibratePattern(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, "tmpArray":[I
    :try_start_0
    iget-object v2, p0, Lcom/oppo/widget/OppoPasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 252
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 270
    :cond_1
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_0

    .line 249
    const-string v2, "OppoPasswordEntryKeyboardHelper"

    const-string v3, "Vibrate pattern missing"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method
