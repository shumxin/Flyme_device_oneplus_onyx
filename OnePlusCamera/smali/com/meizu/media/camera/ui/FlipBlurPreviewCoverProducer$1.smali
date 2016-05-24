.class Lcom/meizu/media/camera/ui/FlipBlurPreviewCoverProducer$1;
.super Ljava/lang/Object;
.source "FlipBlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/FlipBlurPreviewCoverProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/FlipBlurPreviewCoverProducer;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/FlipBlurPreviewCoverProducer;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/meizu/media/camera/ui/FlipBlurPreviewCoverProducer$1;->this$0:Lcom/meizu/media/camera/ui/FlipBlurPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FlipBlurPreviewCoverProducer$1;->this$0:Lcom/meizu/media/camera/ui/FlipBlurPreviewCoverProducer;

    # invokes: Lcom/meizu/media/camera/ui/FlipBlurPreviewCoverProducer;->onFlipAnimationEnd()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/FlipBlurPreviewCoverProducer;->access$000(Lcom/meizu/media/camera/ui/FlipBlurPreviewCoverProducer;)V

    .line 23
    return-void
.end method
