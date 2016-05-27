.class public Lcom/oppo/widget/OppoTouchSearchView;
.super Landroid/view/View;
.source "OppoTouchSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTouchSearchView$UnionKey;,
        Lcom/oppo/widget/OppoTouchSearchView$Key;,
        Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    }
.end annotation


# static fields
.field private static final BG_ALIGN_MIDDLE:I = 0x0

.field private static final BG_ALIGN_RIGHT:I = 0x2

.field public static final CHAR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field public static final KEY_PADDING_X:I = 0x1b

.field private static final MAX_NAME_NUM:I = 0x7

.field public static final MAX_SECTIONS_NUM:I = 0x1b

.field public static final MAX_SECTIONS_NUM_WITH_DOT:I = 0x17

.field public static final MIN_SECTIONS_NUM:I = 0x5

.field private static final SEARCH_OFFSET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoTouchSearchView"

.field private static final WELL_DRAWABLE_POSITION:I

.field private static final sCollator:Ljava/text/Collator;


# instance fields
.field private KEYS:[Ljava/lang/String;

.field private UNIONKEYS:[Ljava/lang/String;

.field private keyIndices:I

.field private lastKeyIndices:I

.field private layout:Landroid/widget/LinearLayout;

.field private mActivePointerId:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlignMode:I

.field private mBackgroundLeftMargin:I

.field private mBackgroundRightMargin:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private mDisplayKey:Ljava/lang/CharSequence;

.field private mDot:Ljava/lang/CharSequence;

.field private mDotDrawableHeight:I

.field private mDotDrawableWidth:I

.field private mDotDrawables:[Landroid/graphics/drawable/Drawable;

.field private mFirstLayout:Z

.field private mFrameChanged:Z

.field private mKeyDrawableHeight:I

.field private mKeyDrawableNames:[Ljava/lang/String;

.field private mKeyDrawableOffset:I

.field private mKeyDrawableWidth:I

.field private mKeyDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeyPaddingX:I

.field private mKeyPaddingY:I

.field private mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

.field private mPopupDefaultHeight:I

.field private mPopupTextView:Landroid/widget/TextView;

.field private mPopupWinSubHeight:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowHeight:I

.field private mPopupWindowLocalx:I

.field private mPopupWindowLocaly:I

.field private mPopupWindowMinTop:I

.field private mPopupWindowRightMargin:I

.field private mPopupWindowTextColor:I

.field private mPopupWindowTextSize:I

.field private mPopupWindowTopMargin:I

.field private mPopupWindowWidth:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSections:[Ljava/lang/String;

.field private mTouchFlag:Z

.field private mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

.field private mUnionEnable:Z

.field private mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

.field private mWhetherDrawDot:Z

.field private mWhetherUnion:Z

.field private surname:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 450
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    .line 455
    new-instance v0, Lcom/oppo/widget/OppoTouchSearchView$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoTouchSearchView$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoTouchSearchView;->CHAR_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoTouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 254
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    iput v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    .line 149
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 163
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 165
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 167
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 172
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    .line 173
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 175
    const-string v6, ""

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 219
    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 226
    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 227
    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    .line 255
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 258
    .local v4, "resources":Landroid/content/res/Resources;
    sget-object v6, Loppo/R$styleable;->OppoTouchSearchView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 260
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 261
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    .line 265
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 267
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    .line 270
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 272
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    if-ne v7, v6, :cond_0

    .line 273
    const v6, 0xc050403

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 276
    :cond_0
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 278
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    if-ne v7, v6, :cond_1

    .line 279
    const v6, 0xc050404

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 281
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    .line 284
    :cond_1
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 285
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ne v7, v6, :cond_2

    .line 286
    const v6, 0xc0d0404

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 289
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    .line 292
    const v6, 0xc060401

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 294
    const/16 v6, 0x9

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 296
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    const v7, 0xc050406

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    .line 299
    const v6, 0xc050408

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTopMargin:I

    .line 301
    const v6, 0xc050407

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowRightMargin:I

    .line 303
    const v6, 0xc050433

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    .line 304
    const v6, 0xc050436

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    .line 307
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 309
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowRightMargin:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    .line 310
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTopMargin:I

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    .line 312
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 315
    const v6, 0xc040407

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    .line 318
    const-string v6, "persist.sys.oppo.region"

    const-string v7, "CN"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "region":Ljava/lang/String;
    const-string v6, "CN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 320
    const v6, 0xc070400

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    .line 325
    :goto_0
    const v6, 0xc070401

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    .line 327
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    .line 328
    const v6, 0xc08040d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 339
    :cond_3
    const-string v6, "CN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 340
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysDrawable(Landroid/content/res/Resources;)V

    .line 341
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysPressedDrawable(Landroid/content/res/Resources;)V

    .line 348
    :goto_1
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 350
    .local v1, "inflate":Landroid/view/LayoutInflater;
    const v6, 0xc090409

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 353
    .local v2, "mPopupContent":Landroid/view/ViewGroup;
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 354
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 355
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 357
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 358
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    const v7, 0xc030404

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 359
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    const v6, 0xc020402

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    .line 362
    const v6, 0xc0204b1

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    .line 364
    const v6, 0xc020403

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    .line 366
    const/4 v4, 0x0

    .line 367
    return-void

    .line 322
    .end local v1    # "inflate":Landroid/view/LayoutInflater;
    .end local v2    # "mPopupContent":Landroid/view/ViewGroup;
    :cond_4
    const v6, 0xc07040f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 343
    :cond_5
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysDrawableExp(Landroid/content/res/Resources;)V

    .line 344
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysPressedDrawableExp(Landroid/content/res/Resources;)V

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mkeys"    # [Lcom/oppo/widget/OppoTouchSearchView$Key;

    .prologue
    .line 1031
    move-object v2, p2

    .line 1032
    .local v2, "keys":[Lcom/oppo/widget/OppoTouchSearchView$Key;
    if-nez v2, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1036
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1037
    array-length v1, v2

    .line 1038
    .local v1, "keyCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1039
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 1040
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1038
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1044
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawKeysExp(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mkeys"    # [Lcom/oppo/widget/OppoTouchSearchView$Key;

    .prologue
    .line 1674
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1699
    :cond_0
    :goto_0
    return-void

    .line 1678
    :cond_1
    move-object v2, p2

    .line 1679
    .local v2, "keys":[Lcom/oppo/widget/OppoTouchSearchView$Key;
    if-eqz v2, :cond_0

    .line 1683
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1684
    array-length v1, v2

    .line 1685
    .local v1, "keyCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 1686
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 1687
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1691
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_3

    .line 1692
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1685
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1698
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "mkeys"    # [Lcom/oppo/widget/OppoTouchSearchView$Key;

    .prologue
    .line 831
    if-le p3, p4, :cond_1

    .line 832
    const/4 v2, -0x1

    .line 845
    :cond_0
    :goto_0
    return v2

    .line 834
    :cond_1
    add-int v4, p3, p4

    div-int/lit8 v2, v4, 0x2

    .line 835
    .local v2, "middle":I
    move-object v1, p5

    .line 836
    .local v1, "keys":[Lcom/oppo/widget/OppoTouchSearchView$Key;
    aget-object v4, v1, v2

    iget v3, v4, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    .line 837
    .local v3, "top":I
    aget-object v4, v1, v2

    iget v4, v4, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int v0, v4, v5

    .line 838
    .local v0, "bottom":I
    if-lt p2, v3, :cond_2

    if-lt p2, v0, :cond_0

    .line 840
    :cond_2
    if-ge p2, v3, :cond_3

    .line 841
    add-int/lit8 p4, v2, -0x1

    .line 842
    invoke-direct/range {p0 .. p5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v2

    goto :goto_0

    .line 844
    :cond_3
    add-int/lit8 p3, v2, 0x1

    .line 845
    invoke-direct/range {p0 .. p5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v2

    goto :goto_0
.end method

.method private findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1336
    array-length v1, p1

    .line 1337
    .local v1, "keyCount":I
    const/4 v2, 0x1

    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v2, v3, p2}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 1339
    .local v0, "drawablePos":I
    if-gez v0, :cond_0

    .line 1340
    invoke-static {p1, p2}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1343
    :cond_0
    return v0
.end method

.method private findKeysDrawable(Landroid/content/res/Resources;)V
    .locals 13
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const v10, 0xc070402

    const/4 v12, 0x0

    .line 378
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 380
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    .line 381
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    array-length v2, v10

    .line 382
    .local v2, "count":I
    new-array v10, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 384
    const/4 v4, 0x0

    .line 385
    .local v4, "i":I
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v1, v5

    .line 386
    .local v3, "extra":Ljava/lang/String;
    const v10, 0xc040408

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 387
    .local v9, "strPrefix":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "OppoExtra":Ljava/lang/String;
    const-string v10, "drawable"

    invoke-virtual {p1, v0, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 389
    .local v8, "res":I
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v10, v4

    .line 390
    add-int/lit8 v4, v4, 0x1

    .line 385
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "OppoExtra":Ljava/lang/String;
    .end local v3    # "extra":Ljava/lang/String;
    .end local v8    # "res":I
    .end local v9    # "strPrefix":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 393
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    iget v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 394
    return-void
.end method

.method private findKeysDrawableExp(Landroid/content/res/Resources;)V
    .locals 14
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const v11, 0xc070410

    const/4 v13, 0x0

    .line 1379
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 1382
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1384
    .local v7, "mKeyNames":[Ljava/lang/String;
    array-length v2, v7

    .line 1385
    .local v2, "count":I
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1386
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1388
    const/4 v4, 0x0

    .line 1389
    .local v4, "i":I
    const v11, 0xc040408

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1390
    .local v10, "strPrefix":Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v1, v5

    .line 1392
    .local v3, "extra":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, "OppoExtra":Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {p1, v0, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1394
    .local v9, "res":I
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v4

    .line 1395
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    const v12, 0xc08040f

    invoke-virtual {p1, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v4

    .line 1397
    add-int/lit8 v4, v4, 0x1

    .line 1390
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1399
    .end local v0    # "OppoExtra":Ljava/lang/String;
    .end local v3    # "extra":Ljava/lang/String;
    .end local v9    # "res":I
    :cond_0
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iget v12, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 1400
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    iget v12, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 1401
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableWidth:I

    .line 1402
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    .line 1403
    return-void
.end method

.method private findKeysPressedDrawable(Landroid/content/res/Resources;)V
    .locals 13
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const v11, 0xc070403

    .line 397
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 399
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "mKeyPressedNames":[Ljava/lang/String;
    array-length v6, v5

    .line 402
    .local v6, "num":I
    new-array v11, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    .line 403
    const/4 v2, 0x0

    .line 404
    .local v2, "i":I
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v10, v1, v3

    .line 405
    .local v10, "tmp":Ljava/lang/String;
    const v11, 0xc040408

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 406
    .local v9, "strPrefix":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "OppoExtra":Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {p1, v0, v11, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 408
    .local v8, "res":I
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v2

    .line 409
    add-int/lit8 v2, v2, 0x1

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "OppoExtra":Ljava/lang/String;
    .end local v8    # "res":I
    .end local v9    # "strPrefix":Ljava/lang/String;
    .end local v10    # "tmp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private findKeysPressedDrawableExp(Landroid/content/res/Resources;)V
    .locals 13
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const v11, 0xc070410

    .line 1406
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 1408
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1411
    .local v5, "mKeyPressedNames":[Ljava/lang/String;
    array-length v6, v5

    .line 1412
    .local v6, "num":I
    new-array v11, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1413
    const/4 v2, 0x0

    .line 1414
    .local v2, "i":I
    const v11, 0xc040408

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1415
    .local v9, "strPrefix":Ljava/lang/String;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v10, v1, v3

    .line 1417
    .local v10, "tmp":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_pressed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, "OppoExtra":Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {p1, v0, v11, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1419
    .local v8, "res":I
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1420
    add-int/lit8 v2, v2, 0x1

    .line 1415
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1422
    .end local v0    # "OppoExtra":Ljava/lang/String;
    .end local v8    # "res":I
    .end local v10    # "tmp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .param p0, "charArray"    # [Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "whichChar"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 481
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 482
    :cond_0
    const-string v4, "OppoTouchSearchView"

    const-string v5, "getCharPositionInArray --- error,  return -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 532
    :cond_1
    :goto_0
    return v1

    .line 490
    :cond_2
    const-string v4, "#"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 494
    const-string v3, "persist.sys.oppo.region"

    const-string v4, "CN"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "region":Ljava/lang/String;
    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 496
    const/4 v1, 0x0

    goto :goto_0

    .line 498
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 503
    .end local v2    # "region":Ljava/lang/String;
    :cond_4
    if-le p1, p2, :cond_5

    .line 504
    const-string v4, "OppoTouchSearchView"

    const-string v5, "getCharPositionInArray --- not find , return -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 505
    goto :goto_0

    .line 508
    :cond_5
    add-int v4, p1, p2

    div-int/lit8 v1, v4, 0x2

    .line 509
    .local v1, "middle":I
    if-le v1, p2, :cond_6

    move v1, v3

    .line 510
    goto :goto_0

    .line 515
    :cond_6
    array-length v4, p0

    if-ne v4, v1, :cond_7

    move v1, v3

    .line 516
    goto :goto_0

    .line 523
    :cond_7
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "lowerCharSequence":Ljava/lang/CharSequence;
    sget-object v3, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    aget-object v4, p0, v1

    invoke-virtual {v3, v0, v4}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    sget-object v3, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    aget-object v4, p0, v1

    invoke-virtual {v3, v0, v4}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_8

    .line 528
    add-int/lit8 p1, v1, 0x1

    .line 529
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 531
    :cond_8
    add-int/lit8 p2, v1, -0x1

    .line 532
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method static getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "charArray"    # [Ljava/lang/String;
    .param p1, "whichChar"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 463
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v1, v2

    .line 477
    :cond_1
    :goto_0
    return v1

    .line 466
    :cond_2
    array-length v0, p0

    .line 467
    .local v0, "charCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 472
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 477
    goto :goto_0
.end method

.method private getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "mkeys"    # [Lcom/oppo/widget/OppoTouchSearchView$Key;

    .prologue
    const/4 v3, 0x0

    .line 851
    const/4 v8, -0x1

    .line 852
    .local v8, "primaryIndex":I
    move-object v7, p3

    .line 853
    .local v7, "keys":[Lcom/oppo/widget/OppoTouchSearchView$Key;
    array-length v6, v7

    .line 855
    .local v6, "keyCount":I
    add-int/lit8 v4, v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v8

    .line 859
    const/4 v0, -0x1

    if-ne v0, v8, :cond_0

    .line 860
    aget-object v0, v7, v3

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-ge p2, v0, :cond_1

    .line 861
    const/4 v8, 0x0

    .line 868
    :cond_0
    :goto_0
    return v8

    .line 862
    :cond_1
    add-int/lit8 v0, v6, -0x1

    aget-object v0, v7, v0

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-le p2, v0, :cond_2

    .line 863
    add-int/lit8 v8, v6, -0x1

    goto :goto_0

    .line 864
    :cond_2
    aget-object v0, v7, v3

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-le p2, v0, :cond_0

    add-int/lit8 v0, v6, -0x1

    aget-object v0, v7, v0

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-ge p2, v0, :cond_0

    .line 865
    div-int/lit8 v8, v6, 0x2

    goto :goto_0
.end method

.method private invalidateKey(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 919
    iget-boolean v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v4, :cond_1

    .line 920
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, p2, v5}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v5

    aget-object v1, v4, v5

    .line 921
    .local v1, "key":Lcom/oppo/widget/OppoTouchSearchView$Key;
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, p2, v4}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 926
    :goto_0
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 927
    .local v3, "willDisplay":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 928
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 929
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->x:I

    iget v6, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    invoke-direct {p0, v4, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView;->onKeyChanged(Ljava/lang/CharSequence;II)V

    .line 930
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 931
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    if-eqz v4, :cond_0

    .line 932
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    .line 934
    :cond_0
    iget-boolean v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v4, :cond_3

    .line 935
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v2, v4

    .line 936
    .local v2, "keysCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 937
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 936
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 923
    .end local v0    # "i":I
    .end local v1    # "key":Lcom/oppo/widget/OppoTouchSearchView$Key;
    .end local v2    # "keysCount":I
    .end local v3    # "willDisplay":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-direct {p0, p1, p2, v5}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v5

    aget-object v1, v4, v5

    .restart local v1    # "key":Lcom/oppo/widget/OppoTouchSearchView$Key;
    goto :goto_0

    .line 939
    .restart local v0    # "i":I
    .restart local v2    # "keysCount":I
    .restart local v3    # "willDisplay":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 940
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 941
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 945
    .end local v0    # "i":I
    .end local v2    # "keysCount":I
    :cond_3
    return-void
.end method

.method private invalidateKeyExp(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, p2, v3}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 1352
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v0, v3, v4

    .line 1353
    .local v0, "key":Lcom/oppo/widget/OppoTouchSearchView$Key;
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1359
    .local v2, "willDisplay":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1360
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->x:I

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    invoke-direct {p0, v3, v4, v5}, Lcom/oppo/widget/OppoTouchSearchView;->onKeyChangedExp(Ljava/lang/CharSequence;II)V

    .line 1361
    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 1362
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    if-eqz v3, :cond_2

    .line 1363
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    .line 1366
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeysExp()V

    .line 1368
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1369
    .local v1, "pos":I
    if-ltz v1, :cond_0

    .line 1371
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1372
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    .line 1373
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    goto :goto_0
.end method

.method private isSectionsValidate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1425
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadKeys()V
    .locals 6

    .prologue
    .line 433
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$Key;>;"
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v3, v4

    .line 436
    .local v3, "keysCount":I
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 437
    const-string v4, "OppoTouchSearchView"

    const-string v5, "loadKeys --- error when loadKeys , keysCount > mKeyDrawables.length , return "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_0
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 443
    new-instance v1, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-direct {v1, v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 444
    .local v1, "key":Lcom/oppo/widget/OppoTouchSearchView$Key;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    .end local v1    # "key":Lcom/oppo/widget/OppoTouchSearchView$Key;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    goto :goto_0
.end method

.method private loadKeysExp()V
    .locals 7

    .prologue
    .line 1501
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$Key;>;"
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1523
    :goto_0
    return-void

    .line 1507
    :cond_0
    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    array-length v4, v5

    .line 1509
    .local v4, "keysCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1511
    new-instance v2, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v2, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Ljava/lang/CharSequence;)V

    .line 1513
    .local v2, "key":Lcom/oppo/widget/OppoTouchSearchView$Key;
    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    iget-object v6, v2, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1514
    .local v0, "drawablePos":I
    if-gez v0, :cond_1

    .line 1509
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1517
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1519
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1522
    .end local v0    # "drawablePos":I
    .end local v2    # "key":Lcom/oppo/widget/OppoTouchSearchView$Key;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    iput-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    goto :goto_0
.end method

.method private loadUnionKeys()V
    .locals 12

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 538
    .local v7, "resources":Landroid/content/res/Resources;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v4, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$UnionKey;>;"
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    array-length v0, v9

    .line 540
    .local v0, "drawableNamesCount":I
    add-int/lit8 v9, v0, -0x1

    new-array v5, v9, [Ljava/lang/String;

    .line 541
    .local v5, "mUnionKeyDrawableNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v9, v0, -0x1

    if-ge v2, v9, :cond_0

    .line 542
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    aput-object v9, v5, v2

    .line 541
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    :cond_0
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    new-array v6, v9, [Landroid/graphics/drawable/Drawable;

    .line 545
    .local v6, "mUnionKeyDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    :goto_1
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_1

    .line 546
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    aput-object v9, v6, v2

    .line 545
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 549
    :cond_1
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    array-length v8, v9

    .line 553
    .local v8, "unionkeysCount":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_4

    .line 554
    new-instance v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-direct {v3, v9}, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;-><init>(Ljava/lang/CharSequence;)V

    .line 555
    .local v3, "key":Lcom/oppo/widget/OppoTouchSearchView$UnionKey;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->mKeyLabel:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 560
    const/4 v9, 0x1

    add-int/lit8 v10, v0, -0x1

    iget-object v11, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v9, v10, v11}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 562
    .local v1, "drawablePos":I
    if-gez v1, :cond_2

    .line 563
    iget-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 565
    if-gez v1, :cond_2

    .line 553
    .end local v1    # "drawablePos":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 570
    .restart local v1    # "drawablePos":I
    :cond_2
    aget-object v9, v6, v1

    invoke-virtual {v3, v9}, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 572
    .end local v1    # "drawablePos":I
    :cond_3
    const v9, 0xc08040f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 575
    :pswitch_1
    const-string v9, "B"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 576
    const-string v9, "C"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 579
    :pswitch_2
    const-string v9, "E"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 580
    const-string v9, "F"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 583
    :pswitch_3
    const-string v9, "H"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    goto :goto_3

    .line 586
    :pswitch_4
    const-string v9, "J"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 587
    const-string v9, "K"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 590
    :pswitch_5
    const-string v9, "M"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 591
    const-string v9, "N"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 594
    :pswitch_6
    const-string v9, "P"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 595
    const-string v9, "Q"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 598
    :pswitch_7
    const-string v9, "S"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    goto :goto_3

    .line 601
    :pswitch_8
    const-string v9, "U"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 602
    const-string v9, "V"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 605
    :pswitch_9
    const-string v9, "X"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 606
    const-string v9, "Y"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 612
    .end local v3    # "key":Lcom/oppo/widget/OppoTouchSearchView$UnionKey;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iput-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    .line 613
    return-void

    .line 573
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private onKeyChanged(Ljava/lang/CharSequence;II)V
    .locals 8
    .param p1, "display"    # Ljava/lang/CharSequence;
    .param p2, "key_x"    # I
    .param p3, "key_y"    # I

    .prologue
    const/4 v6, 0x0

    .line 967
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 1006
    :goto_0
    return-void

    .line 974
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 977
    .local v0, "coordinate":[I
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTouchSearchView;->getLocationInWindow([I)V

    .line 979
    aget v3, v0, v6

    add-int/2addr v3, p2

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    sub-int v1, v3, v4

    .line 980
    .local v1, "localx":I
    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v3, p3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    shr-int/lit8 v4, v4, 0x1

    sub-int v2, v3, v4

    .line 982
    .local v2, "localy":I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ge v2, v3, :cond_1

    .line 983
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 991
    :cond_1
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 992
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    goto :goto_0

    .line 994
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 996
    const-string v3, "OppoTouchSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPopupWindowLocalx_update="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1000
    :cond_3
    const-string v3, "OppoTouchSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPopupWindowLocalx_show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method private onKeyChangedExp(Ljava/lang/CharSequence;II)V
    .locals 8
    .param p1, "display"    # Ljava/lang/CharSequence;
    .param p2, "key_x"    # I
    .param p3, "key_y"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1626
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 1670
    :goto_0
    return-void

    .line 1633
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1636
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1637
    .local v0, "coordinate":[I
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoTouchSearchView;->getLocationInWindow([I)V

    .line 1648
    aget v3, v0, v7

    add-int/2addr v3, p2

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    sub-int v1, v3, v4

    .line 1650
    .local v1, "localx":I
    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v3, p3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    shr-int/lit8 v4, v4, 0x1

    sub-int v2, v3, v4

    .line 1652
    .local v2, "localy":I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ge v2, v3, :cond_1

    .line 1653
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 1660
    :cond_1
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1661
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    goto :goto_0

    .line 1663
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1664
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1666
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 948
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 949
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 954
    .local v1, "pointerId":I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 958
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 959
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 964
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 958
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 14

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->whetherUnion()V

    .line 649
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    if-nez v0, :cond_0

    .line 651
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeys()V

    .line 653
    :cond_0
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    .line 661
    .local v9, "keys":[Lcom/oppo/widget/OppoTouchSearchView$Key;
    :goto_0
    iget v13, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    .line 662
    .local v13, "topPadding":I
    array-length v10, v9

    .line 663
    .local v10, "keysCount":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingBottom:I

    sub-int v7, v0, v3

    .line 667
    .local v7, "exactHeight":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 668
    div-int v0, v7, v10

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 670
    rem-int v12, v7, v10

    .line 671
    .local v12, "residual":I
    shr-int/lit8 v0, v12, 0x1

    add-int/2addr v13, v0

    .line 673
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    .line 678
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 679
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 680
    .local v11, "r":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->right:I

    iget v4, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    .line 685
    .end local v11    # "r":Landroid/graphics/Rect;
    :goto_1
    const/4 v1, 0x0

    .line 686
    .local v1, "x":I
    move v2, v13

    .line 687
    .local v2, "y":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v10, :cond_5

    .line 688
    aget-object v0, v9, v8

    iget-object v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 689
    aget-object v0, v9, v8

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;->updateKeyValue(IIIIII)V

    .line 691
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int/2addr v2, v0

    .line 687
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 655
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v7    # "exactHeight":I
    .end local v8    # "i":I
    .end local v9    # "keys":[Lcom/oppo/widget/OppoTouchSearchView$Key;
    .end local v10    # "keysCount":I
    .end local v12    # "residual":I
    .end local v13    # "topPadding":I
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    if-nez v0, :cond_3

    .line 656
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadUnionKeys()V

    .line 658
    :cond_3
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    .restart local v9    # "keys":[Lcom/oppo/widget/OppoTouchSearchView$Key;
    goto :goto_0

    .line 682
    .restart local v7    # "exactHeight":I
    .restart local v10    # "keysCount":I
    .restart local v12    # "residual":I
    .restart local v13    # "topPadding":I
    :cond_4
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    goto :goto_1

    .line 694
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    .restart local v8    # "i":I
    :cond_5
    return-void
.end method

.method private updateBackGroundBound()V
    .locals 7

    .prologue
    .line 812
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 813
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 816
    .local v0, "bgwidth":I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    if-nez v3, :cond_1

    .line 817
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x2

    .line 818
    .local v1, "exactleft":I
    add-int v2, v1, v0

    .line 826
    .local v2, "exactright":I
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBottom:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 828
    .end local v0    # "bgwidth":I
    .end local v1    # "exactleft":I
    .end local v2    # "exactright":I
    :cond_0
    return-void

    .line 819
    .restart local v0    # "bgwidth":I
    :cond_1
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 820
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    sub-int v2, v3, v4

    .line 821
    .restart local v2    # "exactright":I
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v1, v2, v3

    .restart local v1    # "exactleft":I
    goto :goto_0

    .line 823
    .end local v1    # "exactleft":I
    .end local v2    # "exactright":I
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 824
    .restart local v1    # "exactleft":I
    add-int v2, v1, v0

    .restart local v2    # "exactright":I
    goto :goto_0
.end method

.method private updateExp(Z)V
    .locals 17
    .param p1, "load"    # Z

    .prologue
    .line 1528
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1623
    :cond_0
    return-void

    .line 1532
    :cond_1
    if-eqz p1, :cond_2

    .line 1533
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeysExp()V

    .line 1535
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    .line 1537
    .local v12, "keys":[Lcom/oppo/widget/OppoTouchSearchView$Key;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    move/from16 v16, v0

    .line 1538
    .local v16, "topPadding":I
    array-length v13, v12

    .line 1540
    .local v13, "keysCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingBottom:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    add-int v10, v1, v4

    .line 1546
    .local v10, "exactHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 1548
    move v15, v10

    .line 1549
    .local v15, "residual":I
    if-eqz v13, :cond_3

    .line 1550
    div-int v1, v10, v13

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 1551
    rem-int v15, v10, v13

    .line 1556
    :cond_3
    shr-int/lit8 v1, v15, 0x1

    add-int v16, v16, v1

    .line 1564
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-eqz v1, :cond_5

    .line 1565
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    .line 1566
    const-string v1, "OppoTouchSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKeyPaddingY = (mCellHeight - mKeyDrawableHeight) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableWidth:I

    sub-int/2addr v1, v4

    div-int/lit8 v8, v1, 0x2

    .line 1577
    .local v8, "dotTokeyPaddingX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 1579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 1585
    .local v14, "r":Landroid/graphics/Rect;
    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v4, v14, Landroid/graphics/Rect;->right:I

    iget v5, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    .line 1588
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    if-gez v1, :cond_4

    .line 1589
    const/16 v1, 0x1b

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    .line 1610
    .end local v14    # "r":Landroid/graphics/Rect;
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 1611
    .local v2, "x":I
    move/from16 v3, v16

    .line 1612
    .local v3, "y":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v13, :cond_0

    .line 1614
    aget-object v1, v12, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    invoke-virtual/range {v1 .. v7}, Lcom/oppo/widget/OppoTouchSearchView$Key;->updateKeyValue(IIIIII)V

    .line 1617
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    add-int v9, v1, v4

    .line 1618
    .local v9, "dotY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    add-int/2addr v4, v2

    add-int/2addr v4, v8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    add-int/2addr v5, v2

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableWidth:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    add-int/2addr v6, v9

    invoke-virtual {v1, v4, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1621
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int/2addr v3, v1

    .line 1612
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1568
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v8    # "dotTokeyPaddingX":I
    .end local v9    # "dotY":I
    .end local v11    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    goto/16 :goto_0

    .line 1601
    .restart local v8    # "dotTokeyPaddingX":I
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    goto :goto_1
.end method

.method private whetherUnion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 616
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    if-nez v1, :cond_0

    .line 617
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    .line 643
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPaddingBottom:I

    sub-int v0, v1, v2

    .line 626
    .local v0, "exactHeight":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 627
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    div-int v1, v0, v1

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 633
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    if-ge v1, v2, :cond_1

    .line 634
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 635
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 636
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    goto :goto_0

    .line 638
    :cond_1
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    goto :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 5

    .prologue
    .line 1051
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1052
    iget-boolean v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v2, :cond_1

    .line 1057
    const-string v2, "persist.sys.oppo.region"

    const-string v3, "CN"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1058
    .local v0, "region":Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v2

    .line 1059
    .local v1, "size":I
    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1060
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    array-length v1, v2

    .line 1062
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyIndices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKeys:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKeyDrawables:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_0
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ge v2, v1, :cond_1

    .line 1070
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1075
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1080
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 1083
    .end local v0    # "region":Ljava/lang/String;
    .end local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1085
    :cond_2
    return-void

    .line 1077
    .restart local v0    # "region":Ljava/lang/String;
    .restart local v1    # "size":I
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getTouchSearchActionListener()Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 421
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 422
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 371
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 372
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->surname:Ljava/lang/CharSequence;

    .line 373
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->surname:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onNameKey(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 425
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 426
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    .line 427
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1009
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1010
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1014
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v1, :cond_2

    .line 1018
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, "region":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    .line 1028
    .end local v0    # "region":Ljava/lang/String;
    :goto_0
    return-void

    .line 1022
    .restart local v0    # "region":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeysExp(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    goto :goto_0

    .line 1026
    .end local v0    # "region":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 785
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 786
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz v1, :cond_2

    .line 790
    :cond_0
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "region":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 792
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 793
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 802
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 803
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 805
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz v1, :cond_2

    .line 806
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 809
    .end local v0    # "region":Ljava/lang/String;
    :cond_2
    return-void

    .line 795
    .restart local v0    # "region":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 796
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 798
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 873
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 875
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 912
    :goto_0
    :pswitch_0
    return v7

    .line 877
    :pswitch_1
    iput-boolean v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 878
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 879
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 882
    :pswitch_2
    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 883
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v3, v5

    .line 884
    .local v3, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 888
    .local v4, "y":I
    const-string v5, "persist.sys.oppo.region"

    const-string v6, "CN"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 889
    .local v2, "region":Ljava/lang/String;
    const-string v5, "CN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 890
    invoke-direct {p0, v3, v4}, Lcom/oppo/widget/OppoTouchSearchView;->invalidateKey(II)V

    goto :goto_0

    .line 892
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/oppo/widget/OppoTouchSearchView;->invalidateKeyExp(II)V

    goto :goto_0

    .line 900
    .end local v1    # "pointerIndex":I
    .end local v2    # "region":Ljava/lang/String;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :pswitch_3
    const/4 v5, -0x1

    iput v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 901
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 902
    const-string v5, ""

    iput-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 903
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    goto :goto_0

    .line 906
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1136
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1137
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 414
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 415
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 417
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setName([Ljava/lang/String;)V
    .locals 10
    .param p1, "firstname"    # [Ljava/lang/String;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1088
    array-length v3, p1

    .line 1090
    .local v3, "length":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1091
    .local v4, "resources":Landroid/content/res/Resources;
    if-lez v3, :cond_0

    .line 1092
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    const v7, 0xc08049f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1094
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1095
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    const v7, 0xc0804e2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1097
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1105
    :goto_0
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1106
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1108
    .local v1, "inflate":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1110
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 1111
    const v6, 0xc090450

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1113
    .local v5, "textview":Landroid/widget/TextView;
    aget-object v6, p1, v0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1099
    .end local v0    # "i":I
    .end local v1    # "inflate":Landroid/view/LayoutInflater;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "textview":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    const v7, 0xc0804a0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1101
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1102
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1118
    .restart local v0    # "i":I
    .restart local v1    # "inflate":Landroid/view/LayoutInflater;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v6, 0x7

    if-le v3, v6, :cond_3

    .line 1119
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    mul-int/lit8 v7, v7, 0x7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 1124
    :goto_2
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1125
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/PopupWindow;->update(II)V

    .line 1127
    :cond_2
    return-void

    .line 1122
    :cond_3
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    goto :goto_2
.end method

.method public setPopText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "character"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 733
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 734
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/PopupWindow;->update(II)V

    .line 739
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    const/16 v0, 0x41

    .line 741
    .local v0, "charA":C
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 742
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    const/4 v3, 0x1

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 745
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v2, v3

    .line 746
    .local v2, "keysCount":I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    add-int/lit8 v4, v2, -0x1

    if-le v3, v4, :cond_3

    .line 758
    :cond_1
    :goto_1
    return-void

    .line 736
    .end local v0    # "charA":C
    .end local v2    # "keysCount":I
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 749
    .restart local v0    # "charA":C
    .restart local v2    # "keysCount":I
    :cond_3
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-eq v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v3, :cond_5

    .line 750
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 751
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 753
    :cond_4
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 754
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 755
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    .line 757
    .end local v1    # "i":I
    :cond_5
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    goto :goto_1
.end method

.method public setPopupTextView(Ljava/lang/String;)V
    .locals 8
    .param p1, "character"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 699
    const-string v4, "persist.sys.oppo.region"

    const-string v5, "CN"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, "region":Ljava/lang/String;
    const-string v4, "CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 701
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->setPopupTextViewExp(Ljava/lang/String;)V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 712
    :goto_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    const/16 v0, 0x41

    .line 714
    .local v0, "charA":C
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 715
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 716
    const/4 v4, 0x1

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 718
    :cond_2
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v2, v4

    .line 719
    .local v2, "keysCount":I
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    add-int/lit8 v5, v2, -0x1

    if-gt v4, v5, :cond_0

    .line 722
    iget-boolean v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v4, :cond_0

    .line 723
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 724
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 709
    .end local v0    # "charA":C
    .end local v1    # "i":I
    .end local v2    # "keysCount":I
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v4, p0, v7, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 726
    .restart local v0    # "charA":C
    .restart local v1    # "i":I
    .restart local v2    # "keysCount":I
    :cond_4
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 728
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    goto :goto_0
.end method

.method public setPopupTextViewExp(Ljava/lang/String;)V
    .locals 7
    .param p1, "character"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1310
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1315
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1320
    :goto_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeysExp()V

    .line 1324
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1325
    .local v0, "drawablePos":I
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1326
    .local v1, "keyPos":I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 1328
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1329
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    .line 1330
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->requestLayout()V

    goto :goto_0

    .line 1317
    .end local v0    # "drawablePos":I
    .end local v1    # "keyPos":I
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v2, p0, v6, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method

.method public setPopupWindowSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1190
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    if-eq v0, p2, :cond_1

    .line 1191
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 1192
    iput p2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 1193
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1194
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1195
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1197
    :cond_1
    return-void
.end method

.method public setPopupWindowTextColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    .prologue
    .line 1230
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    if-eq v0, p1, :cond_0

    .line 1231
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 1232
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1233
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1235
    :cond_0
    return-void
.end method

.method public setPopupWindowTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 1217
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    if-eq v0, p1, :cond_0

    .line 1218
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    .line 1219
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1220
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1222
    :cond_0
    return-void
.end method

.method public setPopupWindowTopMinCoordinate(I)V
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 1206
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-eq v0, p1, :cond_0

    .line 1207
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 1209
    :cond_0
    return-void
.end method

.method public setSmartShowMode([Ljava/lang/Object;[I)V
    .locals 17
    .param p1, "sections"    # [Ljava/lang/Object;
    .param p2, "counts"    # [I

    .prologue
    .line 1431
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v14, 0x0

    aget-object v14, p1, v14

    check-cast v14, Ljava/lang/String;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1432
    :cond_0
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, " "

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1498
    :goto_0
    return-void

    .line 1438
    :cond_1
    const/4 v12, 0x0

    .local v12, "start":I
    const/4 v9, 0x0

    .line 1439
    .local v9, "secStart":I
    const/4 v14, 0x0

    aget v14, p2, v14

    const/high16 v15, -0x80000000

    if-ne v14, v15, :cond_2

    .line 1440
    const/4 v9, 0x1

    .line 1443
    :cond_2
    move-object/from16 v0, p1

    array-length v8, v0

    .line 1444
    .local v8, "secLength":I
    move-object/from16 v0, p2

    array-length v2, v0

    .line 1445
    .local v2, "cntLength":I
    const/16 v14, 0x1b

    if-le v8, v14, :cond_7

    .line 1447
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 1449
    const/16 v14, 0x17

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 1450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "*"

    aput-object v16, v14, v15

    .line 1451
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v14, p1, v9

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v16

    .line 1452
    add-int/lit8 v12, v12, 0x2

    .line 1453
    add-int/lit8 v9, v9, 0x1

    .line 1455
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/16 v16, 0x16

    add-int/lit8 v14, v8, -0x1

    aget-object v14, p1, v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v16

    .line 1456
    add-int/lit8 v2, v2, -0x1

    .line 1458
    invoke-virtual/range {p2 .. p2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1461
    .local v1, "cloneCnt":[I
    const/16 v5, 0x14

    .line 1462
    .local v5, "length":I
    :goto_1
    if-lez v5, :cond_5

    .line 1463
    const/4 v7, 0x0

    .local v7, "pos":I
    const/4 v6, 0x0

    .line 1464
    .local v6, "max":I
    move v3, v9

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 1465
    aget v14, v1, v3

    if-le v14, v6, :cond_3

    .line 1466
    aget v6, v1, v3

    .line 1467
    move v7, v3

    .line 1464
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1470
    :cond_4
    const/4 v14, 0x0

    aput v14, v1, v7

    .line 1471
    add-int/lit8 v5, v5, -0x1

    .line 1472
    goto :goto_1

    .line 1474
    .end local v3    # "i":I
    .end local v6    # "max":I
    .end local v7    # "pos":I
    :cond_5
    move v4, v9

    .local v4, "j":I
    move v13, v12

    .end local v12    # "start":I
    .local v13, "start":I
    :goto_3
    if-ge v4, v2, :cond_6

    .line 1475
    aget v14, v1, v4

    if-nez v14, :cond_9

    .line 1476
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "start":I
    .restart local v12    # "start":I
    aget-object v14, p1, v4

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v13

    .line 1474
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v13, v12

    .end local v12    # "start":I
    .restart local v13    # "start":I
    goto :goto_3

    :cond_6
    move v12, v13

    .line 1496
    .end local v1    # "cloneCnt":[I
    .end local v4    # "j":I
    .end local v5    # "length":I
    .end local v13    # "start":I
    .restart local v12    # "start":I
    :goto_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    .line 1497
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    goto/16 :goto_0

    .line 1482
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 1484
    add-int/lit8 v11, v8, 0x1

    .line 1485
    .local v11, "size":I
    sub-int/2addr v11, v9

    .line 1487
    new-array v14, v11, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 1488
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "*"

    aput-object v16, v14, v15

    .line 1489
    add-int/lit8 v12, v12, 0x1

    move v10, v9

    .end local v9    # "secStart":I
    .local v10, "secStart":I
    move v13, v12

    .line 1491
    .end local v12    # "start":I
    .restart local v13    # "start":I
    :goto_6
    if-ge v10, v8, :cond_8

    .line 1492
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "start":I
    .restart local v12    # "start":I
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "secStart":I
    .restart local v9    # "secStart":I
    aget-object v14, p1, v10

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v13

    move v10, v9

    .end local v9    # "secStart":I
    .restart local v10    # "secStart":I
    move v13, v12

    .end local v12    # "start":I
    .restart local v13    # "start":I
    goto :goto_6

    :cond_8
    move v9, v10

    .end local v10    # "secStart":I
    .restart local v9    # "secStart":I
    move v12, v13

    .end local v13    # "start":I
    .restart local v12    # "start":I
    goto :goto_5

    .end local v11    # "size":I
    .end local v12    # "start":I
    .restart local v1    # "cloneCnt":[I
    .restart local v4    # "j":I
    .restart local v5    # "length":I
    .restart local v13    # "start":I
    :cond_9
    move v12, v13

    .end local v13    # "start":I
    .restart local v12    # "start":I
    goto :goto_4
.end method

.method public setTouchBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1146
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 1150
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, "region":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1157
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1158
    return-void

    .line 1154
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public setTouchSearchActionListener(Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    .line 773
    return-void
.end method

.method public setUnionEnable(Z)V
    .locals 3
    .param p1, "unionEnable"    # Z

    .prologue
    .line 1166
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    if-eq v1, p1, :cond_0

    .line 1167
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 1168
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 1172
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, "region":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1174
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1179
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->invalidate()V

    .line 1181
    .end local v0    # "region":Ljava/lang/String;
    :cond_0
    return-void

    .line 1176
    .restart local v0    # "region":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public startPostDelayed()V
    .locals 0

    .prologue
    .line 764
    return-void
.end method
