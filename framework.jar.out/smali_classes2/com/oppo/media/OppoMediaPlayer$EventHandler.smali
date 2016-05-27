.class Lcom/oppo/media/OppoMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "OppoMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/OppoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

.field final synthetic this$0:Lcom/oppo/media/OppoMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/oppo/media/OppoMediaPlayer;Lcom/oppo/media/OppoMediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mp"    # Lcom/oppo/media/OppoMediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2002
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    .line 2003
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2004
    iput-object p2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->mMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    .line 2005
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2009
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->mMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mNativeContext:I
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$000(Lcom/oppo/media/OppoMediaPlayer;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2010
    const-string v1, "OppoMediaPlayer"

    const-string v2, "mediaplayer went away with unhandled events"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2013
    :cond_1
    const-string v1, "OppoMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2085
    const-string v1, "OppoMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2016
    :sswitch_1
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnPreparedListener:Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$100(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2017
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnPreparedListener:Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$100(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->mMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-interface {v1, v2}, Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;->onPrepared(Lcom/oppo/media/OppoMediaPlayer;)V

    goto :goto_0

    .line 2021
    :sswitch_2
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$200(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2022
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$200(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->mMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-interface {v1, v2}, Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;->onCompletion(Lcom/oppo/media/OppoMediaPlayer;)V

    .line 2023
    :cond_2
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # invokes: Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V
    invoke-static {v1, v5}, Lcom/oppo/media/OppoMediaPlayer;->access$300(Lcom/oppo/media/OppoMediaPlayer;Z)V

    goto :goto_0

    .line 2027
    :sswitch_3
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$400(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2028
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$400(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->mMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3}, Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/oppo/media/OppoMediaPlayer;I)V

    goto/16 :goto_0

    .line 2032
    :sswitch_4
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$500(Lcom/oppo/media/OppoMediaPlayer;)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I
    invoke-static {v2}, Lcom/oppo/media/OppoMediaPlayer;->access$600(Lcom/oppo/media/OppoMediaPlayer;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 2033
    const-string v1, "OppoMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing queued seekTo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I
    invoke-static {v3}, Lcom/oppo/media/OppoMediaPlayer;->access$500(Lcom/oppo/media/OppoMediaPlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # setter for: Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I
    invoke-static {v1, v4}, Lcom/oppo/media/OppoMediaPlayer;->access$502(Lcom/oppo/media/OppoMediaPlayer;I)I

    .line 2035
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I
    invoke-static {v2}, Lcom/oppo/media/OppoMediaPlayer;->access$600(Lcom/oppo/media/OppoMediaPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/media/OppoMediaPlayer;->seekTo(I)V

    .line 2041
    :goto_1
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$700(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2042
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$700(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->mMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-interface {v1, v2}, Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/oppo/media/OppoMediaPlayer;)V

    goto/16 :goto_0

    .line 2037
    :cond_3
    const-string v1, "OppoMediaPlayer"

    const-string v2, "All seeks complete - return to regularly scheduled program"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # setter for: Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I
    invoke-static {v2, v4}, Lcom/oppo/media/OppoMediaPlayer;->access$502(Lcom/oppo/media/OppoMediaPlayer;I)I

    move-result v2

    # setter for: Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I
    invoke-static {v1, v2}, Lcom/oppo/media/OppoMediaPlayer;->access$602(Lcom/oppo/media/OppoMediaPlayer;I)I

    goto :goto_1

    .line 2046
    :sswitch_5
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$800(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2047
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$800(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->mMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/oppo/media/OppoMediaPlayer;II)V

    goto/16 :goto_0

    .line 2052
    :sswitch_6
    const-string v1, "OppoMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const/4 v0, 0x0

    .line 2054
    .local v0, "error_was_handled":Z
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnErrorListener:Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$900(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2055
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnErrorListener:Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$900(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->mMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/OppoMediaPlayer;II)Z

    move-result v0

    .line 2057
    :cond_4
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$200(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 2058
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$200(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->mMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-interface {v1, v2}, Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;->onCompletion(Lcom/oppo/media/OppoMediaPlayer;)V

    .line 2060
    :cond_5
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # invokes: Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V
    invoke-static {v1, v5}, Lcom/oppo/media/OppoMediaPlayer;->access$300(Lcom/oppo/media/OppoMediaPlayer;Z)V

    goto/16 :goto_0

    .line 2064
    .end local v0    # "error_was_handled":Z
    :sswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x2bc

    if-eq v1, v2, :cond_6

    .line 2065
    const-string v1, "OppoMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Info ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :cond_6
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnInfoListener:Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$1000(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2068
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->this$0:Lcom/oppo/media/OppoMediaPlayer;

    # getter for: Lcom/oppo/media/OppoMediaPlayer;->mOnInfoListener:Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;
    invoke-static {v1}, Lcom/oppo/media/OppoMediaPlayer;->access$1000(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->mMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;->onInfo(Lcom/oppo/media/OppoMediaPlayer;II)Z

    goto/16 :goto_0

    .line 2014
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_7
    .end sparse-switch
.end method
