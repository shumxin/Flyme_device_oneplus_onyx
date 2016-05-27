.class Landroid/widget/OppoGridView$HeaderViewListAdapter;
.super Ljava/lang/Object;
.source "OppoGridView.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewListAdapter"
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/OppoGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/OppoGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field final synthetic this$0:Landroid/widget/OppoGridView;


# direct methods
.method public constructor <init>(Landroid/widget/OppoGridView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .param p4, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/OppoGridView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/OppoGridView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2428
    .local p2, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/OppoGridView$FixedViewInfo;>;"
    .local p3, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/OppoGridView$FixedViewInfo;>;"
    iput-object p1, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->this$0:Landroid/widget/OppoGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2429
    iput-object p4, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 2430
    instance-of v0, p4, Landroid/widget/Filterable;

    iput-boolean v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mIsFilterable:Z

    .line 2432
    if-nez p2, :cond_0

    .line 2433
    # getter for: Landroid/widget/OppoGridView;->EMPTY_INFO_LIST:Ljava/util/ArrayList;
    invoke-static {}, Landroid/widget/OppoGridView;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2438
    :goto_0
    if-nez p3, :cond_1

    .line 2439
    # getter for: Landroid/widget/OppoGridView;->EMPTY_INFO_LIST:Ljava/util/ArrayList;
    invoke-static {}, Landroid/widget/OppoGridView;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2444
    :goto_1
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 2447
    return-void

    .line 2435
    :cond_0
    iput-object p2, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 2441
    :cond_1
    iput-object p3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 2444
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/OppoGridView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2462
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/OppoGridView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 2463
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/OppoGridView$FixedViewInfo;

    .line 2464
    .local v1, "info":Landroid/widget/OppoGridView$FixedViewInfo;
    iget-boolean v2, v1, Landroid/widget/OppoGridView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 2465
    const/4 v2, 0x0

    .line 2469
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/widget/OppoGridView$FixedViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2515
    iget-object v1, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 2516
    iget-boolean v1, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2518
    :cond_0
    :goto_0
    return v0

    .line 2516
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 2507
    invoke-virtual {p0}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->getFootersCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    add-int v0, v1, v2

    .line 2508
    .local v0, "count":I
    iget-object v1, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 2509
    iget-object v1, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 2511
    :cond_0
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 2641
    iget-boolean v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 2642
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2644
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 2450
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 2545
    invoke-virtual {p0}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 2546
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 2547
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/OppoGridView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/OppoGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 2561
    :goto_0
    return-object v3

    .line 2551
    :cond_0
    sub-int v1, p1, v2

    .line 2552
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 2553
    .local v0, "adapterCount":I
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 2554
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2555
    if-ge v1, v0, :cond_1

    .line 2556
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 2561
    :cond_1
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/OppoGridView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/OppoGridView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 2565
    invoke-virtual {p0}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 2566
    .local v2, "numHeaders":I
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 2567
    sub-int v1, p1, v2

    .line 2568
    .local v1, "adjPosition":I
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2569
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 2570
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2573
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 2609
    invoke-virtual {p0}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 2610
    .local v2, "numHeaders":I
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 2611
    sub-int v1, p1, v2

    .line 2612
    .local v1, "adjPosition":I
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2613
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 2614
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 2618
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2585
    invoke-virtual {p0}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 2586
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 2587
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/OppoGridView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/OppoGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 2605
    :goto_0
    return-object v3

    .line 2591
    :cond_0
    sub-int v1, p1, v2

    .line 2592
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 2593
    .local v0, "adapterCount":I
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 2594
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2595
    if-ge v1, v0, :cond_1

    .line 2596
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 2601
    :cond_1
    invoke-virtual {p0}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->getFootersCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 2602
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/OppoGridView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/OppoGridView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0

    .line 2605
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2622
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2623
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 2625
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 2648
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 2577
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2578
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 2580
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2458
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 2524
    invoke-virtual {p0}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 2525
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 2526
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/OppoGridView$FixedViewInfo;

    iget-boolean v3, v3, Landroid/widget/OppoGridView$FixedViewInfo;->isSelectable:Z

    .line 2540
    :goto_0
    return v3

    .line 2530
    :cond_0
    sub-int v1, p1, v2

    .line 2531
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 2532
    .local v0, "adapterCount":I
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 2533
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2534
    if-ge v1, v0, :cond_1

    .line 2535
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 2540
    :cond_1
    iget-object v3, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/OppoGridView$FixedViewInfo;

    iget-boolean v3, v3, Landroid/widget/OppoGridView$FixedViewInfo;->isSelectable:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2629
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2630
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2632
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 2491
    iget-object v4, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/OppoGridView$FixedViewInfo;

    .line 2492
    .local v1, "info":Landroid/widget/OppoGridView$FixedViewInfo;
    iget-object v4, v1, Landroid/widget/OppoGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 2493
    iget-object v4, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2495
    iget-object v4, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 2503
    .end local v1    # "info":Landroid/widget/OppoGridView$FixedViewInfo;
    :goto_1
    return v3

    .line 2490
    .restart local v1    # "info":Landroid/widget/OppoGridView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Landroid/widget/OppoGridView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 2503
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 2474
    iget-object v4, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/OppoGridView$FixedViewInfo;

    .line 2475
    .local v1, "info":Landroid/widget/OppoGridView$FixedViewInfo;
    iget-object v4, v1, Landroid/widget/OppoGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 2476
    iget-object v4, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2478
    iget-object v4, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Landroid/widget/OppoGridView$HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 2486
    .end local v1    # "info":Landroid/widget/OppoGridView$FixedViewInfo;
    :goto_1
    return v3

    .line 2473
    .restart local v1    # "info":Landroid/widget/OppoGridView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Landroid/widget/OppoGridView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 2486
    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2635
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2636
    iget-object v0, p0, Landroid/widget/OppoGridView$HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2638
    :cond_0
    return-void
.end method
