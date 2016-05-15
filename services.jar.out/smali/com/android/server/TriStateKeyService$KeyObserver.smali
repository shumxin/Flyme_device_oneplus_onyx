.class Lcom/android/server/TriStateKeyService$KeyObserver;
.super Landroid/os/UEventObserver;
.source "TriStateKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TriStateKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyObserver"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mSysFsPath:Ljava/lang/String;

.field private mUEventPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/TriStateKeyService;

.field private uEventLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/TriStateKeyService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "sysFsPath"    # Ljava/lang/String;
    .param p3, "uEventPath"    # Ljava/lang/String;
    .param p4, "uEventKey"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/TriStateKeyService$KeyObserver;->this$0:Lcom/android/server/TriStateKeyService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TriStateKeyService$KeyObserver;->uEventLock:Ljava/lang/Object;

    .line 87
    iput-object p2, p0, Lcom/android/server/TriStateKeyService$KeyObserver;->mSysFsPath:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/android/server/TriStateKeyService$KeyObserver;->mUEventPath:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/android/server/TriStateKeyService$KeyObserver;->mKey:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public broadcastState()V
    .locals 9

    .prologue
    const/16 v6, 0x400

    .line 93
    new-array v0, v6, [C

    .line 94
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .line 96
    .local v2, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/server/TriStateKeyService$KeyObserver;->mSysFsPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    :try_start_1
    invoke-virtual {v3, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 98
    .local v4, "len":I
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "state":Ljava/lang/String;
    sget-object v6, Lcom/android/server/TriStateKeyService;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    sget-object v6, Lcom/android/server/TriStateKeyService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switch_state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :cond_0
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Lcom/android/server/TriStateKeyService;->mState:I
    invoke-static {v6}, Lcom/android/server/TriStateKeyService;->access$102(I)I

    .line 106
    iget-object v6, p0, Lcom/android/server/TriStateKeyService$KeyObserver;->this$0:Lcom/android/server/TriStateKeyService;

    # invokes: Lcom/android/server/TriStateKeyService;->sendStateIntent()V
    invoke-static {v6}, Lcom/android/server/TriStateKeyService;->access$000(Lcom/android/server/TriStateKeyService;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    :goto_0
    if-eqz v3, :cond_3

    .line 115
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v2, v3

    .line 121
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v4    # "len":I
    .end local v5    # "state":Ljava/lang/String;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 107
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "len":I
    .restart local v5    # "state":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    sget-object v6, Lcom/android/server/TriStateKeyService;->TAG:Ljava/lang/String;

    const-string v7, "Error parsing state"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 110
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "len":I
    .end local v5    # "state":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 111
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :goto_2
    :try_start_5
    sget-object v6, Lcom/android/server/TriStateKeyService;->TAG:Ljava/lang/String;

    const-string v7, "Error reading sysfs state"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    if-eqz v2, :cond_1

    .line 115
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 116
    :catch_2
    move-exception v1

    .line 117
    sget-object v6, Lcom/android/server/TriStateKeyService;->TAG:Ljava/lang/String;

    const-string v7, "Error closing fileReader"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "len":I
    .restart local v5    # "state":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/TriStateKeyService;->TAG:Ljava/lang/String;

    const-string v7, "Error closing fileReader"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 118
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    goto :goto_1

    .line 113
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "len":I
    .end local v5    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_2

    .line 115
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 118
    :cond_2
    :goto_4
    throw v6

    .line 116
    :catch_4
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/TriStateKeyService;->TAG:Ljava/lang/String;

    const-string v8, "Error closing fileReader"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 113
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 110
    :catch_5
    move-exception v1

    goto :goto_2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "len":I
    .restart local v5    # "state":Ljava/lang/String;
    :cond_3
    move-object v2, v3

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 132
    iget-object v2, p0, Lcom/android/server/TriStateKeyService$KeyObserver;->uEventLock:Ljava/lang/Object;

    monitor-enter v2

    .line 133
    :try_start_0
    sget-object v1, Lcom/android/server/TriStateKeyService;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcom/android/server/TriStateKeyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/TriStateKeyService$KeyObserver;->mKey:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {p1, v1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/android/server/TriStateKeyService;->mState:I
    invoke-static {v1}, Lcom/android/server/TriStateKeyService;->access$102(I)I

    .line 139
    # getter for: Lcom/android/server/TriStateKeyService;->keyEventHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/TriStateKeyService;->access$200()Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    # getter for: Lcom/android/server/TriStateKeyService;->keyEventHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/TriStateKeyService;->access$200()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/TriStateKeyService$KeyObserver;->this$0:Lcom/android/server/TriStateKeyService;

    # getter for: Lcom/android/server/TriStateKeyService;->keyEventRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/TriStateKeyService;->access$300(Lcom/android/server/TriStateKeyService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x7d

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 145
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/TriStateKeyService;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing Uevent"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startObserving()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEVPATH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TriStateKeyService$KeyObserver;->mUEventPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/android/server/TriStateKeyService;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/android/server/TriStateKeyService;->TAG:Ljava/lang/String;

    const-string v1, "Started Observing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    return-void
.end method
