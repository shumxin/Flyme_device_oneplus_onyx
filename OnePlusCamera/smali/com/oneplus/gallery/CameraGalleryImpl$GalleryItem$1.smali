.class Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;
.super Lcom/oneplus/widget/ScaleImageView$GestureCallback;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/media/MediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

.field final synthetic val$this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->val$this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 701
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v4, Lcom/meizu/media/camera/ui/CameraGallery;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 722
    :goto_0
    return v0

    .line 706
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z
    invoke-static {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4400(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v2, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z
    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4500(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    .line 709
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4600(Lcom/oneplus/gallery/CameraGalleryImpl;ZZ)V

    :goto_1
    move v0, v1

    .line 713
    goto :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripCurrentItem(Lcom/oneplus/widget/ScaleImageView;Z)V
    invoke-static {v0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4700(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Z)V

    goto :goto_1

    .line 715
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/meizu/media/camera/media/MediaInfo;->isPhoto()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->isStretchedImage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4500(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    :cond_1
    move v0, v2

    .line 717
    goto :goto_0

    .line 719
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4500(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    move v0, v2

    .line 720
    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onGestureEnd(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->onGestureEnd()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3400(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 673
    return-void
.end method

.method public onGestureStart(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->getScaleImageGestureReceiver()Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$3500(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$3600(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGestureStart() - Disable gesture: "

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    const/4 v1, 0x1

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3702(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 695
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3802(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    .line 687
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    const/high16 v1, 0x3f800000    # 1.0f

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3902(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    .line 688
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z
    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3702(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 689
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScaled:Z
    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$4002(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 690
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$4102(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 691
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_CheckScaleFactor:Z
    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$4202(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 694
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageGestureStart(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V
    invoke-static {v0, v1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4300(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onScale(Lcom/oneplus/widget/ScaleImageView;FFF)Z
    .locals 6
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "factor"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 730
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3700(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 783
    :goto_0
    return v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4800(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 735
    goto :goto_0

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z
    invoke-static {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4400(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 739
    goto :goto_0

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScaled:Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$4002(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 743
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # *= operator for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F
    invoke-static {v0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3932(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    .line 746
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/meizu/media/camera/media/MediaInfo;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setVideoIndicatorVisibility(Z)V
    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$4900(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)V

    .line 750
    :cond_3
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v4, Lcom/meizu/media/camera/ui/CameraGallery;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 783
    goto :goto_0

    .line 755
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3900(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    .line 757
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_CheckScaleFactor:Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$4202(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 758
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/meizu/media/camera/media/MediaInfo;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 759
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4500(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    :goto_1
    move v0, v2

    .line 767
    goto :goto_0

    .line 762
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->isStretchedImage()Z

    move-result v0

    if-nez v0, :cond_5

    .line 763
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4500(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_1

    .line 765
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4500(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_1

    :cond_6
    move v0, v1

    .line 769
    goto/16 :goto_0

    .line 771
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3900(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_8

    .line 773
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/meizu/media/camera/media/MediaInfo;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 774
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4500(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    :cond_7
    :goto_2
    move v0, v2

    .line 781
    goto/16 :goto_0

    .line 776
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3900(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    .line 778
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/meizu/media/camera/media/MediaInfo;->isPhoto()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->isStretchedImage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 779
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4500(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_2

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onScroll(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "distanceX"    # F
    .param p5, "distanceY"    # F

    .prologue
    const/4 v8, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 792
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3700(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 863
    :goto_0
    return v1

    .line 796
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4800(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 797
    goto :goto_0

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$5000(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 801
    goto :goto_0

    .line 804
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$4100(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_3

    .line 806
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    .line 807
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;
    invoke-static {v1, v4}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$4102(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 811
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$4100(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 812
    goto :goto_0

    .line 809
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;
    invoke-static {v1, v4}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$4102(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_1

    .line 815
    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_6

    .line 818
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;
    invoke-static {v1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$4102(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 819
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    move v1, v2

    .line 820
    goto :goto_0

    .line 824
    :cond_6
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v5, Lcom/meizu/media/camera/ui/CameraGallery;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 863
    goto/16 :goto_0

    .line 828
    :pswitch_0
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$base$Rotation:[I

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v2, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$5100(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 842
    :goto_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3800(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_7

    .line 843
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F
    invoke-static {v1, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3802(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    .line 847
    :cond_7
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripScrollMode:I
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$5200(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v1

    if-eq v1, v8, :cond_8

    .line 849
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3800(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 850
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V
    invoke-static {v1, v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$5300(Lcom/oneplus/gallery/CameraGalleryImpl;I)V

    .line 857
    :cond_8
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F
    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3800(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 858
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    .line 859
    .local v0, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3800(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$5400(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v1

    :goto_3
    int-to-float v1, v1

    div-float v1, v4, v1

    sub-float v1, v7, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    move v1, v3

    .line 860
    goto/16 :goto_0

    .line 831
    .end local v0    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v2, v4

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F
    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3802(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    goto/16 :goto_2

    .line 834
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v2, v4

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F
    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3802(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    goto/16 :goto_2

    .line 837
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v2, v4

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F
    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$3802(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 853
    goto/16 :goto_0

    .line 859
    .restart local v0    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :cond_a
    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v1

    goto :goto_3

    .line 824
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 828
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSingleTapUp(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 871
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v4, Lcom/meizu/media/camera/ui/CameraGallery;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 889
    :goto_0
    return v1

    .line 876
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z
    invoke-static {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4400(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v2, Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z
    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4500(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/ui/CameraGallery$GalleryState;)Z

    .line 879
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4600(Lcom/oneplus/gallery/CameraGalleryImpl;ZZ)V

    goto :goto_0

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripCurrentItem(Lcom/oneplus/widget/ScaleImageView;Z)V
    invoke-static {v0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4700(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Z)V

    goto :goto_0

    .line 886
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$5500(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V
    invoke-static {v3, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4600(Lcom/oneplus/gallery/CameraGalleryImpl;ZZ)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 871
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
