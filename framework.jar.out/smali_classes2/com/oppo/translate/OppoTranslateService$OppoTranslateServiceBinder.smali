.class Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;
.super Lcom/oppo/translate/IOppoTranslateService$Stub;
.source "OppoTranslateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/OppoTranslateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoTranslateServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/translate/OppoTranslateService;


# direct methods
.method private constructor <init>(Lcom/oppo/translate/OppoTranslateService;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    invoke-direct {p0}, Lcom/oppo/translate/IOppoTranslateService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/translate/OppoTranslateService;
    .param p2, "x1"    # Lcom/oppo/translate/OppoTranslateService$1;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;-><init>(Lcom/oppo/translate/OppoTranslateService;)V

    return-void
.end method

.method private isAccepted(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)Z
    .locals 5
    .param p1, "savedInstanceState"    # Lcom/oppo/translate/OppoTranslateState;
    .param p2, "listener"    # Lcom/oppo/translate/IOppoTranslateAskListener;
    .param p3, "prompt"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 345
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    iget-object v4, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    invoke-virtual {v4}, Lcom/oppo/translate/OppoTranslateService;->getSharedPrefName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/oppo/translate/OppoTranslateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    # setter for: Lcom/oppo/translate/OppoTranslateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/oppo/translate/OppoTranslateService;->access$502(Lcom/oppo/translate/OppoTranslateService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 346
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/oppo/translate/OppoTranslateService;->access$500(Lcom/oppo/translate/OppoTranslateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "always_accept"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v2, v3}, Lcom/oppo/translate/OppoTranslateService;->access$202(Lcom/oppo/translate/OppoTranslateService;Z)Z

    .line 347
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/oppo/translate/OppoTranslateService;->access$500(Lcom/oppo/translate/OppoTranslateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "already_reject"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/oppo/translate/OppoTranslateService;->mAlreadyRejected:Z
    invoke-static {v2, v3}, Lcom/oppo/translate/OppoTranslateService;->access$402(Lcom/oppo/translate/OppoTranslateService;Z)Z

    .line 348
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v2}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v2}, Lcom/oppo/translate/OppoTranslateService;->access$200(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mAlreadyRejected:Z
    invoke-static {v2}, Lcom/oppo/translate/OppoTranslateService;->access$400(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    invoke-virtual {v2, p1, p2}, Lcom/oppo/translate/OppoTranslateService;->showPromptRejectedDialog(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 354
    :cond_2
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    invoke-virtual {v2, p1, p2}, Lcom/oppo/translate/OppoTranslateService;->showPromptDialog(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public ask(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    .locals 2
    .param p1, "savedInstanceState"    # Lcom/oppo/translate/OppoTranslateState;
    .param p2, "listener"    # Lcom/oppo/translate/IOppoTranslateAskListener;
    .param p3, "prompt"    # Z

    .prologue
    const/4 v1, 0x1

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->isAccepted(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # setter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0, v1}, Lcom/oppo/translate/OppoTranslateService;->access$302(Lcom/oppo/translate/OppoTranslateService;Z)Z

    .line 303
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # invokes: Lcom/oppo/translate/OppoTranslateService;->onAskResult(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    invoke-static {v0, p1, p2, v1}, Lcom/oppo/translate/OppoTranslateService;->access$600(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V

    .line 305
    :cond_0
    return-void
.end method

.method public dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oppo/translate/IOppoTranslateResultListener;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "dict"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$900(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/translate/OppoTranslateEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/translate/OppoTranslateEngine;->dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # invokes: Lcom/oppo/translate/OppoTranslateService;->onError(Lcom/oppo/translate/IOppoTranslateResultListener;)V
    invoke-static {v0, p2}, Lcom/oppo/translate/OppoTranslateService;->access$1000(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    goto :goto_0
.end method

.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "getUri"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$900(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/translate/OppoTranslateEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/translate/OppoTranslateEngine;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pronounce(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "pronounce"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$900(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/translate/OppoTranslateEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/translate/OppoTranslateEngine;->pronounce(Ljava/lang/String;)V

    .line 333
    :cond_0
    return-void
.end method

.method public stop(Lcom/oppo/translate/OppoTranslateState;)V
    .locals 3
    .param p1, "outState"    # Lcom/oppo/translate/OppoTranslateState;

    .prologue
    .line 293
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "stop"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    invoke-virtual {v0, p1}, Lcom/oppo/translate/OppoTranslateService;->onSaveInstanceState(Lcom/oppo/translate/OppoTranslateState;)V

    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/translate/OppoTranslateState;->dump(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$900(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/translate/OppoTranslateEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/translate/OppoTranslateEngine;->recycle()V

    .line 297
    return-void
.end method

.method public translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oppo/translate/IOppoTranslateResultListener;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x1

    const-string v1, "OppoTranslateService"

    const-string v2, "translate"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mEngine:Lcom/oppo/translate/OppoTranslateEngine;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$900(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/translate/OppoTranslateEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/translate/OppoTranslateEngine;->translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$OppoTranslateServiceBinder;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # invokes: Lcom/oppo/translate/OppoTranslateService;->onError(Lcom/oppo/translate/IOppoTranslateResultListener;)V
    invoke-static {v0, p2}, Lcom/oppo/translate/OppoTranslateService;->access$1000(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    goto :goto_0
.end method
