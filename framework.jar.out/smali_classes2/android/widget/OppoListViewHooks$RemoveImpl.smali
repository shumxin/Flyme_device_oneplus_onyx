.class public Landroid/widget/OppoListViewHooks$RemoveImpl;
.super Ljava/lang/Object;
.source "OppoListViewHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoListViewHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoveImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;,
        Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;
    }
.end annotation


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstVisible:I

.field private mLastVisible:I

.field private mRemoveCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovedAboves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovedBelows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/OppoListViewHooks;


# direct methods
.method public constructor <init>(Landroid/widget/OppoListViewHooks;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iput-object p1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemoveCache:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedAboves:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedBelows:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedItems:Ljava/util/List;

    .line 64
    iput v1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mFirstVisible:I

    .line 65
    iput v1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mLastVisible:I

    .line 66
    new-instance v0, Landroid/widget/OppoListViewHooks$RemoveImpl$1;

    invoke-direct {v0, p0}, Landroid/widget/OppoListViewHooks$RemoveImpl$1;-><init>(Landroid/widget/OppoListViewHooks$RemoveImpl;)V

    iput-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mComparator:Ljava/util/Comparator;

    .line 96
    return-void
.end method

.method private addRemoveItem(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # I

    .prologue
    .line 304
    const/4 v0, 0x1

    const-string v1, "OppoListViewHooks.RemoveImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRemoveItem @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemoveCache:Ljava/util/List;

    new-instance v1, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;-><init>(Landroid/widget/OppoListViewHooks$RemoveImpl;Landroid/view/View;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 9

    .prologue
    .line 399
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getChildCount()I
    invoke-static {v5}, Landroid/widget/OppoListViewHooks;->access$700(Landroid/widget/OppoListViewHooks;)I

    move-result v1

    .line 401
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 405
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->isStackFromBottom()Z
    invoke-static {v5}, Landroid/widget/OppoListViewHooks;->access$500(Landroid/widget/OppoListViewHooks;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 409
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    const/4 v6, 0x0

    # invokes: Landroid/widget/OppoListViewHooks;->getChildAt(I)Landroid/view/View;
    invoke-static {v5, v6}, Landroid/widget/OppoListViewHooks;->access$1100(Landroid/widget/OppoListViewHooks;I)Landroid/view/View;

    move-result-object v0

    .line 410
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getListPaddingTop()I
    invoke-static {v6}, Landroid/widget/OppoListViewHooks;->access$1200(Landroid/widget/OppoListViewHooks;)I

    move-result v6

    sub-int v2, v5, v6

    .line 411
    .local v2, "delta":I
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getFirstForCache()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getBelowOffset()I

    move-result v6

    add-int v3, v5, v6

    .line 412
    .local v3, "removeFirst":I
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v5}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 416
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getDividerHeight()I
    invoke-static {v5}, Landroid/widget/OppoListViewHooks;->access$600(Landroid/widget/OppoListViewHooks;)I

    move-result v5

    sub-int/2addr v2, v5

    .line 418
    :cond_0
    if-gez v2, :cond_1

    .line 421
    const/4 v2, 0x0

    .line 442
    .end local v3    # "removeFirst":I
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 443
    const/4 v5, 0x1

    const-string v6, "OppoListViewHooks.RemoveImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustViewsUpOrDown : delta="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    neg-int v6, v2

    # invokes: Landroid/widget/OppoListViewHooks;->offsetChildrenTopAndBottom(I)V
    invoke-static {v5, v6}, Landroid/widget/OppoListViewHooks;->access$1500(Landroid/widget/OppoListViewHooks;I)V

    .line 447
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 426
    :cond_3
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    add-int/lit8 v6, v1, -0x1

    # invokes: Landroid/widget/OppoListViewHooks;->getChildAt(I)Landroid/view/View;
    invoke-static {v5, v6}, Landroid/widget/OppoListViewHooks;->access$1100(Landroid/widget/OppoListViewHooks;I)Landroid/view/View;

    move-result-object v0

    .line 427
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget-object v6, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getHeight()I
    invoke-static {v6}, Landroid/widget/OppoListViewHooks;->access$1300(Landroid/widget/OppoListViewHooks;)I

    move-result v6

    iget-object v7, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getListPaddingBottom()I
    invoke-static {v7}, Landroid/widget/OppoListViewHooks;->access$1400(Landroid/widget/OppoListViewHooks;)I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v2, v5, v6

    .line 429
    .restart local v2    # "delta":I
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getLastForCache()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getAboveOffset()I

    move-result v6

    sub-int v4, v5, v6

    .line 430
    .local v4, "removeLast":I
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v5}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v5

    add-int/2addr v5, v1

    if-gt v5, v4, :cond_4

    .line 434
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getDividerHeight()I
    invoke-static {v5}, Landroid/widget/OppoListViewHooks;->access$600(Landroid/widget/OppoListViewHooks;)I

    move-result v5

    add-int/2addr v2, v5

    .line 437
    :cond_4
    if-lez v2, :cond_1

    .line 438
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clearRemoveCache()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemoveCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    return-void
.end method

.method private correctTooHigh(I)V
    .locals 14
    .param p1, "childCount"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 453
    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v9}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v9

    add-int/2addr v9, p1

    add-int/lit8 v6, v9, -0x1

    .line 454
    .local v6, "lastPosition":I
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getLastForCache()I

    move-result v9

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getAboveOffset()I

    move-result v12

    sub-int v8, v9, v12

    .line 455
    .local v8, "removeLast":I
    const-string v9, "OppoListViewHooks.RemoveImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "correctTooHigh : lastPosition="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", removeLast="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", childCount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v9, v12}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 457
    if-ne v6, v8, :cond_3

    if-lez p1, :cond_3

    .line 460
    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    add-int/lit8 v12, p1, -0x1

    # invokes: Landroid/widget/OppoListViewHooks;->getChildAt(I)Landroid/view/View;
    invoke-static {v9, v12}, Landroid/widget/OppoListViewHooks;->access$1100(Landroid/widget/OppoListViewHooks;I)Landroid/view/View;

    move-result-object v5

    .line 463
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 466
    .local v4, "lastBottom":I
    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getBottom()I
    invoke-static {v9}, Landroid/widget/OppoListViewHooks;->access$1600(Landroid/widget/OppoListViewHooks;)I

    move-result v9

    iget-object v12, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getTop()I
    invoke-static {v12}, Landroid/widget/OppoListViewHooks;->access$1700(Landroid/widget/OppoListViewHooks;)I

    move-result v12

    sub-int/2addr v9, v12

    iget-object v12, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getListPaddingBottom()I
    invoke-static {v12}, Landroid/widget/OppoListViewHooks;->access$1400(Landroid/widget/OppoListViewHooks;)I

    move-result v12

    sub-int v1, v9, v12

    .line 471
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 472
    .local v0, "bottomOffset":I
    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getChildAt(I)Landroid/view/View;
    invoke-static {v9, v11}, Landroid/widget/OppoListViewHooks;->access$1100(Landroid/widget/OppoListViewHooks;I)Landroid/view/View;

    move-result-object v2

    .line 473
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 479
    .local v3, "firstTop":I
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getFirstForCache()I

    move-result v9

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getBelowOffset()I

    move-result v12

    add-int v7, v9, v12

    .line 480
    .local v7, "removeFirst":I
    const-string v12, "OppoListViewHooks.RemoveImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "correctTooHigh : cond1="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-lez v0, :cond_4

    move v9, v10

    :goto_0
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, ", cond21="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v9}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v9

    if-le v9, v7, :cond_5

    move v9, v10

    :goto_1
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, ", cond22="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v13, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getListPaddingTop()I
    invoke-static {v13}, Landroid/widget/OppoListViewHooks;->access$1200(Landroid/widget/OppoListViewHooks;)I

    move-result v13

    if-ge v3, v13, :cond_0

    move v11, v10

    :cond_0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v12, v9}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 483
    if-lez v0, :cond_3

    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v9}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v9

    if-gt v9, v7, :cond_1

    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getListPaddingTop()I
    invoke-static {v9}, Landroid/widget/OppoListViewHooks;->access$1200(Landroid/widget/OppoListViewHooks;)I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 485
    :cond_1
    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v9}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v9

    if-ne v9, v7, :cond_2

    .line 487
    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getListPaddingTop()I
    invoke-static {v9}, Landroid/widget/OppoListViewHooks;->access$1200(Landroid/widget/OppoListViewHooks;)I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 490
    :cond_2
    const-string v9, "OppoListViewHooks.RemoveImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "correctTooHigh : bottomOffset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v9, v11}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->offsetChildrenTopAndBottom(I)V
    invoke-static {v9, v0}, Landroid/widget/OppoListViewHooks;->access$1500(Landroid/widget/OppoListViewHooks;I)V

    .line 493
    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v9}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v9

    if-le v9, v7, :cond_3

    .line 497
    const-string v9, "OppoListViewHooks.RemoveImpl"

    const-string v11, "correctTooHigh : fillUp"

    invoke-static {v10, v9, v11}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v9, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v9}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v9

    invoke-direct {p0, v9}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getPositionForCache(I)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getDividerHeight()I
    invoke-static {v11}, Landroid/widget/OppoListViewHooks;->access$600(Landroid/widget/OppoListViewHooks;)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-direct {p0, v9, v10}, Landroid/widget/OppoListViewHooks$RemoveImpl;->fillUp(II)Landroid/view/View;

    .line 501
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->adjustViewsUpOrDown()V

    .line 506
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v7    # "removeFirst":I
    :cond_3
    return-void

    .restart local v0    # "bottomOffset":I
    .restart local v1    # "end":I
    .restart local v2    # "firstChild":Landroid/view/View;
    .restart local v3    # "firstTop":I
    .restart local v4    # "lastBottom":I
    .restart local v5    # "lastChild":Landroid/view/View;
    .restart local v7    # "removeFirst":I
    :cond_4
    move v9, v11

    .line 480
    goto/16 :goto_0

    :cond_5
    move v9, v11

    goto/16 :goto_1
.end method

.method private correctTooLow(I)V
    .locals 14
    .param p1, "childCount"    # I

    .prologue
    const/4 v13, 0x1

    .line 512
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getFirstForCache()I

    move-result v10

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getBelowOffset()I

    move-result v11

    add-int v6, v10, v11

    .line 513
    .local v6, "removeFirst":I
    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v10}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v10

    if-ne v10, v6, :cond_2

    if-lez p1, :cond_2

    .line 516
    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    const/4 v11, 0x0

    # invokes: Landroid/widget/OppoListViewHooks;->getChildAt(I)Landroid/view/View;
    invoke-static {v10, v11}, Landroid/widget/OppoListViewHooks;->access$1100(Landroid/widget/OppoListViewHooks;I)Landroid/view/View;

    move-result-object v1

    .line 519
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 522
    .local v2, "firstTop":I
    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getListPaddingTop()I
    invoke-static {v10}, Landroid/widget/OppoListViewHooks;->access$1200(Landroid/widget/OppoListViewHooks;)I

    move-result v8

    .line 525
    .local v8, "start":I
    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getBottom()I
    invoke-static {v10}, Landroid/widget/OppoListViewHooks;->access$1600(Landroid/widget/OppoListViewHooks;)I

    move-result v10

    iget-object v11, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getTop()I
    invoke-static {v11}, Landroid/widget/OppoListViewHooks;->access$1700(Landroid/widget/OppoListViewHooks;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getListPaddingBottom()I
    invoke-static {v11}, Landroid/widget/OppoListViewHooks;->access$1400(Landroid/widget/OppoListViewHooks;)I

    move-result v11

    sub-int v0, v10, v11

    .line 530
    .local v0, "end":I
    sub-int v9, v2, v8

    .line 531
    .local v9, "topOffset":I
    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    add-int/lit8 v11, p1, -0x1

    # invokes: Landroid/widget/OppoListViewHooks;->getChildAt(I)Landroid/view/View;
    invoke-static {v10, v11}, Landroid/widget/OppoListViewHooks;->access$1100(Landroid/widget/OppoListViewHooks;I)Landroid/view/View;

    move-result-object v4

    .line 532
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 533
    .local v3, "lastBottom":I
    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v10}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v10

    add-int/2addr v10, p1

    add-int/lit8 v5, v10, -0x1

    .line 539
    .local v5, "lastPosition":I
    if-lez v9, :cond_2

    .line 540
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getLastForCache()I

    move-result v10

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getAboveOffset()I

    move-result v11

    sub-int v7, v10, v11

    .line 541
    .local v7, "removeLast":I
    if-lt v5, v7, :cond_0

    if-le v3, v0, :cond_3

    .line 542
    :cond_0
    if-ne v5, v7, :cond_1

    .line 544
    sub-int v10, v3, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 547
    :cond_1
    const-string v10, "OppoListViewHooks.RemoveImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "correctTooLow : topOffset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v10, v11}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    neg-int v11, v9

    # invokes: Landroid/widget/OppoListViewHooks;->offsetChildrenTopAndBottom(I)V
    invoke-static {v10, v11}, Landroid/widget/OppoListViewHooks;->access$1500(Landroid/widget/OppoListViewHooks;I)V

    .line 549
    if-ge v5, v7, :cond_2

    .line 553
    const-string v10, "OppoListViewHooks.RemoveImpl"

    const-string v11, "correctTooLow : fillDown"

    invoke-static {v13, v10, v11}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-direct {p0, v5}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getPositionForCache(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v11

    iget-object v12, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getDividerHeight()I
    invoke-static {v12}, Landroid/widget/OppoListViewHooks;->access$600(Landroid/widget/OppoListViewHooks;)I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {p0, v10, v11}, Landroid/widget/OppoListViewHooks$RemoveImpl;->fillDown(II)Landroid/view/View;

    .line 557
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->adjustViewsUpOrDown()V

    .line 564
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v7    # "removeLast":I
    .end local v8    # "start":I
    .end local v9    # "topOffset":I
    :cond_2
    :goto_0
    return-void

    .line 559
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstTop":I
    .restart local v3    # "lastBottom":I
    .restart local v4    # "lastChild":Landroid/view/View;
    .restart local v5    # "lastPosition":I
    .restart local v7    # "removeLast":I
    .restart local v8    # "start":I
    .restart local v9    # "topOffset":I
    :cond_3
    if-ne v5, v7, :cond_2

    .line 560
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 8
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    const/4 v7, 0x1

    .line 359
    const-string v4, "OppoListViewHooks.RemoveImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fillDown @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v2, 0x0

    .line 362
    .local v2, "selectedView":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getListBottom()I
    invoke-static {v4}, Landroid/widget/OppoListViewHooks;->access$800(Landroid/widget/OppoListViewHooks;)I

    move-result v0

    .line 364
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge p2, v0, :cond_1

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getCacheSize()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 365
    invoke-direct {p0, v1, p2, v7}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getAndAddView(IIZ)Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;

    move-result-object v3

    .line 366
    .local v3, "view":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;
    invoke-virtual {v3}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->getY()I

    move-result p2

    .line 367
    invoke-virtual {v3}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->getSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    invoke-virtual {v3}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->getView()Landroid/view/View;

    move-result-object v2

    .line 364
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v3    # "view":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;
    :cond_1
    iget-object v4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v5}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v6}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v6

    iget-object v7, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getChildCount()I
    invoke-static {v7}, Landroid/widget/OppoListViewHooks;->access$700(Landroid/widget/OppoListViewHooks;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    # invokes: Landroid/widget/OppoListViewHooks;->setVisibleRangeHint(II)V
    invoke-static {v4, v5, v6}, Landroid/widget/OppoListViewHooks;->access$900(Landroid/widget/OppoListViewHooks;II)V

    .line 374
    return-object v2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    .line 378
    const/4 v5, 0x1

    const-string v6, "OppoListViewHooks.RemoveImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fillUp @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v3, 0x0

    .line 381
    .local v3, "selectedView":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getListTop()I
    invoke-static {v5}, Landroid/widget/OppoListViewHooks;->access$1000(Landroid/widget/OppoListViewHooks;)I

    move-result v0

    .line 383
    .local v0, "end":I
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v5}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v1

    .line 384
    .local v1, "first":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-le p2, v0, :cond_1

    if-ltz v2, :cond_1

    .line 385
    const/4 v5, 0x0

    invoke-direct {p0, v2, p2, v5}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getAndAddView(IIZ)Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;

    move-result-object v4

    .line 386
    .local v4, "view":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;
    invoke-virtual {v4}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->getY()I

    move-result p2

    .line 387
    invoke-virtual {v4}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->getSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    invoke-virtual {v4}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->getView()Landroid/view/View;

    move-result-object v3

    .line 390
    :cond_0
    invoke-virtual {v4}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->getPos()I

    move-result v1

    .line 384
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 393
    .end local v4    # "view":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;
    :cond_1
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->setFirstVisiblePosition(I)V
    invoke-static {v5, v1}, Landroid/widget/OppoListViewHooks;->access$400(Landroid/widget/OppoListViewHooks;I)V

    .line 394
    iget-object v5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    iget-object v6, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v6}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v6

    iget-object v7, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getLastVisiblePosition()I
    invoke-static {v7}, Landroid/widget/OppoListViewHooks;->access$100(Landroid/widget/OppoListViewHooks;)I

    move-result v7

    # invokes: Landroid/widget/OppoListViewHooks;->setVisibleRangeHint(II)V
    invoke-static {v5, v6, v7}, Landroid/widget/OppoListViewHooks;->access$900(Landroid/widget/OppoListViewHooks;II)V

    .line 395
    return-object v3
.end method

.method private getAboveOffset()I
    .locals 8

    .prologue
    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "offset":I
    iget-object v4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v4}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v0

    .line 215
    .local v0, "first":I
    iget-object v4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedAboves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 216
    .local v3, "pos":I
    if-le v3, v0, :cond_0

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v3    # "pos":I
    :cond_1
    const/4 v4, 0x1

    const-string v5, "OppoListViewHooks.RemoveImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAboveOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 221
    return v2
.end method

.method private getAboveRemoved()I
    .locals 8

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "offset":I
    iget-object v4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v4}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v0

    .line 203
    .local v0, "first":I
    iget-object v4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 204
    .local v3, "pos":I
    if-ge v3, v0, :cond_0

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "pos":I
    :cond_1
    const/4 v4, 0x1

    const-string v5, "OppoListViewHooks.RemoveImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAboveRemoved="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 209
    return v2
.end method

.method private getAndAddView(IIZ)Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;
    .locals 8
    .param p1, "removePos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    const/4 v0, 0x1

    .line 570
    invoke-direct {p0, p1}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getRemoveItem(I)Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;

    move-result-object v6

    .line 571
    .local v6, "info":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;
    invoke-virtual {v6}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;->getPos()I

    move-result v3

    .line 572
    .local v3, "pos":I
    invoke-virtual {v6}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;->getView()Landroid/view/View;

    move-result-object v2

    .line 574
    .local v2, "child":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getSelectedPosition()I
    invoke-static {v1}, Landroid/widget/OppoListViewHooks;->access$300(Landroid/widget/OppoListViewHooks;)I

    move-result v1

    if-ne v3, v1, :cond_0

    move v5, v0

    .line 581
    .local v5, "selected":Z
    :goto_0
    if-eqz p3, :cond_1

    .line 582
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getDividerHeight()I
    invoke-static {v4}, Landroid/widget/OppoListViewHooks;->access$600(Landroid/widget/OppoListViewHooks;)I

    move-result v4

    add-int p2, v1, v4

    .line 586
    :goto_1
    const-string v1, "OppoListViewHooks.RemoveImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAndAddView @ "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", flow="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", y="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", child="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 588
    new-instance v0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;-><init>(Landroid/widget/OppoListViewHooks$RemoveImpl;Landroid/view/View;IIZ)V

    return-object v0

    .line 574
    .end local v5    # "selected":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 584
    .restart local v5    # "selected":Z
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getDividerHeight()I
    invoke-static {v4}, Landroid/widget/OppoListViewHooks;->access$600(Landroid/widget/OppoListViewHooks;)I

    move-result v4

    sub-int p2, v1, v4

    goto :goto_1
.end method

.method private getBelowOffset()I
    .locals 8

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "offset":I
    iget-object v4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getLastVisiblePosition()I
    invoke-static {v4}, Landroid/widget/OppoListViewHooks;->access$100(Landroid/widget/OppoListViewHooks;)I

    move-result v1

    .line 227
    .local v1, "last":I
    iget-object v4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedBelows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 228
    .local v3, "pos":I
    if-ge v3, v1, :cond_0

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v3    # "pos":I
    :cond_1
    const/4 v4, 0x1

    const-string v5, "OppoListViewHooks.RemoveImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBelowOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 233
    return v2
.end method

.method private getCacheSize()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemoveCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getFirstForCache()I
    .locals 6

    .prologue
    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v2}, Landroid/widget/OppoListViewHooks;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 320
    iget-object v2, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedItems:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    :cond_0
    iget v2, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mFirstVisible:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 326
    .local v0, "first":I
    const/4 v2, 0x1

    const-string v3, "OppoListViewHooks.RemoveImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstForCache="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 327
    return v0

    .line 323
    .end local v0    # "first":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLastForCache()I
    .locals 6

    .prologue
    .line 331
    iget-object v2, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v2}, Landroid/widget/OppoListViewHooks;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 332
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 333
    iget-object v2, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedItems:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    :cond_0
    iget v2, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mLastVisible:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 339
    .local v1, "last":I
    const/4 v2, 0x1

    const-string v3, "OppoListViewHooks.RemoveImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastForCache="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 340
    return v1

    .line 336
    .end local v1    # "last":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getPositionForCache(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemoveCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 345
    iget-object v2, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemoveCache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;

    .line 346
    .local v1, "info":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;
    invoke-virtual {v1}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;->getPos()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 352
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;
    :goto_1
    return v0

    .line 344
    .restart local v0    # "i":I
    .restart local v1    # "info":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "info":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;
    :cond_1
    const/4 v2, 0x1

    const-string v3, "OppoListViewHooks.RemoveImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPositionForCache : position not found @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 352
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getRemoveItem(I)Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 310
    iget-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemoveCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;

    return-object v0
.end method

.method private isAboveRemoved(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 237
    iget-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedAboves:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedAboves:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBelowRemoved(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 244
    iget-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedBelows:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedBelows:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printRemovedAbove()Ljava/lang/String;
    .locals 5

    .prologue
    .line 265
    const-string v2, "("

    .line 266
    .local v2, "removed":Ljava/lang/String;
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedAboves:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedAboves:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 268
    .local v1, "pos":I
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    goto :goto_0

    .line 274
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pos":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    return-object v2
.end method

.method private printRemovedAll()Ljava/lang/String;
    .locals 5

    .prologue
    .line 251
    const-string v2, "("

    .line 252
    .local v2, "removed":Ljava/lang/String;
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedItems:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 254
    .local v1, "pos":I
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    goto :goto_0

    .line 260
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pos":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    return-object v2
.end method

.method private printRemovedBelow()Ljava/lang/String;
    .locals 5

    .prologue
    .line 279
    const-string v2, "("

    .line 280
    .local v2, "removed":Ljava/lang/String;
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedBelows:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 281
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedBelows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 282
    .local v1, "pos":I
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    goto :goto_0

    .line 288
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pos":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    return-object v2
.end method

.method private resetCache()V
    .locals 5

    .prologue
    .line 675
    iget-object v1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v1}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v0

    .line 676
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getAboveRemoved()I

    move-result v2

    sub-int v2, v0, v2

    # invokes: Landroid/widget/OppoListViewHooks;->setFirstVisiblePosition(I)V
    invoke-static {v1, v2}, Landroid/widget/OppoListViewHooks;->access$400(Landroid/widget/OppoListViewHooks;I)V

    .line 678
    const/4 v1, 0x1

    const-string v2, "OppoListViewHooks.RemoveImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetCache : mFirstPosition : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v4}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->clearRemoveCache()V

    .line 682
    return-void
.end method

.method private sortRemoveCache()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemoveCache:Ljava/util/List;

    iget-object v1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 297
    return-void
.end method


# virtual methods
.method fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v7, 0x1

    .line 155
    iget-object v8, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getSelectedPosition()I
    invoke-static {v8}, Landroid/widget/OppoListViewHooks;->access$300(Landroid/widget/OppoListViewHooks;)I

    move-result v8

    if-ne p1, v8, :cond_1

    move v5, v7

    .line 156
    .local v5, "tempIsSelected":Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getPositionForCache(I)I

    move-result v3

    .line 157
    .local v3, "removePos":I
    invoke-direct {p0, v3, p2, v7}, Landroid/widget/OppoListViewHooks$RemoveImpl;->getAndAddView(IIZ)Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;

    move-result-object v6

    .line 158
    .local v6, "view":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;
    invoke-virtual {v6}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->getView()Landroid/view/View;

    move-result-object v4

    .line 159
    .local v4, "temp":Landroid/view/View;
    iget-object v8, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->setFirstVisiblePosition(I)V
    invoke-static {v8, p1}, Landroid/widget/OppoListViewHooks;->access$400(Landroid/widget/OppoListViewHooks;I)V

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "above":Landroid/view/View;
    const/4 v1, 0x0

    .line 163
    .local v1, "below":Landroid/view/View;
    iget-object v8, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->isStackFromBottom()Z
    invoke-static {v8}, Landroid/widget/OppoListViewHooks;->access$500(Landroid/widget/OppoListViewHooks;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 164
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getDividerHeight()I
    invoke-static {v10}, Landroid/widget/OppoListViewHooks;->access$600(Landroid/widget/OppoListViewHooks;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/OppoListViewHooks$RemoveImpl;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 167
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->adjustViewsUpOrDown()V

    .line 168
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getDividerHeight()I
    invoke-static {v10}, Landroid/widget/OppoListViewHooks;->access$600(Landroid/widget/OppoListViewHooks;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/OppoListViewHooks$RemoveImpl;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 169
    iget-object v8, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getChildCount()I
    invoke-static {v8}, Landroid/widget/OppoListViewHooks;->access$700(Landroid/widget/OppoListViewHooks;)I

    move-result v2

    .line 170
    .local v2, "childCount":I
    if-lez v2, :cond_0

    .line 171
    invoke-direct {p0, v2}, Landroid/widget/OppoListViewHooks$RemoveImpl;->correctTooHigh(I)V

    .line 185
    :cond_0
    :goto_1
    const-string v8, "OppoListViewHooks.RemoveImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=============================fillSpecific : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getChildCount()I
    invoke-static {v10}, Landroid/widget/OppoListViewHooks;->access$700(Landroid/widget/OppoListViewHooks;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mFirstPosition="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v10}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 188
    if-eqz v5, :cond_3

    .line 193
    .end local v4    # "temp":Landroid/view/View;
    :goto_2
    return-object v4

    .line 155
    .end local v0    # "above":Landroid/view/View;
    .end local v1    # "below":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "removePos":I
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "view":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 174
    .restart local v0    # "above":Landroid/view/View;
    .restart local v1    # "below":Landroid/view/View;
    .restart local v3    # "removePos":I
    .restart local v4    # "temp":Landroid/view/View;
    .restart local v5    # "tempIsSelected":Z
    .restart local v6    # "view":Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;
    :cond_2
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getDividerHeight()I
    invoke-static {v10}, Landroid/widget/OppoListViewHooks;->access$600(Landroid/widget/OppoListViewHooks;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/OppoListViewHooks$RemoveImpl;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 177
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->adjustViewsUpOrDown()V

    .line 178
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getDividerHeight()I
    invoke-static {v10}, Landroid/widget/OppoListViewHooks;->access$600(Landroid/widget/OppoListViewHooks;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/OppoListViewHooks$RemoveImpl;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 179
    iget-object v8, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getChildCount()I
    invoke-static {v8}, Landroid/widget/OppoListViewHooks;->access$700(Landroid/widget/OppoListViewHooks;)I

    move-result v2

    .line 180
    .restart local v2    # "childCount":I
    if-lez v2, :cond_0

    .line 181
    invoke-direct {p0, v2}, Landroid/widget/OppoListViewHooks$RemoveImpl;->correctTooLow(I)V

    goto :goto_1

    .line 190
    :cond_3
    if-eqz v0, :cond_4

    move-object v4, v0

    .line 191
    goto :goto_2

    :cond_4
    move-object v4, v1

    .line 193
    goto :goto_2
.end method

.method hasRemovedItems()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 151
    :cond_0
    return v0
.end method

.method public setRemovedItems(Ljava/util/List;)V
    .locals 7
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
    .line 120
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_2

    .line 121
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getFirstVisiblePosition()I
    invoke-static {v3}, Landroid/widget/OppoListViewHooks;->access$000(Landroid/widget/OppoListViewHooks;)I

    move-result v3

    iput v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mFirstVisible:I

    .line 122
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getLastVisiblePosition()I
    invoke-static {v3}, Landroid/widget/OppoListViewHooks;->access$100(Landroid/widget/OppoListViewHooks;)I

    move-result v3

    iput v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mLastVisible:I

    .line 123
    iput-object p1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedItems:Ljava/util/List;

    .line 124
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->this$0:Landroid/widget/OppoListViewHooks;

    # invokes: Landroid/widget/OppoListViewHooks;->getHeaderViewsCount()I
    invoke-static {v3}, Landroid/widget/OppoListViewHooks;->access$200(Landroid/widget/OppoListViewHooks;)I

    move-result v0

    .line 125
    .local v0, "headers":I
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 126
    .local v2, "pos":I
    add-int/2addr v2, v0

    .line 127
    iget v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mFirstVisible:I

    if-ge v2, v3, :cond_1

    .line 128
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedAboves:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_1
    iget v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mLastVisible:I

    if-le v2, v3, :cond_0

    .line 130
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedBelows:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v0    # "headers":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pos":I
    :cond_2
    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->resetCache()V

    .line 136
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedAboves:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 137
    iget-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedBelows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 138
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl;->mRemovedItems:Ljava/util/List;

    .line 140
    :cond_3
    const/4 v3, 0x1

    const-string v4, "OppoListViewHooks.RemoveImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRemovedItems : all="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->printRemovedAll()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", aboves="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->printRemovedAbove()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", belows="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/widget/OppoListViewHooks$RemoveImpl;->printRemovedBelow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method
