.class Lcom/oppo/widget/OppoOptionMenuBar$4;
.super Ljava/lang/Object;
.source "OppoOptionMenuBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V
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
    .line 623
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$4;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 636
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$4;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$400(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$4;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$4;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$600(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$4;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 642
    :cond_0
    return v1
.end method
