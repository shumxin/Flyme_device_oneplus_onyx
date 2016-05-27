.class Lcom/android/internal/app/OppoWindowDecorActionBar$3;
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
    .line 180
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$3;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$3;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$200(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->requestLayout()V

    .line 185
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$3;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/app/OppoWindowDecorActionBar;->resizeScreenLayout(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$300(Lcom/android/internal/app/OppoWindowDecorActionBar;Z)V

    .line 186
    return-void
.end method
