.class abstract Landroid/widget/OppoTranslateController$OnServiceListener;
.super Lcom/oppo/translate/IOppoTranslateServiceListener$Stub;
.source "OppoTranslateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoTranslateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OnServiceListener"
.end annotation


# instance fields
.field private final mOnAskListener:Landroid/widget/OppoTranslateController$OnAskListener;

.field private final mShowPrompt:Z

.field final synthetic this$0:Landroid/widget/OppoTranslateController;


# direct methods
.method public constructor <init>(Landroid/widget/OppoTranslateController;)V
    .locals 1

    .prologue
    .line 708
    iput-object p1, p0, Landroid/widget/OppoTranslateController$OnServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-direct {p0}, Lcom/oppo/translate/IOppoTranslateServiceListener$Stub;-><init>()V

    .line 709
    invoke-virtual {p0}, Landroid/widget/OppoTranslateController$OnServiceListener;->isShowPrompt()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/OppoTranslateController$OnServiceListener;->mShowPrompt:Z

    .line 710
    invoke-virtual {p0}, Landroid/widget/OppoTranslateController$OnServiceListener;->getAskListener()Landroid/widget/OppoTranslateController$OnAskListener;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OppoTranslateController$OnServiceListener;->mOnAskListener:Landroid/widget/OppoTranslateController$OnAskListener;

    .line 711
    return-void
.end method


# virtual methods
.method abstract getAskListener()Landroid/widget/OppoTranslateController$OnAskListener;
.end method

.method abstract isShowPrompt()Z
.end method

.method public onServiceConnected(Z)V
    .locals 5
    .param p1, "result"    # Z

    .prologue
    .line 715
    const/4 v1, 0x1

    const-string v2, "OppoTranslateController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Landroid/widget/OppoTranslateController$OnServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # setter for: Landroid/widget/OppoTranslateController;->mServiceReady:Z
    invoke-static {v1, p1}, Landroid/widget/OppoTranslateController;->access$502(Landroid/widget/OppoTranslateController;Z)Z

    .line 717
    iget-object v1, p0, Landroid/widget/OppoTranslateController$OnServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mServiceReady:Z
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$500(Landroid/widget/OppoTranslateController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    :try_start_0
    iget-object v1, p0, Landroid/widget/OppoTranslateController$OnServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mState:Lcom/oppo/translate/OppoTranslateState;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1400(Landroid/widget/OppoTranslateController;)Lcom/oppo/translate/OppoTranslateState;

    move-result-object v1

    const-string v2, "onServiceConnected"

    invoke-virtual {v1, v2}, Lcom/oppo/translate/OppoTranslateState;->dump(Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Landroid/widget/OppoTranslateController$OnServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mService:Lcom/oppo/translate/IOppoTranslateManager;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1500(Landroid/widget/OppoTranslateController;)Lcom/oppo/translate/IOppoTranslateManager;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/OppoTranslateController$OnServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mState:Lcom/oppo/translate/OppoTranslateState;
    invoke-static {v2}, Landroid/widget/OppoTranslateController;->access$1400(Landroid/widget/OppoTranslateController;)Lcom/oppo/translate/OppoTranslateState;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/OppoTranslateController$OnServiceListener;->mOnAskListener:Landroid/widget/OppoTranslateController$OnAskListener;

    iget-boolean v4, p0, Landroid/widget/OppoTranslateController$OnServiceListener;->mShowPrompt:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/oppo/translate/IOppoTranslateManager;->ask(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OppoTranslateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : onServiceConnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
