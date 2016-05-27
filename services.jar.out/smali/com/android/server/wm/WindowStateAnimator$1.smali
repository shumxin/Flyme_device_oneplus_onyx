.class Lcom/android/server/wm/WindowStateAnimator$1;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowStateAnimator;->instancePendingRunnableIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowStateAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 0

    .prologue
    .line 2062
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    .prologue
    .line 2065
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    # getter for: Lcom/android/server/wm/WindowStateAnimator;->mCheckPendingCount:I
    invoke-static {v0}, Lcom/android/server/wm/WindowStateAnimator;->access$000(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_4

    .line 2066
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    # invokes: Lcom/android/server/wm/WindowStateAnimator;->checkSystemFrozenDuePending()Z
    invoke-static {v0}, Lcom/android/server/wm/WindowStateAnimator;->access$100(Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2067
    sget-boolean v0, Lcom/android/server/wm/WindowStateAnimator;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    .line 2068
    const-string v0, "WindowStateAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowStateAnimator checkStatePendingRunnable return true mWin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCheckPendingCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    # getter for: Lcom/android/server/wm/WindowStateAnimator;->mCheckPendingCount:I
    invoke-static {v2}, Lcom/android/server/wm/WindowStateAnimator;->access$000(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    # operator++ for: Lcom/android/server/wm/WindowStateAnimator;->mCheckPendingCount:I
    invoke-static {v0}, Lcom/android/server/wm/WindowStateAnimator;->access$008(Lcom/android/server/wm/WindowStateAnimator;)I

    .line 2071
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    # getter for: Lcom/android/server/wm/WindowStateAnimator;->checkStatePendingRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/wm/WindowStateAnimator;->access$200(Lcom/android/server/wm/WindowStateAnimator;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2089
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2073
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/android/server/wm/WindowStateAnimator;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_3

    .line 2074
    const-string v0, "WindowStateAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowStateAnimator checkStatePendingRunnable return false, don\'t kill, mWin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wm/WindowStateAnimator;->checkStatePendingRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->access$202(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2065
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2080
    :cond_4
    :try_start_2
    const-string v0, "WindowStateAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowStateAnimator checkStatePendingRunnable kill app!!!, mWin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wm/WindowStateAnimator;->checkStatePendingRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->access$202(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2084
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v1, :cond_1

    .line 2085
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$1;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
