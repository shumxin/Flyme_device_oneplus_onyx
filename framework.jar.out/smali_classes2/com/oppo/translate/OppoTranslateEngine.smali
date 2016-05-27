.class public abstract Lcom/oppo/translate/OppoTranslateEngine;
.super Ljava/lang/Object;
.source "OppoTranslateEngine.java"

# interfaces
.implements Lcom/oppo/translate/OppoTranslatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/translate/OppoTranslateEngine$1;,
        Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;,
        Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;,
        Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final PRONOUNCE_DELAY_FADE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "OppoTranslateEngine"


# instance fields
.field private mAudioCtrl:Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;

.field protected mContext:Landroid/content/Context;

.field protected mDictListener:Lcom/oppo/translate/IOppoTranslateResultListener;

.field private mHandler:Landroid/os/Handler;

.field protected mLangFrom:Ljava/lang/String;

.field protected mLangTo:Ljava/lang/String;

.field protected mLayout:Lcom/oppo/translate/OppoTranslateLayout;

.field private mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

.field protected mTransListener:Lcom/oppo/translate/IOppoTranslateResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mDictListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 61
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mTransListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 66
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLayout:Lcom/oppo/translate/OppoTranslateLayout;

    .line 76
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangFrom:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangTo:Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    invoke-direct {v0, p0, v1}, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;-><init>(Lcom/oppo/translate/OppoTranslateEngine;Lcom/oppo/translate/OppoTranslateEngine$1;)V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    .line 88
    iput-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mAudioCtrl:Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;

    .line 99
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/oppo/translate/OppoTranslateLayout;

    invoke-direct {v0, p1}, Lcom/oppo/translate/OppoTranslateLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLayout:Lcom/oppo/translate/OppoTranslateLayout;

    .line 101
    new-instance v0, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;

    invoke-direct {v0, p0, v1}, Lcom/oppo/translate/OppoTranslateEngine$AudioFocusCtrl;-><init>(Lcom/oppo/translate/OppoTranslateEngine;Lcom/oppo/translate/OppoTranslateEngine$1;)V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mAudioCtrl:Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;

    .line 102
    return-void
.end method


# virtual methods
.method public dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oppo/translate/IOppoTranslateResultListener;

    .prologue
    .line 127
    iput-object p2, p0, Lcom/oppo/translate/OppoTranslateEngine;->mDictListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 128
    return-void
.end method

.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "OppoTranslateEngine"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/oppo/util/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method protected abstract onPronounce(Ljava/lang/String;)V
.end method

.method protected onPronounceBegin()V
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x1

    const-string v1, "OppoTranslateEngine"

    const-string v2, "onPronounceBegin"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected onPronounceEnd()V
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x1

    const-string v1, "OppoTranslateEngine"

    const-string v2, "onPronounceEnd"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mAudioCtrl:Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;

    invoke-interface {v0}, Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;->resumeMusic()V

    .line 166
    return-void
.end method

.method protected onRestoreInstanceState(Lcom/oppo/translate/OppoTranslateState;)V
    .locals 4
    .param p1, "savedInstanceState"    # Lcom/oppo/translate/OppoTranslateState;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    const-string v0, "lang_from"

    invoke-virtual {p1, v0}, Lcom/oppo/translate/OppoTranslateState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangFrom:Ljava/lang/String;

    .line 184
    const-string v0, "lang_to"

    invoke-virtual {p1, v0}, Lcom/oppo/translate/OppoTranslateState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangTo:Ljava/lang/String;

    .line 185
    const/4 v0, 0x1

    const-string v1, "OppoTranslateEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreInstanceState : langFrom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", langTo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : savedInstanceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Lcom/oppo/translate/OppoTranslateState;)V
    .locals 4
    .param p1, "outState"    # Lcom/oppo/translate/OppoTranslateState;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    const/4 v0, 0x1

    const-string v1, "OppoTranslateEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState : langFrom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", langTo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : outState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "lang_from"

    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangFrom:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/oppo/translate/OppoTranslateState;->putString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    const-string v0, "lang_to"

    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mLangTo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/oppo/translate/OppoTranslateState;->putString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_0
    return-void
.end method

.method public pronounce(Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/oppo/translate/OppoTranslateEngine;->onPronounceBegin()V

    .line 134
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mAudioCtrl:Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;

    invoke-interface {v1}, Lcom/oppo/translate/OppoTranslateEngine$IAudioCtrl;->pauseMusic()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x3e8

    .line 135
    .local v0, "delay":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    invoke-virtual {v1, p1}, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;->setContent(Ljava/lang/String;)V

    .line 136
    if-nez v0, :cond_2

    .line 137
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    invoke-virtual {v1}, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;->run()V

    .line 142
    .end local v0    # "delay":I
    :cond_0
    :goto_1
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    .restart local v0    # "delay":I
    :cond_2
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateEngine;->mPronounceThread:Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    const-string v0, "OppoTranslateEngine"

    const-string v1, "recycle"

    invoke-static {v0, v1}, Lcom/oppo/util/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateEngine;->mDictListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 116
    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateEngine;->mTransListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 117
    invoke-virtual {p0}, Lcom/oppo/translate/OppoTranslateEngine;->onPronounceEnd()V

    .line 118
    return-void
.end method

.method public translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oppo/translate/IOppoTranslateResultListener;

    .prologue
    .line 122
    iput-object p2, p0, Lcom/oppo/translate/OppoTranslateEngine;->mTransListener:Lcom/oppo/translate/IOppoTranslateResultListener;

    .line 123
    return-void
.end method
