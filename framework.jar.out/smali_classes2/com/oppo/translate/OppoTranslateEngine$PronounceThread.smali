.class Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;
.super Ljava/lang/Object;
.source "OppoTranslateEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/OppoTranslateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PronounceThread"
.end annotation


# instance fields
.field private mContent:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/translate/OppoTranslateEngine;


# direct methods
.method private constructor <init>(Lcom/oppo/translate/OppoTranslateEngine;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;->this$0:Lcom/oppo/translate/OppoTranslateEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;->mContent:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/translate/OppoTranslateEngine;Lcom/oppo/translate/OppoTranslateEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/translate/OppoTranslateEngine;
    .param p2, "x1"    # Lcom/oppo/translate/OppoTranslateEngine$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;-><init>(Lcom/oppo/translate/OppoTranslateEngine;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;->this$0:Lcom/oppo/translate/OppoTranslateEngine;

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/translate/OppoTranslateEngine;->onPronounce(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OppoTranslateEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : onPronounce"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateEngine$PronounceThread;->mContent:Ljava/lang/String;

    .line 251
    return-void
.end method
