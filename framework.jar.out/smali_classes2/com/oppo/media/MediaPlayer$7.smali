.class Lcom/oppo/media/MediaPlayer$7;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/media/MediaPlayer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/oppo/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer$7;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    .line 161
    # getter for: Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oppo/media/MediaPlayer;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaPlayer  OnInfo is running: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/16 v0, 0x35c

    if-ne v0, p2, :cond_1

    .line 163
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$7;->this$0:Lcom/oppo/media/MediaPlayer;

    # invokes: Lcom/oppo/media/MediaPlayer;->handleMediaPlayerError()V
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$600(Lcom/oppo/media/MediaPlayer;)V

    .line 169
    :cond_0
    :goto_0
    return v3

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$7;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$900(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$7;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$900(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/MediaPlayer$7;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Lcom/oppo/media/MediaPlayer$OnInfoListener;->onInfo(Lcom/oppo/media/MediaPlayer;II)Z

    goto :goto_0
.end method
