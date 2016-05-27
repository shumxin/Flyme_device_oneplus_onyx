.class Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;
.super Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
.source "OppoScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoTabView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Landroid/app/ActionBar$Tab;
    .param p4, "forList"    # Z

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    .line 560
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 562
    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 5
    .param p1, "selected"    # Z

    .prologue
    const/4 v3, 0x0

    .line 574
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 576
    if-eqz p1, :cond_2

    .line 577
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSizeSelected:I
    invoke-static {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$700(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 578
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 579
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 588
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 590
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 591
    return-void

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabTextSize:I
    invoke-static {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$600(Lcom/android/internal/widget/OppoScrollingTabContainerView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 583
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    invoke-static {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$800(Lcom/android/internal/widget/OppoScrollingTabContainerView;)Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    move-result-object v1

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->getTabTextPaddingLeft()I
    invoke-static {v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$900(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView;->mAnimation:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
    invoke-static {v3}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->access$800(Lcom/android/internal/widget/OppoScrollingTabContainerView;)Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    move-result-object v3

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->getTabTextPaddingRight()I
    invoke-static {v3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$1000(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 566
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 567
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$OppoTabView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 570
    :cond_0
    return-void
.end method
