.class Lcom/oppo/media/MediaPlayer$11;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V
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
    .line 311
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer$11;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oppo/media/OppoMediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Lcom/oppo/media/OppoMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 314
    # getter for: Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oppo/media/MediaPlayer;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mOppoMediaPlayer OnError is running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$11;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$500(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$11;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$500(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/MediaPlayer$11;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z

    .line 318
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
