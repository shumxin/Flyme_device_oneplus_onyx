.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OppoPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyLockModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/OppoPhoneWindowManager$1;

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 847
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "KeyLockMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 848
    .local v0, "nMode":I
    const-string v2, "ProcessName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "processName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 850
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->setVideoMode(I)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;I)V

    .line 852
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 853
    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyLockModeReceiver KeyLockMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ProcessName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const-string v2, "com.android.individuationSettings:individuationSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mResumeForChangingTheme:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 858
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$802(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->setVideoMode(I)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;I)V

    .line 865
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 866
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyLockIntentProcess:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_2
    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyLockModeReceiver KeyLockMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ProcessName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v2, "com.android.individuationSettings:individuationSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mPauseForChangingTheme:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$802(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Z)Z

    .line 872
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mResumeForChangingTheme:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->FORCE_RESUME_FOR_CHANGING_THEME:J
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
