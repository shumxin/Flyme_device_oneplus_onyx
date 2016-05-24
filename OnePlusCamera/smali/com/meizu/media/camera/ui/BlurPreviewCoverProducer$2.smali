.class Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer$2;
.super Ljava/lang/Object;
.source "BlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer$2;->this$0:Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer$2;->this$0:Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;

    # invokes: Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;->onFadeInAnimationStart()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;->access$100(Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;)V

    .line 61
    return-void
.end method
