.class Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;
.super Landroid/os/Handler;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OEMNetworkModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p2, "x1"    # Lcom/android/internal/telephony/SubscriptionController$1;

    .prologue
    .line 1713
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1716
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1751
    :cond_0
    :goto_0
    return-void

    .line 1719
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 1720
    .local v3, "subId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_CONFIG_LTE_DONE. set dds on subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->access$500(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 1721
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->regDdsSwitchInfo()V
    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionController;->access$600(Lcom/android/internal/telephony/SubscriptionController;)V

    .line 1722
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_0

    .line 1727
    .end local v3    # "subId":Ljava/lang/Integer;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1728
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 1729
    .restart local v3    # "subId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OEM_EVENT_CONFIG_DDS_DONE subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", phone id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->access$500(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 1731
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->unregDdsSwitchInfo()V
    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionController;->access$700(Lcom/android/internal/telephony/SubscriptionController;)V

    .line 1732
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1734
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    .line 1735
    .local v2, "data_phone":Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 1736
    .local v1, "data_pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v5, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->OemsetInitialAttachApn()V

    .line 1739
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 1740
    .local v4, "subinfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_1

    .line 1741
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->storeOEMDefaultDataCardIccid(Ljava/lang/String;)V

    .line 1742
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->storeOEMDefaultDataCardSlot(I)V

    goto/16 :goto_0

    .line 1745
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The dds subId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->access$500(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1716
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
