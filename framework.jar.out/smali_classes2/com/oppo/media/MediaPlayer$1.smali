.class Lcom/oppo/media/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 90
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer$1;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$1;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnPreparedListener:Lcom/oppo/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$000(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer$1;->this$0:Lcom/oppo/media/MediaPlayer;

    # getter for: Lcom/oppo/media/MediaPlayer;->mOnPreparedListener:Lcom/oppo/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/oppo/media/MediaPlayer;->access$000(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/MediaPlayer$1;->this$0:Lcom/oppo/media/MediaPlayer;

    invoke-interface {v0, v1}, Lcom/oppo/media/MediaPlayer$OnPreparedListener;->onPrepared(Lcom/oppo/media/MediaPlayer;)V

    .line 96
    :cond_0
    return-void
.end method
