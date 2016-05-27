.class public interface abstract Lcom/oppo/translate/OppoTranslatable;
.super Ljava/lang/Object;
.source "OppoTranslatable.java"


# static fields
.field public static final ERR_NO_NETWORK:I = 0x1

.field public static final ERR_SERVER:I = 0x3

.field public static final ERR_TIMEOUT:I = 0x2

.field public static final ERR_TTS_FILE:I = 0x5

.field public static final ERR_TTS_URL:I = 0x4


# virtual methods
.method public abstract dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
.end method

.method public abstract getUri(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract initialize()V
.end method

.method public abstract pronounce(Ljava/lang/String;)V
.end method

.method public abstract recycle()V
.end method

.method public abstract translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
.end method
