.class Lcom/oppo/widget/OppoOptionMenuBar$2;
.super Ljava/lang/Object;
.source "OppoOptionMenuBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoOptionMenuBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBar;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 518
    move-object v3, p1

    check-cast v3, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 520
    .local v3, "item":Lcom/oppo/widget/OppoOptionMenuBarItem;
    invoke-virtual {v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getItemId()I

    move-result v2

    .line 527
    .local v2, "id":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J
    invoke-static {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$200(Lcom/oppo/widget/OppoOptionMenuBar;)J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 528
    .local v0, "duration":J
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    # setter for: Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J
    invoke-static {v5, v6, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->access$202(Lcom/oppo/widget/OppoOptionMenuBar;J)J

    .line 529
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J
    invoke-static {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$300(Lcom/oppo/widget/OppoOptionMenuBar;)J

    move-result-wide v6

    cmp-long v5, v0, v6

    if-gez v5, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    const v5, 0x7fffffff

    if-ne v2, v5, :cond_3

    .line 533
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$400(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 534
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z
    invoke-static {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$600(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 535
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_0

    .line 540
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 541
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    goto :goto_0

    .line 546
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v5, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v4

    .line 548
    .local v4, "menuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    invoke-static {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$700(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 549
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    invoke-static {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$700(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;->onOptionsItemSelected(Lcom/oppo/widget/OppoMenuItem;)Z

    goto :goto_0
.end method
