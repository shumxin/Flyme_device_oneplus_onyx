.class Lcom/meizu/media/camera/ui/ScaleImageView$15;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/ScaleImageView;->finishLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ScaleImageView;)V
    .locals 0

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ScaleImageView$15;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ScaleImageView$15;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_Gallery:Lcom/meizu/media/camera/ui/PreviewGallery;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$1900(Lcom/meizu/media/camera/ui/ScaleImageView;)Lcom/meizu/media/camera/ui/PreviewGallery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 1221
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ScaleImageView$15;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/media/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2002(Lcom/meizu/media/camera/ui/ScaleImageView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1215
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ScaleImageView$15;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_Gallery:Lcom/meizu/media/camera/ui/PreviewGallery;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$1900(Lcom/meizu/media/camera/ui/ScaleImageView;)Lcom/meizu/media/camera/ui/PreviewGallery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 1216
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1225
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ScaleImageView$15;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_Gallery:Lcom/meizu/media/camera/ui/PreviewGallery;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$1900(Lcom/meizu/media/camera/ui/ScaleImageView;)Lcom/meizu/media/camera/ui/PreviewGallery;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 1210
    return-void
.end method