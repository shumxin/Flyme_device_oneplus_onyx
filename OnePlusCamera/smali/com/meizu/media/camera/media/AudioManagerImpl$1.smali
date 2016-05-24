.class Lcom/meizu/media/camera/media/AudioManagerImpl$1;
.super Ljava/lang/Object;
.source "AudioManagerImpl.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/media/AudioManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/media/AudioManagerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/media/AudioManagerImpl;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/meizu/media/camera/media/AudioManagerImpl$1;->this$0:Lcom/meizu/media/camera/media/AudioManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 1
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/media/camera/media/AudioManagerImpl$1;->this$0:Lcom/meizu/media/camera/media/AudioManagerImpl;

    # invokes: Lcom/meizu/media/camera/media/AudioManagerImpl;->onSoundLoaded(Landroid/media/SoundPool;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/meizu/media/camera/media/AudioManagerImpl;->access$000(Lcom/meizu/media/camera/media/AudioManagerImpl;Landroid/media/SoundPool;II)V

    .line 26
    return-void
.end method
