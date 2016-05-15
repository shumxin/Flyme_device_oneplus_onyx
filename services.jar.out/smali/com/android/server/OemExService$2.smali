.class Lcom/android/server/OemExService$2;
.super Lcom/oem/os/IOemUeventCallback$Stub;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Lcom/oem/os/IOemUeventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputEvent(Ljava/lang/String;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 538
    const-string v4, "OemExService"

    const-string v5, "oemEvent mThreeKeyReceiver "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mSystemComplete:Z
    invoke-static {v4}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 592
    :goto_0
    return-void

    .line 542
    :cond_0
    const-string v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oemEvent message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->getUeventMessage(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v4, p1}, Lcom/android/server/OemExService;->access$600(Lcom/android/server/OemExService;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 544
    .local v1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "SWITCH_STATE"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "switch_state":Ljava/lang/String;
    const-string v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oemEvent message switch_state  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v3, "threeKey":Landroid/content/Intent;
    const-string v4, "switch_state"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    sget-object v4, Lcom/android/server/OemExService;->mCurrentThreeKeyState:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 551
    const-string v4, "2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 552
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    iget-object v4, v4, Lcom/android/server/OemExService;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 556
    :cond_1
    :goto_1
    const-string v4, "switch_boot"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    :goto_2
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 561
    sput-object v2, Lcom/android/server/OemExService;->mCurrentThreeKeyState:Ljava/lang/String;

    .line 563
    const-string v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 564
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_mode"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$800(Lcom/android/server/OemExService;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 567
    .local v0, "mConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 568
    iput-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 569
    iput-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 570
    const/4 v4, 0x0

    iput v4, v0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 571
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v4, v0}, Lcom/android/server/OemExService;->access$900(Lcom/android/server/OemExService;Landroid/service/notification/ZenModeConfig;)Z

    goto/16 :goto_0

    .line 553
    .end local v0    # "mConfig":Landroid/service/notification/ZenModeConfig;
    :cond_2
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 554
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    iget-object v4, v4, Lcom/android/server/OemExService;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    .line 558
    :cond_3
    const-string v4, "switch_boot"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 572
    :cond_4
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 573
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_mode"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$800(Lcom/android/server/OemExService;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 576
    .restart local v0    # "mConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 577
    iput-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 578
    iput-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 579
    iput v8, v0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 580
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v4, v0}, Lcom/android/server/OemExService;->access$900(Lcom/android/server/OemExService;Landroid/service/notification/ZenModeConfig;)Z

    goto/16 :goto_0

    .line 582
    .end local v0    # "mConfig":Landroid/service/notification/ZenModeConfig;
    :cond_5
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_mode"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$800(Lcom/android/server/OemExService;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 585
    .restart local v0    # "mConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 586
    iput-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 587
    iput-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 588
    iput v9, v0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 589
    iget-object v4, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v4, v0}, Lcom/android/server/OemExService;->access$900(Lcom/android/server/OemExService;Landroid/service/notification/ZenModeConfig;)Z

    goto/16 :goto_0
.end method
