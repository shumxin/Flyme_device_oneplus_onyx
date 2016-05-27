.class Lcom/oppo/media/MediaPlayer$5;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 137
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer$5;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$5;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$700(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$5;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$700(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/MediaPlayer$5;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-interface {v0, v1}, Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/oppo/media/MediaPlayer;)V

    .line 143
    :cond_0
    return-void
.end method
