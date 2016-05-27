.class public Lcom/oppo/widget/OppoMultiRemoveAdapter;
.super Lcom/oppo/widget/OppoMultiChoiceAdapter;
.source "OppoMultiRemoveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoMultiRemoveAdapter$OnHandleListener;,
        Lcom/oppo/widget/OppoMultiRemoveAdapter$Removable;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoRemoveAdapter"

.field private static final TAG_REMOVE:Ljava/lang/String; = "Remove"


# instance fields
.field private mItemCount:I

.field private mPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveDependency:I


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;
    .param p2, "acitivity"    # Landroid/app/Activity;
    .param p4, "bottomMenu"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/BaseAdapter;",
            "Landroid/app/Activity;",
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<Landroid/widget/ListAdapter;>;"
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoMultiChoiceAdapter;-><init>(Landroid/widget/BaseAdapter;Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;)V

    .line 59
    iput v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mItemCount:I

    .line 60
    iput v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mRemoveDependency:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mPositions:Ljava/util/List;

    .line 113
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mDecoratedAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/oppo/widget/OppoMultiRemoveAdapter$Removable;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your adapter must implement interface com.oppo.widget.OppoMultiRemoveAdapter.Removable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoMultiRemoveAdapter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiRemoveAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->addRemoveAnimators(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoMultiRemoveAdapter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiRemoveAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->setRemovedItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoMultiRemoveAdapter;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiRemoveAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->changeHeight(Landroid/view/View;I)V

    return-void
.end method

.method private addRemoveAnimators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->makeRemoveAnimators(Ljava/util/List;)V

    .line 252
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mRemoveAnimators:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->addAnimatorHelpers(Ljava/util/List;)V

    .line 253
    return-void
.end method

.method private changeHeight(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 306
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 307
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 310
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 311
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    return-void
.end method

.method private createHeightAnimator(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 274
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->getTargetHeight(Landroid/view/View;)I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 275
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/oppo/widget/OppoMultiRemoveAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter$3;-><init>(Lcom/oppo/widget/OppoMultiRemoveAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    new-instance v1, Lcom/oppo/widget/OppoMultiRemoveAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter$4;-><init>(Lcom/oppo/widget/OppoMultiRemoveAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    return-object v0
.end method

.method private createLeftAnimator(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 5
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 296
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 297
    const-string v1, "translationX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 299
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mTranslationXListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 300
    return-object v0
.end method

.method private hasPositions(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 214
    :cond_0
    return v0
.end method

.method private makeItemRemove(Landroid/view/View;)Lcom/oppo/util/OppoAnimatorHelper;
    .locals 6
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->createHeightAnimator(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->newInstance(Landroid/animation/ValueAnimator;Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;)Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->createLeftAnimator(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->newInstance(Landroid/animation/ValueAnimator;Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;)Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const/4 v2, 0x0

    const/4 v3, -0x1

    iget v4, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mRemoveDependency:I

    const-string v0, "Remove"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->makeTag(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->makeAnimatorHelper(Ljava/util/List;ZIILjava/lang/String;)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    return-object v0
.end method

.method private makeRemoveAnimators(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v4, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 227
    .local v3, "pos":I
    const/4 v4, 0x1

    const-string v5, "OppoRemoveAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeRemoveAnimators "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : child="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, v3, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->needAnimator(ILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->makeItemRemove(Landroid/view/View;)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v1

    .line 230
    .local v1, "helper":Lcom/oppo/util/OppoAnimatorHelper;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->getPositionForView(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oppo/util/OppoAnimatorHelper;->appendTag(Ljava/lang/String;)V

    .line 231
    iget-object v4, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mRemoveAnimators:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v1    # "helper":Lcom/oppo/util/OppoAnimatorHelper;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "pos":I
    :cond_1
    return-void
.end method

.method private needAnimator(ILjava/util/List;)Z
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p2}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->hasPositions(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPositions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mPositions:Ljava/util/List;

    .line 220
    return-void
.end method

.method private setRemovedItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->setPositions(Ljava/util/List;)V

    .line 247
    return-void
.end method


# virtual methods
.method public finishActionModeAndRemove(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->finishActionModeAndRemove(Ljava/util/List;)V

    .line 152
    return-void
.end method

.method public finishActionModeAndRemove(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->setRemovedItems(Ljava/util/List;)V

    .line 162
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mDecoratedAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/oppo/widget/OppoMultiRemoveAdapter$Removable;

    new-instance v1, Lcom/oppo/widget/OppoMultiRemoveAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter$1;-><init>(Lcom/oppo/widget/OppoMultiRemoveAdapter;Ljava/util/List;)V

    invoke-interface {v0, p1, v1}, Lcom/oppo/widget/OppoMultiRemoveAdapter$Removable;->onRemoveStart(Ljava/util/List;Lcom/oppo/widget/OppoMultiRemoveAdapter$OnHandleListener;)V

    .line 171
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mPositions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 126
    invoke-super {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mItemCount:I

    .line 128
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mItemCount:I

    return v0
.end method

.method hasPositions()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mPositions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->hasPositions(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method onFinishActionMode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->setPositions(Ljava/util/List;)V

    .line 180
    return-void
.end method

.method onHideAnimatorsEnd()V
    .locals 3

    .prologue
    .line 185
    invoke-super {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->onHideAnimatorsEnd()V

    .line 186
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->hasPositions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mDecoratedAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/oppo/widget/OppoMultiRemoveAdapter$Removable;

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mPositions:Ljava/util/List;

    new-instance v2, Lcom/oppo/widget/OppoMultiRemoveAdapter$2;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoMultiRemoveAdapter$2;-><init>(Lcom/oppo/widget/OppoMultiRemoveAdapter;)V

    invoke-interface {v0, v1, v2}, Lcom/oppo/widget/OppoMultiRemoveAdapter$Removable;->onRemoveEnd(Ljava/util/List;Lcom/oppo/widget/OppoMultiRemoveAdapter$OnHandleListener;)V

    .line 198
    :cond_0
    return-void
.end method

.method public setRemoveDependency(I)V
    .locals 0
    .param p1, "dependency"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter;->mRemoveDependency:I

    .line 142
    return-void
.end method
