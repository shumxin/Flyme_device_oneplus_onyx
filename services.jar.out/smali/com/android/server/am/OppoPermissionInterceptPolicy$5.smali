.class Lcom/android/server/am/OppoPermissionInterceptPolicy$5;
.super Ljava/lang/Object;
.source "OppoPermissionInterceptPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;->showWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

.field final synthetic val$mCountDownTimer:Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;

.field final synthetic val$pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iput-object p2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;->val$mCountDownTimer:Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;

    iput-object p3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;->val$pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;->val$mCountDownTimer:Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;

    invoke-virtual {v0}, Lcom/android/server/am/OppoPermissionInterceptPolicy$ChoiceCountDownTimer;->cancel()V

    .line 583
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPermissionHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1100(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$5$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy$5$1;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    return-void
.end method
