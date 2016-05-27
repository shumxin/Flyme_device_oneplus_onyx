.class Lcom/android/internal/policy/impl/OppoShotScreenHelper$2;
.super Ljava/lang/Object;
.source "OppoShotScreenHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoShotScreenHelper;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoShotScreenHelper;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 86
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    iget-object v6, v5, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v6

    .line 87
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    iget-object v5, v5, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eq v5, p0, :cond_0

    .line 88
    monitor-exit v6

    .line 118
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 91
    .local v2, "messenger":Landroid/os/Messenger;
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 92
    .local v3, "msg":Landroid/os/Message;
    move-object v4, p0

    .line 93
    .local v4, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/internal/policy/impl/OppoShotScreenHelper$2$1;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    # getter for: Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->access$100(Lcom/android/internal/policy/impl/OppoShotScreenHelper;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5, v4}, Lcom/android/internal/policy/impl/OppoShotScreenHelper$2$1;-><init>(Lcom/android/internal/policy/impl/OppoShotScreenHelper$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 106
    .local v1, "h":Landroid/os/Handler;
    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 107
    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg2:I

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 108
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    # getter for: Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->access$200(Lcom/android/internal/policy/impl/OppoShotScreenHelper;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    # getter for: Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->access$200(Lcom/android/internal/policy/impl/OppoShotScreenHelper;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 110
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    # getter for: Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->access$300(Lcom/android/internal/policy/impl/OppoShotScreenHelper;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    # getter for: Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->access$300(Lcom/android/internal/policy/impl/OppoShotScreenHelper;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_2
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "myConn":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 114
    .restart local v1    # "h":Landroid/os/Handler;
    .restart local v2    # "messenger":Landroid/os/Messenger;
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v4    # "myConn":Landroid/content/ServiceConnection;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 121
    return-void
.end method
