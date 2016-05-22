.class final Lcom/oneplus/widget/FilmstripView$ItemInfo;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemInfo"
.end annotation


# instance fields
.field public container:Landroid/view/ViewGroup;

.field public left:I

.field public next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

.field public position:I

.field public previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

.field public targetWidth:I

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/widget/FilmstripView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/widget/FilmstripView$1;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$ItemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 275
    iput-object p0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object p0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 279
    :cond_1
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 280
    return-void
.end method

.method public addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 287
    iput-object p0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object p0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 291
    :cond_1
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 292
    return-void
.end method

.method public layout(IIZZ)V
    .locals 5
    .param p1, "filmstripWidth"    # I
    .param p2, "filmstripHeight"    # I
    .param p3, "measure"    # Z
    .param p4, "sync"    # Z

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 296
    if-nez p4, :cond_0

    .line 298
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 299
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 301
    iget v1, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 302
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 303
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 310
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-void

    .line 307
    :cond_0
    if-eqz p3, :cond_1

    .line 308
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    invoke-virtual {v1, v4, v4, v2, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0
.end method

.method public moveBy(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 314
    iget v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    .line 315
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 316
    return-void
.end method

.method public moveTo(I)V
    .locals 2
    .param p1, "left"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    .line 321
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 322
    return-void
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 330
    :cond_1
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 331
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 332
    return-void
.end method
