.class Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/OptionsPanelImpl;->animateOpenContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

.field final synthetic val$groupFadeIn:Landroid/view/ViewGroup;

.field final synthetic val$groupFadeOut:Landroid/view/ViewGroup;

.field final synthetic val$pivotx:I

.field final synthetic val$viewgap:I


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Landroid/view/ViewGroup;IILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    iput-object p2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$groupFadeIn:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$pivotx:I

    iput p4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$viewgap:I

    iput-object p5, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$groupFadeOut:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    .line 227
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$groupFadeIn:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 228
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$groupFadeIn:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    # getter for: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->OPEN_ANIMATION_DECELERATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;
    invoke-static {}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$300()Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 229
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$groupFadeIn:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 231
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 233
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$groupFadeIn:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, "button":Landroid/view/View;
    iget v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$pivotx:I

    iget v4, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$viewgap:I

    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "button":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$groupFadeIn:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$2;->val$groupFadeOut:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 240
    return-void
.end method
