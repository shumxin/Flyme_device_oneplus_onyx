.class Lcom/meizu/media/camera/ui/VerticalViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/VerticalViewPager;


# direct methods
.method private constructor <init>(Lcom/meizu/media/camera/ui/VerticalViewPager;)V
    .locals 0

    .prologue
    .line 2718
    iput-object p1, p0, Lcom/meizu/media/camera/ui/VerticalViewPager$PagerObserver;->this$0:Lcom/meizu/media/camera/ui/VerticalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/media/camera/ui/VerticalViewPager;Lcom/meizu/media/camera/ui/VerticalViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/media/camera/ui/VerticalViewPager;
    .param p2, "x1"    # Lcom/meizu/media/camera/ui/VerticalViewPager$1;

    .prologue
    .line 2718
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/VerticalViewPager$PagerObserver;-><init>(Lcom/meizu/media/camera/ui/VerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2721
    iget-object v0, p0, Lcom/meizu/media/camera/ui/VerticalViewPager$PagerObserver;->this$0:Lcom/meizu/media/camera/ui/VerticalViewPager;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/VerticalViewPager;->dataSetChanged()V

    .line 2722
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/meizu/media/camera/ui/VerticalViewPager$PagerObserver;->this$0:Lcom/meizu/media/camera/ui/VerticalViewPager;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/VerticalViewPager;->dataSetChanged()V

    .line 2727
    return-void
.end method
