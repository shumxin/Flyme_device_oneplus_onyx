.class Lcom/meizu/media/camera/ui/VerticalViewPager$3;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/VerticalViewPager;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/VerticalViewPager;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/meizu/media/camera/ui/VerticalViewPager$3;->this$0:Lcom/meizu/media/camera/ui/VerticalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/meizu/media/camera/ui/VerticalViewPager$3;->this$0:Lcom/meizu/media/camera/ui/VerticalViewPager;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/ui/VerticalViewPager;->setScrollState(I)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/VerticalViewPager;->access$000(Lcom/meizu/media/camera/ui/VerticalViewPager;I)V

    .line 216
    iget-object v0, p0, Lcom/meizu/media/camera/ui/VerticalViewPager$3;->this$0:Lcom/meizu/media/camera/ui/VerticalViewPager;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/VerticalViewPager;->populate()V

    .line 217
    return-void
.end method
