.class Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoiceCountDownTimer"
.end annotation


# instance fields
.field pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

.field permissionChoiceDialog:Landroid/app/AlertDialog;

.field rejectBtn:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .line 614
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 615
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->permissionChoiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 620
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mSaveCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$900(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->processPermission(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1000(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V

    .line 621
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1200(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/Context;

    move-result-object v2

    const v3, 0xc040487

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->isScreenOn()Z
    invoke-static {v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1300(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->rejectBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->onFinish()V

    goto :goto_0
.end method
