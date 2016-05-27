.class Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;
.super Lcom/android/internal/util/State;
.source "DdsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DdsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DdsSwitchState"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DdsScheduler[DdsSwitchState]"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 641
    const-string v1, "DdsScheduler[DdsSwitchState]"

    const-string v2, "Enter"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getFirstWaitingRequest()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 646
    .local v0, "nr":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2600(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->setDdsIdleState(Z)V

    .line 648
    if-eqz v0, :cond_0

    .line 649
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->triggerSwitch(Landroid/net/NetworkRequest;)V

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    const-string v1, "DdsScheduler[DdsSwitchState]"

    const-string v2, "Error"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 657
    const-string v0, "DdsScheduler[DdsSwitchState]"

    const-string v1, "Exit"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 662
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 700
    iget v5, p1, Landroid/os/Message;->what:I

    const v7, 0x84005

    if-ne v5, v7, :cond_0

    .line 701
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    const/16 v7, -0x3e8

    # setter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->messageReqId:I
    invoke-static {v5, v7}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$602(Lcom/android/internal/telephony/dataconnection/DdsScheduler;I)I

    .line 704
    :cond_0
    const-string v5, "DdsScheduler[DdsSwitchState]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 705
    :goto_0
    return v5

    .line 665
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 666
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/NetworkRequest;

    .line 667
    .local v3, "n":Landroid/net/NetworkRequest;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 668
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->updateCurrentDds(Landroid/net/NetworkRequest;)V

    .line 670
    iget v5, p1, Landroid/os/Message;->what:I

    const v6, 0x84003

    if-ne v5, v6, :cond_1

    .line 671
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mPsAttachReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2100(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2700(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    .line 694
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 673
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$900(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2800(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 676
    :cond_2
    const-string v5, "DdsScheduler[DdsSwitchState]"

    const-string v8, "Switch failed, move back to idle state"

    invoke-static {v5, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->removeRequest(Landroid/net/NetworkRequest;)V

    .line 682
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getFirstWaitingRequest()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 683
    .local v4, "nr":Landroid/net/NetworkRequest;
    if-nez v0, :cond_4

    move-object v2, v7

    .line 684
    .local v2, "lastRequest":Landroid/net/NetworkRequest;
    :goto_2
    if-nez v2, :cond_5

    move-object v1, v7

    .line 685
    .local v1, "lastReqestCap":Landroid/net/NetworkCapabilities;
    :goto_3
    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 688
    const-string v5, "DdsScheduler[DdsSwitchState]"

    const-string v6, "deal with wifi problem"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->triggerSwitch(Landroid/net/NetworkRequest;)V

    .line 692
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsIdleState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2900(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$3000(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 683
    .end local v1    # "lastReqestCap":Landroid/net/NetworkCapabilities;
    .end local v2    # "lastRequest":Landroid/net/NetworkRequest;
    :cond_4
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkRequest;

    move-object v2, v5

    goto :goto_2

    .line 684
    .restart local v2    # "lastRequest":Landroid/net/NetworkRequest;
    :cond_5
    iget-object v1, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x84002
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
