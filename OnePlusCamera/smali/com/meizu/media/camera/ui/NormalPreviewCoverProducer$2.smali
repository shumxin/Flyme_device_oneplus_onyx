.class Lcom/meizu/media/camera/ui/NormalPreviewCoverProducer$2;
.super Ljava/lang/Object;
.source "NormalPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/NormalPreviewCoverProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/NormalPreviewCoverProducer;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/NormalPreviewCoverProducer;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/meizu/media/camera/ui/NormalPreviewCoverProducer$2;->this$0:Lcom/meizu/media/camera/ui/NormalPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/media/camera/ui/NormalPreviewCoverProducer$2;->this$0:Lcom/meizu/media/camera/ui/NormalPreviewCoverProducer;

    # invokes: Lcom/meizu/media/camera/ui/NormalPreviewCoverProducer;->onFadeOutAnimationStart()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/NormalPreviewCoverProducer;->access$100(Lcom/meizu/media/camera/ui/NormalPreviewCoverProducer;)V

    .line 34
    return-void
.end method
