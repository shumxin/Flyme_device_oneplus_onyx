.class Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer$1;
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
    .line 19
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer$1;->this$0:Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer$1;->this$0:Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;

    # invokes: Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;->onFadeInAnimationEnd()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;->access$000(Lcom/meizu/media/camera/ui/ColorPreviewCoverProducer;)V

    .line 24
    return-void
.end method
