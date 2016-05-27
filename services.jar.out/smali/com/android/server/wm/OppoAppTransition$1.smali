.class Lcom/android/server/wm/OppoAppTransition$1;
.super Ljava/lang/Object;
.source "OppoAppTransition.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/OppoAppTransition;->createOppoScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OppoAppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OppoAppTransition;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/server/wm/OppoAppTransition$1;->this$0:Lcom/android/server/wm/OppoAppTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition$1;->this$0:Lcom/android/server/wm/OppoAppTransition;

    # setter for: Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I
    invoke-static {v0, v1}, Lcom/android/server/wm/OppoAppTransition;->access$002(Lcom/android/server/wm/OppoAppTransition;I)I

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition$1;->this$0:Lcom/android/server/wm/OppoAppTransition;

    # setter for: Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I
    invoke-static {v0, v1}, Lcom/android/server/wm/OppoAppTransition;->access$102(Lcom/android/server/wm/OppoAppTransition;I)I

    .line 280
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 273
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 268
    return-void
.end method
