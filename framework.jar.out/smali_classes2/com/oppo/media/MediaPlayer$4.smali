.class Lcom/oppo/media/MediaPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 118
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer$4;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 120
    # getter for: Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oppo/media/MediaPlayer;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaPlayer  OnError is running what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    const/16 v0, -0x26

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$4;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mCurrentState:I
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$400(Lcom/oppo/media/MediaPlayer;)I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$4;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mCurrentState:I
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$400(Lcom/oppo/media/MediaPlayer;)I

    move-result v0

    const/16 v1, 0x105

    if-ne v0, v1, :cond_2

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$4;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$500(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$4;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$500(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/MediaPlayer$4;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z

    .line 132
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$4;->this$0:Lcom/oppo/media/MediaPlayer;

    # invokes: Lcom/oppo/media/MediaPlayer;->handleMediaPlayerError()V
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$600(Lcom/oppo/media/MediaPlayer;)V

    goto :goto_0
.end method
