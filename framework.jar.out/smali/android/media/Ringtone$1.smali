.class Landroid/media/Ringtone$1;
.super Ljava/lang/Object;
.source "Ringtone.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/Ringtone;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Ringtone;


# direct methods
.method constructor <init>(Landroid/media/Ringtone;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 276
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMediaPlayer  OnError is running what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extra:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v2, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    # invokes: Landroid/media/Ringtone;->destroyLocalPlayer()V
    invoke-static {v2}, Landroid/media/Ringtone;->access$000(Landroid/media/Ringtone;)V

    .line 278
    iget-object v2, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    # getter for: Landroid/media/Ringtone;->mAllowRemote:Z
    invoke-static {v2}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    # getter for: Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;
    invoke-static {v2}, Landroid/media/Ringtone;->access$200(Landroid/media/Ringtone;)Landroid/media/IRingtonePlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    # getter for: Landroid/media/Ringtone;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/Ringtone;->access$300(Landroid/media/Ringtone;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v0

    .line 281
    .local v0, "canonicalUri":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    # getter for: Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;
    invoke-static {v2}, Landroid/media/Ringtone;->access$200(Landroid/media/Ringtone;)Landroid/media/IRingtonePlayer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    # getter for: Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;
    invoke-static {v3}, Landroid/media/Ringtone;->access$400(Landroid/media/Ringtone;)Landroid/os/Binder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    # getter for: Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;
    invoke-static {v4}, Landroid/media/Ringtone;->access$500(Landroid/media/Ringtone;)Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v0    # "canonicalUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 282
    .restart local v0    # "canonicalUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    # invokes: Landroid/media/Ringtone;->playFallbackRingtone()Z
    invoke-static {v2}, Landroid/media/Ringtone;->access$600(Landroid/media/Ringtone;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem playing ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
