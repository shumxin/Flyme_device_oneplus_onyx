.class Lcom/oppo/media/MediaPlayer$14;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;


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
    .line 342
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer$14;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/oppo/media/OppoMediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Lcom/oppo/media/OppoMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$14;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$900(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$14;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$900(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/MediaPlayer$14;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Lcom/oppo/media/MediaPlayer$OnInfoListener;->onInfo(Lcom/oppo/media/MediaPlayer;II)Z

    .line 348
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
