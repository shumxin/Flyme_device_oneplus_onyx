.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    if-nez v1, :cond_0

    .line 267
    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mBootShutdownReceiver: mGlobalActions is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    .line 276
    :cond_2
    :goto_1
    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootShutdownReceiver: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isPRStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    sget-boolean v3, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_3
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    goto :goto_1
.end method
