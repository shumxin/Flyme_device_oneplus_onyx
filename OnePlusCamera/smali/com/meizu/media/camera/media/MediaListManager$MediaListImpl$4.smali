.class Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$4;
.super Ljava/lang/Object;
.source "MediaListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->replaceMedia(Lcom/meizu/media/camera/media/MediaInfo;Lcom/meizu/media/camera/media/MediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

.field final synthetic val$newMedia:Lcom/meizu/media/camera/media/MediaInfo;

.field final synthetic val$oldMedia:Lcom/meizu/media/camera/media/MediaInfo;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;Lcom/meizu/media/camera/media/MediaInfo;Lcom/meizu/media/camera/media/MediaInfo;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$4;->this$0:Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    iput-object p2, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$4;->val$oldMedia:Lcom/meizu/media/camera/media/MediaInfo;

    iput-object p3, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$4;->val$newMedia:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$4;->this$0:Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    iget-object v1, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$4;->val$oldMedia:Lcom/meizu/media/camera/media/MediaInfo;

    iget-object v2, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$4;->val$newMedia:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->replace(Lcom/meizu/media/camera/media/MediaInfo;Lcom/meizu/media/camera/media/MediaInfo;)Z

    .line 308
    return-void
.end method
