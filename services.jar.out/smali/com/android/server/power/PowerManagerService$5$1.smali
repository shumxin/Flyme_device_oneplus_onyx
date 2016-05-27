.class Lcom/android/server/power/PowerManagerService$5$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$5;->onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$5;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$5;)V
    .locals 0

    .prologue
    .line 5051
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$5$1;->this$1:Lcom/android/server/power/PowerManagerService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 5054
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5$1;->this$1:Lcom/android/server/power/PowerManagerService$5;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenSwitchObserver:Landroid/os/UEventObserver;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$8800(Lcom/android/server/power/PowerManagerService;)Landroid/os/UEventObserver;

    move-result-object v10

    monitor-enter v10

    .line 5055
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5$1;->this$1:Lcom/android/server/power/PowerManagerService$5;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 5056
    .local v9, "power":Landroid/os/PowerManager;
    if-eqz v9, :cond_0

    .line 5057
    const/4 v1, 0x1

    const-string v2, "screen_switch"

    invoke-virtual {v9, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    .line 5058
    .local v8, "partial":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5059
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: static electricity ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gotosleep"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5060
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5$1;->this$1:Lcom/android/server/power/PowerManagerService$5;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5062
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5066
    :goto_0
    const v1, 0x3000001a

    :try_start_2
    const-string v2, "screen_switch"

    invoke-virtual {v9, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 5068
    .local v7, "full":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5069
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5070
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5072
    .end local v7    # "full":Landroid/os/PowerManager$WakeLock;
    .end local v8    # "partial":Landroid/os/PowerManager$WakeLock;
    :cond_0
    monitor-exit v10

    .line 5073
    return-void

    .line 5063
    .restart local v8    # "partial":Landroid/os/PowerManager$WakeLock;
    :catch_0
    move-exception v0

    .line 5064
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5072
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "partial":Landroid/os/PowerManager$WakeLock;
    .end local v9    # "power":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
