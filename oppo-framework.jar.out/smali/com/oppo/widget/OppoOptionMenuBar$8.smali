.class Lcom/oppo/widget/OppoOptionMenuBar$8;
.super Ljava/lang/Object;
.source "OppoOptionMenuBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBar;

.field final synthetic val$isScrollDown:Z


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 0

    .prologue
    .line 2004
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    iput-boolean p2, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->val$isScrollDown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2116
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2043
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$100(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2044
    const-string v4, "OppoOptionMenuBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offsetedDistance ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I
    invoke-static {v6}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1400(Lcom/oppo/widget/OppoOptionMenuBar;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",offsetHeight ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I
    invoke-static {v6}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1600(Lcom/oppo/widget/OppoOptionMenuBar;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isScrollDown = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->val$isScrollDown:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_0
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z
    invoke-static {v4, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->access$502(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 2052
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1500(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2053
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1500(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/Gallery;->setClickable(Z)V

    .line 2056
    :cond_1
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->val$isScrollDown:Z

    if-eqz v4, :cond_8

    .line 2057
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z
    invoke-static {v4, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 2059
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1700(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2060
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1700(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2063
    :cond_2
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # invokes: Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V
    invoke-static {v4, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1800(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    .line 2065
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1500(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2066
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1500(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 2069
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # invokes: Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1900(Lcom/oppo/widget/OppoOptionMenuBar;)Ljava/util/List;

    move-result-object v3

    .line 2071
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2076
    .local v0, "e":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2077
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, -0x1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2081
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0x50

    if-ne v4, v5, :cond_4

    .line 2082
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 2084
    :cond_4
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2090
    .end local v0    # "e":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # invokes: Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$2000(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # invokes: Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$2100(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2091
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$2200(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2092
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$2300(Lcom/oppo/widget/OppoOptionMenuBar;)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2093
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$2200(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2096
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$800(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$900(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2097
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    invoke-static {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$700(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;
    invoke-static {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$900(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;->onOptionsItemSelected(Lcom/oppo/widget/OppoMenuItem;)Z

    .line 2098
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z
    invoke-static {v4, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->access$802(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 2099
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    const/4 v5, 0x0

    # setter for: Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;
    invoke-static {v4, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$902(Lcom/oppo/widget/OppoOptionMenuBar;Lcom/oppo/widget/OppoMenuItem;)Lcom/oppo/widget/OppoMenuItem;

    .line 2109
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_7
    :goto_1
    return-void

    .line 2102
    :cond_8
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z
    invoke-static {v4, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 2105
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoOptionMenuBar;->startElementItemAnimationUp()V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2033
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1500(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->access$1500(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setClickable(Z)V

    .line 2019
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    const/4 v1, 0x1

    # setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->access$502(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    .line 2022
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->val$isScrollDown:Z

    if-eqz v0, :cond_1

    .line 2023
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar$8;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->startElementItemAnimationDown()V

    .line 2026
    :cond_1
    return-void
.end method
