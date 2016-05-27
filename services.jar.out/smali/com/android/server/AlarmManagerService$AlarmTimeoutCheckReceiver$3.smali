.class Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$3;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0

    .prologue
    .line 2931
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$3;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2933
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$3;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v6, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2934
    const/4 v4, 0x0

    .local v4, "iu":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$3;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 2935
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$3;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 2936
    .local v5, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_1
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 2937
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2938
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    iput v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeupWhenScreenoff:I

    .line 2939
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->wakeupCountStartTime:J

    .line 2941
    const/4 v3, 0x0

    .local v3, "is":I
    :goto_2
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 2942
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2943
    .local v1, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v6, v1, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    iput v6, v1, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeupWhenScreenoff:I

    .line 2941
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2936
    .end local v1    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2934
    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v3    # "is":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2947
    .end local v2    # "ip":I
    .end local v5    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2948
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$3;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    # getter for: Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->access$1600(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2949
    return-void

    .line 2947
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
