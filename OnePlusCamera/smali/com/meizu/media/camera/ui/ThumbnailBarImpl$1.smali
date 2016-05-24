.class Lcom/meizu/media/camera/ui/ThumbnailBarImpl$1;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$000(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$1;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # invokes: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->addThumbnailView(Landroid/graphics/Bitmap;)V
    invoke-static {v0, p3}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$100(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;Landroid/graphics/Bitmap;)V

    .line 89
    return-void
.end method
