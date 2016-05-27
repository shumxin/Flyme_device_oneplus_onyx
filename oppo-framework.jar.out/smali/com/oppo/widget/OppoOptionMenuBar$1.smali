.class Lcom/oppo/widget/OppoOptionMenuBar$1;
.super Ljava/lang/Object;
.source "OppoOptionMenuBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoOptionMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 388
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 392
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # invokes: Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;
    invoke-static {v6}, Lcom/oppo/widget/OppoOptionMenuBar;->access$000(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/view/View;

    move-result-object v4

    .line 393
    .local v4, "decorView":Landroid/view/View;
    if-eqz v4, :cond_1

    move-object v6, v4

    .line 394
    check-cast v6, Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 395
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 396
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 397
    .local v3, "decorHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 398
    .local v2, "childHeight":I
    if-eq v3, v2, :cond_1

    .line 399
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z
    invoke-static {v6}, Lcom/oppo/widget/OppoOptionMenuBar;->access$100(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 400
    const-string v6, "OppoOptionMenuBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLayoutChange view="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",top,bottom,oldTop,oldBottom="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 403
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 404
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v6}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 409
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childHeight":I
    .end local v3    # "decorHeight":I
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method
