.class Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 168
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 169
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 170
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    .end local v0    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 97
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 99
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 100
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 101
    :try_start_0
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 102
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    iput-object v3, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    .line 106
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_RECORD_SIZE Size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " total "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " #record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 111
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 114
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 115
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 116
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1

    :goto_1
    iput-boolean v3, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 117
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 118
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :cond_1
    move v3, v4

    .line 116
    goto :goto_1

    .line 121
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 122
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 123
    :try_start_2
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 124
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iput-object v3, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phonebookReady:Z

    .line 133
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget v6, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->simrecord_efid:I

    # invokes: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I
    invoke-static {v5, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$000(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->simrecord_efid:I

    .line 138
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v5, "PBREADY"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->broadcastIccPhoneBookReadyIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_2
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 147
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v3

    .line 141
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v5, "Cannot load ADN records"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 152
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 153
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 154
    :try_start_4
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    .line 155
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 156
    .local v2, "fieldInfo":[I
    array-length v3, v2

    if-ne v3, v6, :cond_4

    .line 157
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v5, 0x1

    aget v5, v2, v5

    iput v5, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->simNameLeng:I

    .line 160
    .end local v2    # "fieldInfo":[I
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 161
    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v3

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x66 -> :sswitch_3
    .end sparse-switch
.end method