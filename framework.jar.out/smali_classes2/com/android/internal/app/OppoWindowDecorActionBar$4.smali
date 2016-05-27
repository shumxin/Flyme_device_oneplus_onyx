.class Lcom/android/internal/app/OppoWindowDecorActionBar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoWindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoWindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentAnimations:Z
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$400(Lcom/android/internal/app/OppoWindowDecorActionBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$500(Lcom/android/internal/app/OppoWindowDecorActionBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$500(Lcom/android/internal/app/OppoWindowDecorActionBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$200(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$600(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextDisplayMode:I
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$700(Lcom/android/internal/app/OppoWindowDecorActionBar;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$600(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$200(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$200(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$800(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$800(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$4;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # invokes: Lcom/android/internal/app/OppoWindowDecorActionBar;->resizeScreenLayout(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$300(Lcom/android/internal/app/OppoWindowDecorActionBar;Z)V

    .line 206
    return-void
.end method
