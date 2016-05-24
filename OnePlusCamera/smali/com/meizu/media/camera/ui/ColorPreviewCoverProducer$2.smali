.class Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer$2;
.super Ljava/lang/Object;
.source "ColorPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer$2;->this$0:Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer$2;->this$0:Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;

    # invokes: Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;->onFadeOutAnimationEnd()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;->access$100(Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;)V

    .line 32
    return-void
.end method
