.class Lcom/oppo/translate/OppoTranslateService$1$2;
.super Ljava/lang/Object;
.source "OppoTranslateService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/OppoTranslateService$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/translate/OppoTranslateService$1;


# direct methods
.method constructor <init>(Lcom/oppo/translate/OppoTranslateService$1;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v0, v0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v0, v0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # setter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v0, v1}, Lcom/oppo/translate/OppoTranslateService;->access$202(Lcom/oppo/translate/OppoTranslateService;Z)Z

    .line 149
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v0, v0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # setter for: Lcom/oppo/translate/OppoTranslateService;->mAlreadyRejected:Z
    invoke-static {v0, v3}, Lcom/oppo/translate/OppoTranslateService;->access$402(Lcom/oppo/translate/OppoTranslateService;Z)Z

    .line 153
    :goto_0
    const-string v0, "OppoTranslateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss : mAlwaysAccepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v2, v2, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v2}, Lcom/oppo/translate/OppoTranslateService;->access$200(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mAlreadyRejected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v2, v2, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mAlreadyRejected:Z
    invoke-static {v2}, Lcom/oppo/translate/OppoTranslateService;->access$400(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentAccepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v2, v2, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v2}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v0, v0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$500(Lcom/oppo/translate/OppoTranslateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "always_accept"

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v2, v2, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v2}, Lcom/oppo/translate/OppoTranslateService;->access$200(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v0, v0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$500(Lcom/oppo/translate/OppoTranslateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "already_reject"

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v2, v2, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mAlreadyRejected:Z
    invoke-static {v2}, Lcom/oppo/translate/OppoTranslateService;->access$400(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v0, v0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v1, v1, Lcom/oppo/translate/OppoTranslateService$1;->val$savedInstanceState:Lcom/oppo/translate/OppoTranslateState;

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v2, v2, Lcom/oppo/translate/OppoTranslateService$1;->val$listener:Lcom/oppo/translate/IOppoTranslateAskListener;

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v3, v3, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v3}, Lcom/oppo/translate/OppoTranslateService;->access$300(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v3

    # invokes: Lcom/oppo/translate/OppoTranslateService;->onAskResult(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/oppo/translate/OppoTranslateService;->access$600(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V

    .line 157
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1$2;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v0, v0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # setter for: Lcom/oppo/translate/OppoTranslateService;->mAlreadyRejected:Z
    invoke-static {v0, v1}, Lcom/oppo/translate/OppoTranslateService;->access$402(Lcom/oppo/translate/OppoTranslateService;Z)Z

    goto/16 :goto_0
.end method
