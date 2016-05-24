.class final Lcom/meizu/media/camera/media/MediaListManager$2;
.super Landroid/os/Handler;
.source "MediaListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/media/MediaListManager;->checkContentThread(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 479
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 483
    # invokes: Lcom/meizu/media/camera/media/MediaListManager;->handleContentThreadMessage(Landroid/os/Message;)V
    invoke-static {p1}, Lcom/meizu/media/camera/media/MediaListManager;->access$500(Landroid/os/Message;)V

    .line 484
    return-void
.end method
