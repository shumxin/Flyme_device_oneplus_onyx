.class Lcom/oppo/media/MediaPlayer$13;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;


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
    .line 332
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer$13;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lcom/oppo/media/OppoMediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Lcom/oppo/media/OppoMediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$13;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$800(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$13;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$800(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/MediaPlayer$13;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/oppo/media/MediaPlayer;II)V

    .line 339
    :cond_0
    return-void
.end method
