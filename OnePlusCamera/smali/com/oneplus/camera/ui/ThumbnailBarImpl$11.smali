.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v4, 0x2710

    .line 413
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1400(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 415
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1400(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    # setter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBackground:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1502(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 416
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1600(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OutlineProviderCircle:Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1700(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    new-instance v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;)V

    # setter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OutlineProviderCircle:Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1702(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;)Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1600(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OutlineProviderCircle:Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1700(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 421
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1600(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 422
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1600(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1600(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBackground:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1500(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1400(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 433
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1400(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 434
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1400(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1300(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1400(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 437
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # invokes: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->startThumbnailAnimation()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1900(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    .line 444
    :goto_0
    return-void

    .line 441
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v4}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 442
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 404
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$800(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1300(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$800(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    :cond_0
    return-void
.end method
