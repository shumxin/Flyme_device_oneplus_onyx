.class public Lcom/oppo/widget/OppoPagerTabStrip;
.super Landroid/widget/LinearLayout;
.source "OppoPagerTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "jinpeng/OppoPagerTitle"


# instance fields
.field private mBottomFocusLine:Landroid/graphics/drawable/Drawable;

.field private mBottomLine:Landroid/graphics/drawable/Drawable;

.field private mClickChangeTab:Z

.field private mContentWidth:I

.field private mCurrentTab:I

.field private mFocusLineWidth:I

.field private mOnTabChangeListener:Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

.field private mPagerText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollOffset:I

.field private mSelectedTab:I

.field private mTabCount:I

.field private mTextSpace:I

.field private mTextWidth:I

.field private mTitleColor:Landroid/content/res/ColorStateList;

.field private mTitleColorHighlight:I

.field private mTitleSize:I

.field private mTitles:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoPagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    const v0, 0xc010425

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoPagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/16 v4, 0xf

    iput v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    .line 74
    iput v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 75
    iput v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    .line 80
    iput v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    .line 82
    iput-boolean v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mClickChangeTab:Z

    .line 117
    sget-object v4, Loppo/R$styleable;->OppoPagerTabStrip:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 120
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 121
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 122
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 123
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 121
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 128
    :pswitch_2
    iget v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    goto :goto_1

    .line 131
    :pswitch_3
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 134
    :pswitch_4
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    goto :goto_1

    .line 145
    :pswitch_5
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 148
    :pswitch_6
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 151
    :pswitch_7
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    goto :goto_1

    .line 159
    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoPagerTabStrip;->setWillNotDraw(Z)V

    .line 160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    .line 162
    iget-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPagerTabStrip;->setTitles([Ljava/lang/CharSequence;)V

    .line 163
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoPagerTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoPagerTabStrip;

    .prologue
    .line 58
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoPagerTabStrip;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoPagerTabStrip;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoPagerTabStrip;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoPagerTabStrip;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mClickChangeTab:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoPagerTabStrip;)Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoPagerTabStrip;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mOnTabChangeListener:Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

    return-object v0
.end method

.method private addTab(Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p1, "tab"    # Ljava/lang/CharSequence;
    .param p2, "selected"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 346
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, "tabView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    if-eqz p2, :cond_1

    .line 349
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    :cond_0
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 356
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 357
    new-instance v1, Lcom/oppo/widget/OppoPagerTabStrip$1;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoPagerTabStrip$1;-><init>(Lcom/oppo/widget/OppoPagerTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 373
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoPagerTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 375
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 376
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoPagerTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 379
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoPagerTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private addTabs([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "tab"    # [Ljava/lang/CharSequence;

    .prologue
    .line 328
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoPagerTabStrip;->addTabs([Ljava/lang/CharSequence;I)V

    .line 329
    return-void
.end method

.method private addTabs([Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "tab"    # [Ljava/lang/CharSequence;
    .param p2, "seletedId"    # I

    .prologue
    const/4 v3, 0x0

    .line 332
    iput p2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 333
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 334
    :cond_0
    iput v3, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 336
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 337
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    if-ne v0, v1, :cond_2

    .line 338
    aget-object v1, p1, v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoPagerTabStrip;->addTab(Ljava/lang/CharSequence;Z)V

    .line 336
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_2
    aget-object v1, p1, v0

    invoke-direct {p0, v1, v3}, Lcom/oppo/widget/OppoPagerTabStrip;->addTab(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 343
    :cond_3
    return-void
.end method

.method private updateTextColors()V
    .locals 3

    .prologue
    .line 279
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-lez v1, :cond_2

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-ge v0, v1, :cond_2

    .line 281
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    if-ne v0, v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 290
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    .line 444
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 449
    const/4 v2, 0x0

    .line 450
    .local v2, "lineHeight":I
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-eq v6, v9, :cond_0

    .line 451
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 452
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getPaddingLeft()I

    move-result v1

    .line 453
    .local v1, "left":I
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mContentWidth:I

    add-int v3, v1, v6

    .line 454
    .local v3, "right":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getHeight()I

    move-result v0

    .line 455
    .local v0, "bottom":I
    sub-int v4, v0, v2

    .line 458
    .local v4, "top":I
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 459
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 462
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_0
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 463
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mContentWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    div-int v5, v6, v7

    .line 464
    .local v5, "unit":I
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    if-le v6, v5, :cond_1

    .line 465
    iput v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    .line 466
    iput v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    .line 468
    :cond_1
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-ne v6, v9, :cond_4

    .line 469
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mContentWidth:I

    iget v8, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 477
    .restart local v1    # "left":I
    :goto_0
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    add-int v3, v1, v6

    .line 478
    .restart local v3    # "right":I
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    if-nez v6, :cond_2

    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-eq v6, v9, :cond_2

    .line 479
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getPaddingRight()I

    move-result v7

    sub-int v3, v6, v7

    .line 480
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    sub-int v1, v3, v6

    .line 482
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getHeight()I

    move-result v6

    sub-int v0, v6, v2

    .line 483
    .restart local v0    # "bottom":I
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v4, v0, v6

    .line 484
    .restart local v4    # "top":I
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 485
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 490
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    .end local v5    # "unit":I
    :cond_3
    return-void

    .line 471
    .restart local v5    # "unit":I
    :cond_4
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mContentWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextSpace:I

    .line 472
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextSpace:I

    iget v8, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    add-int v1, v6, v7

    .restart local v1    # "left":I
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mContentWidth:I

    .line 421
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    const/4 v7, 0x4

    if-ge v6, v7, :cond_2

    .line 422
    iget v3, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPaddingTop:I

    .line 424
    .local v3, "childTop":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-ge v5, v6, :cond_3

    .line 425
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 427
    .local v4, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 428
    .local v1, "childHeight":I
    if-nez v5, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getPaddingLeft()I

    move-result v2

    .line 435
    .local v2, "childLeft":I
    :goto_1
    add-int v6, v2, v4

    add-int v7, v3, v1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 424
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 430
    .end local v2    # "childLeft":I
    :cond_0
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v2, v6, v4

    .restart local v2    # "childLeft":I
    goto :goto_1

    .line 433
    .end local v2    # "childLeft":I
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    div-int/lit8 v2, v6, 0x2

    .restart local v2    # "childLeft":I
    goto :goto_1

    .line 438
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v4    # "childWidth":I
    .end local v5    # "i":I
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 440
    :cond_3
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    .line 386
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->removeAllViews()V

    .line 387
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    .line 389
    return-void
.end method

.method public setBottomLine(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    .line 302
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->invalidate()V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 396
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-lt p1, v1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    if-ne v1, p1, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    if-eqz v1, :cond_0

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 404
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 405
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    .line 406
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 407
    .restart local v0    # "tv":Landroid/widget/TextView;
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mClickChangeTab:Z

    if-nez v1, :cond_3

    .line 409
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 410
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->invalidate()V

    .line 412
    :cond_3
    iget-boolean v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mClickChangeTab:Z

    if-eqz v1, :cond_4

    .line 413
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mClickChangeTab:Z

    .line 415
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mOnTabChangeListener:Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-interface {v1, v2}, Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;->onTabChanged(I)V

    goto :goto_0
.end method

.method public setFocusLine(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    .line 315
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->invalidate()V

    goto :goto_0
.end method

.method public setFocusLineWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 324
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    .line 325
    return-void
.end method

.method public setHighlightTitleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    .line 275
    invoke-direct {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->updateTextColors()V

    .line 276
    return-void
.end method

.method public setOnTabChangedListener(Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mOnTabChangeListener:Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

    .line 505
    return-void
.end method

.method public setSelectedTab(I)V
    .locals 3
    .param p1, "selectedTab"    # I

    .prologue
    .line 173
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-lt p1, v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    if-eq v1, p1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 181
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 184
    :cond_2
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    .line 185
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 186
    .restart local v0    # "tv":Landroid/widget/TextView;
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 188
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mOnTabChangeListener:Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

    invoke-interface {v1, p1}, Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;->onTabChanged(I)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 246
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    .line 247
    invoke-direct {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->updateTextColors()V

    .line 248
    return-void
.end method

.method public setTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    .line 263
    invoke-direct {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->updateTextColors()V

    .line 264
    return-void
.end method

.method public setTitleSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 227
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    if-ne v1, p1, :cond_1

    .line 236
    :cond_0
    return-void

    .line 230
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    .line 231
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-lez v1, :cond_0

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTitles([Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "titles"    # [Ljava/lang/CharSequence;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->removeAllTabs()V

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    .line 203
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    array-length v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    .line 205
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05043d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    .line 208
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    .line 214
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoPagerTabStrip;->addTabs([Ljava/lang/CharSequence;)V

    .line 216
    :cond_3
    return-void

    .line 209
    :cond_4
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    .line 212
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    goto :goto_0
.end method

.method public updatePositions(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "pagerWidth"    # I

    .prologue
    .line 495
    if-gtz p3, :cond_0

    .line 501
    :goto_0
    return-void

    .line 498
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextSpace:I

    mul-int/2addr v0, p2

    div-int/2addr v0, p3

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    .line 499
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 500
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->invalidate()V

    goto :goto_0
.end method
