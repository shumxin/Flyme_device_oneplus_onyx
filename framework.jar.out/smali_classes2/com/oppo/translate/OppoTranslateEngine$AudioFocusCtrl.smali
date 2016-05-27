.class Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;
.super Ljava/lang/Object;
.source "OppoTranslateEngine.java"

# interfaces
.implements Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/OppoTranslateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusCtrl"
.end annotation


# static fields
.field private static final AUDIO_TAG:Ljava/lang/String; = "AudioFocusCtrl"


# instance fields
.field private mMusicActive:Z

.field final synthetic this$0:Lcom/oppo/translate/OppoTranslateEngine;


# direct methods
.method private constructor <init>(Lcom/oppo/translate/OppoTranslateEngine;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;->this$0:Lcom/oppo/translate/OppoTranslateEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;->mMusicActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/translate/OppoTranslateEngine;Lcom/oppo/translate/OppoTranslateEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/translate/OppoTranslateEngine;
    .param p2, "x1"    # Lcom/oppo/translate/OppoTranslateEngine$1;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;-><init>(Lcom/oppo/translate/OppoTranslateEngine;)V

    return-void
.end method


# virtual methods
.method public pauseMusic()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 217
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;->this$0:Lcom/oppo/translate/OppoTranslateEngine;

    iget-object v1, v1, Lcom/oppo/translate/OppoTranslateEngine;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 218
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 220
    iput-boolean v4, p0, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;->mMusicActive:Z

    .line 221
    const-string v1, "AudioFocusCtrl"

    const-string v2, "pauseMusic : requestAudioFocus"

    invoke-static {v4, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;->mMusicActive:Z

    return v1

    .line 223
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;->mMusicActive:Z

    .line 224
    const-string v1, "AudioFocusCtrl"

    const-string v2, "pauseMusic : could not get audio focus"

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeMusic()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 231
    iget-boolean v1, p0, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;->mMusicActive:Z

    if-eqz v1, :cond_1

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;->mMusicActive:Z

    .line 233
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;->this$0:Lcom/oppo/translate/OppoTranslateEngine;

    iget-object v1, v1, Lcom/oppo/translate/OppoTranslateEngine;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 234
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 235
    const-string v1, "AudioFocusCtrl"

    const-string v2, "resumeMusic : abandonAudioFocus"

    invoke-static {v3, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 237
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    const-string v1, "AudioFocusCtrl"

    const-string v2, "resumeMusic : could not release audio focus"

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    const-string v1, "AudioFocusCtrl"

    const-string v2, "resumeMusic : noMusicActive"

    invoke-static {v3, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
