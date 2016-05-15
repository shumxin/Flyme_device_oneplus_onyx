.class Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/OemThreePointersGesturesListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OemPhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShotScreenEnable()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z

    move-result v0

    return v0
.end method

.method public onPauseDeliverPointer()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    const/16 v1, 0xc

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessage(I)Z

    .line 305
    :cond_1
    return-void
.end method

.method public onResumeDeliverPointer()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    const/16 v1, 0xc

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessage(I)Z

    .line 294
    :cond_1
    return-void
.end method

.method public onSwipeThreeFinger()V
    .locals 4

    .prologue
    .line 277
    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "three finger screen shot enabled? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OemShotScreenHelper;->shotScreen(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;I)V

    .line 283
    :cond_1
    return-void
.end method
