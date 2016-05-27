.class public Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "OppoOptionMenuBarGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;,
        Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DISABLE_ALPHA:F = 0.4f

.field private static final MAX_NUM_ITEM_PER_ROW:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GalleryAdapter"


# instance fields
.field private final LAYOUT_PARAMS:Landroid/widget/Gallery$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mElementItemHeight:I

.field private mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

.field private mGalleryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsAnimationUpAgain:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->LAYOUT_PARAMS:Landroid/widget/Gallery$LayoutParams;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    .line 53
    iput v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconHeight:I

    .line 54
    iput v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconWidth:I

    .line 57
    iput v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mElementItemHeight:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIsAnimationUpAgain:Z

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 67
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050429

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconHeight:I

    .line 70
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05042a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconWidth:I

    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05041f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mElementItemHeight:I

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;)Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    return-object v0
.end method

.method private setItemViewOnClick(Landroid/widget/TextView;I)V
    .locals 13
    .param p1, "elementItem"    # Landroid/widget/TextView;
    .param p2, "position"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 165
    iget-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt p2, v9, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    if-eqz p1, :cond_0

    .line 177
    iget-object v9, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoMenuItem;

    .line 179
    .local v4, "galleryItem":Lcom/oppo/widget/OppoMenuItem;
    const/4 v6, 0x0

    .line 180
    .local v6, "itemIcon":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 181
    .local v7, "itemTitle":Ljava/lang/String;
    invoke-interface {v4}, Lcom/oppo/widget/OppoMenuItem;->isEnabled()Z

    move-result v3

    .line 182
    .local v3, "enabled":Z
    invoke-interface {v4}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v5

    .line 184
    .local v5, "isVisible":Z
    if-eqz v5, :cond_5

    move v8, v10

    .line 187
    .local v8, "visibility":I
    :goto_1
    :try_start_0
    invoke-interface {v4}, Lcom/oppo/widget/OppoMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 189
    invoke-interface {v4}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 194
    :goto_2
    if-eqz v7, :cond_2

    .line 195
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_2
    if-eqz v6, :cond_3

    .line 199
    iget v9, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconWidth:I

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIconHeight:I

    invoke-virtual {v6, v10, v10, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    invoke-virtual {p1, v12, v6, v12, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_3
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 208
    const/4 v9, 0x4

    if-ge p2, v9, :cond_4

    iget-boolean v9, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIsAnimationUpAgain:Z

    if-eqz v9, :cond_4

    .line 209
    iget v9, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mElementItemHeight:I

    int-to-float v9, v9

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 212
    :cond_4
    if-eqz v3, :cond_6

    .line 213
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 218
    :goto_3
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;

    invoke-direct {v1, p0, v4, p2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;Lcom/oppo/widget/OppoMenuItem;I)V

    .line 228
    .local v1, "clickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 184
    .end local v1    # "clickListener":Landroid/view/View$OnClickListener;
    .end local v8    # "visibility":I
    :cond_5
    const/16 v8, 0x8

    goto :goto_1

    .line 190
    .restart local v8    # "visibility":I
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 215
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "count":I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v1, v2, 0x4

    .line 92
    .local v1, "remainder":I
    if-eqz v1, :cond_1

    .line 93
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v2, 0x1

    .line 100
    .end local v1    # "remainder":I
    :cond_0
    :goto_0
    return v0

    .line 95
    .restart local v1    # "remainder":I
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 113
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x4

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "elementItem":Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 129
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0xc090439

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 131
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->LAYOUT_PARAMS:Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_0
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 139
    .local v3, "item_array":[I
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;

    .line 140
    .local v1, "holder":Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;
    if-nez v1, :cond_3

    .line 141
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;

    .end local v1    # "holder":Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;
    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;-><init>(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;)V

    .line 143
    .restart local v1    # "holder":Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 144
    aget v5, v3, v2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    .line 145
    mul-int/lit8 v5, p1, 0x4

    add-int v4, v5, v2

    .line 147
    .local v4, "item_pos":I
    invoke-direct {p0, v0, v4}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setItemViewOnClick(Landroid/widget/TextView;I)V

    .line 149
    iget-object v5, v1, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;->textViews:[Landroid/widget/TextView;

    aput-object v0, v5, v2

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v4    # "item_pos":I
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    :cond_2
    return-object p2

    .line 154
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v8, :cond_2

    .line 155
    iget-object v5, v1, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;->textViews:[Landroid/widget/TextView;

    aget-object v0, v5, v2

    .line 156
    mul-int/lit8 v5, p1, 0x4

    add-int v4, v5, v2

    .line 157
    .restart local v4    # "item_pos":I
    invoke-direct {p0, v0, v4}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setItemViewOnClick(Landroid/widget/TextView;I)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :array_0
    .array-data 4
        0xc020462
        0xc020463
        0xc020464
        0xc020465
    .end array-data
.end method

.method public setAnimationUpAgain(Z)V
    .locals 0
    .param p1, "again"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mIsAnimationUpAgain:Z

    .line 235
    return-void
.end method

.method public setGalleryItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItems:Ljava/util/List;

    .line 84
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public setOnGalleryItemClickListener(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    .line 80
    return-void
.end method
