.class Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "OppoProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoProgressBar;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoProgressBar;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->this$0:Lcom/oppo/widget/OppoProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoProgressBar;Lcom/oppo/widget/OppoProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/widget/OppoProgressBar;
    .param p2, "x1"    # Lcom/oppo/widget/OppoProgressBar$1;

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;-><init>(Lcom/oppo/widget/OppoProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 491
    iget-object v4, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->this$0:Lcom/oppo/widget/OppoProgressBar;

    monitor-enter v4

    .line 492
    :try_start_0
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->this$0:Lcom/oppo/widget/OppoProgressBar;

    # getter for: Lcom/oppo/widget/OppoProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/widget/OppoProgressBar;->access$000(Lcom/oppo/widget/OppoProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 493
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 494
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->this$0:Lcom/oppo/widget/OppoProgressBar;

    # getter for: Lcom/oppo/widget/OppoProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/widget/OppoProgressBar;->access$000(Lcom/oppo/widget/OppoProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoProgressBar$RefreshData;

    .line 495
    .local v2, "rd":Lcom/oppo/widget/OppoProgressBar$RefreshData;
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->this$0:Lcom/oppo/widget/OppoProgressBar;

    iget v5, v2, Lcom/oppo/widget/OppoProgressBar$RefreshData;->id:I

    iget v6, v2, Lcom/oppo/widget/OppoProgressBar$RefreshData;->progress:I

    iget-boolean v7, v2, Lcom/oppo/widget/OppoProgressBar$RefreshData;->fromUser:Z

    const/4 v8, 0x1

    # invokes: Lcom/oppo/widget/OppoProgressBar;->doRefreshProgress(IIZZ)V
    invoke-static {v3, v5, v6, v7, v8}, Lcom/oppo/widget/OppoProgressBar;->access$100(Lcom/oppo/widget/OppoProgressBar;IIZZ)V

    .line 496
    invoke-virtual {v2}, Lcom/oppo/widget/OppoProgressBar$RefreshData;->recycle()V

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v2    # "rd":Lcom/oppo/widget/OppoProgressBar$RefreshData;
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->this$0:Lcom/oppo/widget/OppoProgressBar;

    # getter for: Lcom/oppo/widget/OppoProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/widget/OppoProgressBar;->access$000(Lcom/oppo/widget/OppoProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 499
    iget-object v3, p0, Lcom/oppo/widget/OppoProgressBar$RefreshProgressRunnable;->this$0:Lcom/oppo/widget/OppoProgressBar;

    const/4 v5, 0x0

    # setter for: Lcom/oppo/widget/OppoProgressBar;->mRefreshIsPosted:Z
    invoke-static {v3, v5}, Lcom/oppo/widget/OppoProgressBar;->access$202(Lcom/oppo/widget/OppoProgressBar;Z)Z

    .line 500
    monitor-exit v4

    .line 501
    return-void

    .line 500
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
