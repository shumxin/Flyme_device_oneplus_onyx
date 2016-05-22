.class Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->onGestureEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 951
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3800(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4$1;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 969
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6000(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 970
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 967
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$5002(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_0
.end method
