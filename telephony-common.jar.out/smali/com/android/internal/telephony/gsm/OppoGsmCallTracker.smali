.class public final Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;
.super Lcom/android/internal/telephony/gsm/GsmCallTracker;
.source "OppoGsmCallTracker.java"


# instance fields
.field private blockingNumer:Ljava/lang/String;

.field private pollMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 63
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    .line 64
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private localblockBlackNameList(Lcom/android/internal/telephony/DriverCall;Landroid/os/Message;)V
    .locals 6
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "vExitBlackList":Z
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v2, v3, :cond_1

    .line 103
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    .line 105
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->isJudgeBlackListPhone(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 110
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 111
    iget v0, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 112
    .local v0, "idx":I
    if-lez v0, :cond_3

    const/4 v2, 0x7

    if-ge v0, v2, :cond_3

    .line 113
    sget-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->DBG_POLL:Z

    if-eqz v2, :cond_2

    const-string v2, "oppo block the incoming and hangup it!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 124
    .end local v0    # "idx":I
    :cond_3
    :goto_0
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 125
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    .line 126
    return-void

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 119
    sget-boolean v2, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->DBG_POLL:Z

    if-eqz v2, :cond_5

    const-string v2, "oppo accept the incoming call!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 120
    :cond_5
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollMsg:Landroid/os/Message;

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private oppohandlePollCalls(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 131
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 133
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_3

    .line 134
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .line 143
    .local v8, "polledCalls":Ljava/util/List;
    const/4 v7, 0x0

    .line 145
    .local v7, "newRinging":Lcom/android/internal/telephony/DriverCall;
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v2, 0x0

    .local v2, "curDC":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "dcSize":I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v9, v9

    if-ge v5, v9, :cond_b

    .line 146
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v1, v9, v5

    .line 147
    .local v1, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v3, 0x0

    .line 149
    .local v3, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v2, v4, :cond_0

    .line 150
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    check-cast v3, Lcom/android/internal/telephony/DriverCall;

    .line 151
    .restart local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    iget v9, v3, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v10, v5, 0x1

    if-ne v9, v10, :cond_6

    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 158
    :cond_0
    :goto_1
    sget-boolean v9, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->DBG_POLL:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "poll: conn[i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 160
    :cond_1
    if-nez v1, :cond_9

    if-eqz v3, :cond_9

    .line 161
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v9, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 145
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2    # "curDC":I
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v4    # "dcSize":I
    .end local v5    # "i":I
    .end local v7    # "newRinging":Lcom/android/internal/telephony/DriverCall;
    .end local v8    # "polledCalls":Ljava/util/List;
    :cond_3
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 189
    :cond_4
    :goto_3
    return-void

    .line 139
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 154
    .restart local v1    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v2    # "curDC":I
    .restart local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v4    # "dcSize":I
    .restart local v5    # "i":I
    .restart local v7    # "newRinging":Lcom/android/internal/telephony/DriverCall;
    .restart local v8    # "polledCalls":Ljava/util/List;
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 164
    :cond_7
    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v9, v10, :cond_8

    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v9, v10, :cond_2

    .line 165
    :cond_8
    move-object v7, v3

    goto :goto_2

    .line 168
    :cond_9
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 170
    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v9, v10, :cond_a

    iget-object v9, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v9, v10, :cond_2

    .line 171
    :cond_a
    move-object v7, v3

    goto :goto_2

    .line 176
    .end local v1    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_b
    if-eqz v7, :cond_d

    .line 177
    const/4 v6, 0x0

    .line 178
    .local v6, "isBlockedNumber":Z
    iget-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v9, :cond_c

    iget-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 179
    const/4 v6, 0x1

    .line 181
    :cond_c
    if-nez v6, :cond_4

    .line 182
    iget-object v9, v7, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->blockingNumer:Ljava/lang/String;

    .line 183
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->localblockBlackNameList(Lcom/android/internal/telephony/DriverCall;Landroid/os/Message;)V

    goto :goto_3

    .line 188
    .end local v6    # "isBlockedNumber":Z
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v1, :cond_1

    .line 76
    const-string v1, "GsmCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] while being destroyed. Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 82
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 84
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v1, :cond_0

    .line 85
    sget-boolean v1, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->DBG_POLL:Z

    if-eqz v1, :cond_2

    const-string v1, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->log(Ljava/lang/String;)V

    .line 86
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mNeedsPoll:Z

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OppoGsmCallTracker;->oppohandlePollCalls(Landroid/os/Message;)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
