.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .prologue
    .line 5461
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Landroid/media/AudioService$1;

    .prologue
    .line 5461
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5464
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 5469
    .local v10, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5470
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 5473
    .local v22, "dockState":I
    packed-switch v22, :pswitch_data_0

    .line 5488
    const/16 v18, 0x0

    .line 5492
    .local v18, "config":I
    :goto_0
    const/4 v3, 0x3

    move/from16 v0, v22

    if-eq v0, v3, :cond_1

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 5495
    :cond_0
    const/4 v3, 0x3

    move/from16 v0, v18

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5497
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v22

    # setter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$8902(Landroid/media/AudioService;I)I

    .line 5841
    .end local v18    # "config":I
    .end local v22    # "dockState":I
    :cond_2
    :goto_1
    return-void

    .line 5475
    .restart local v22    # "dockState":I
    :pswitch_0
    const/16 v18, 0x7

    .line 5476
    .restart local v18    # "config":I
    goto :goto_0

    .line 5478
    .end local v18    # "config":I
    :pswitch_1
    const/16 v18, 0x6

    .line 5479
    .restart local v18    # "config":I
    goto :goto_0

    .line 5481
    .end local v18    # "config":I
    :pswitch_2
    const/16 v18, 0x8

    .line 5482
    .restart local v18    # "config":I
    goto :goto_0

    .line 5484
    .end local v18    # "config":I
    :pswitch_3
    const/16 v18, 0x9

    .line 5485
    .restart local v18    # "config":I
    goto :goto_0

    .line 5498
    .end local v18    # "config":I
    .end local v22    # "dockState":I
    :cond_3
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5499
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 5501
    .local v33, "state":I
    const/16 v30, 0x10

    .line 5502
    .local v30, "outDevice":I
    const v26, -0x7ffffff8

    .line 5503
    .local v26, "inDevice":I
    const/4 v11, 0x0

    .line 5505
    .local v11, "address":Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/bluetooth/BluetoothDevice;

    .line 5506
    .local v16, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v16, :cond_2

    .line 5510
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 5511
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v15

    .line 5512
    .local v15, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v15, :cond_4

    .line 5513
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 5524
    :cond_4
    :goto_2
    invoke-static {v11}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5525
    const-string v11, ""

    .line 5528
    :cond_5
    const/4 v3, 0x2

    move/from16 v0, v33

    if-ne v0, v3, :cond_6

    const/16 v19, 0x1

    .line 5529
    .local v19, "connected":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v19

    move/from16 v1, v30

    # invokes: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v3, v0, v1, v11}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v19

    move/from16 v1, v26

    # invokes: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v3, v0, v1, v11}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v34, 0x1

    .line 5531
    .local v34, "success":Z
    :goto_4
    if-eqz v34, :cond_2

    .line 5532
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 5533
    if-eqz v19, :cond_8

    .line 5534
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v16

    # setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 5539
    :goto_5
    monitor-exit v4

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5516
    .end local v19    # "connected":Z
    .end local v34    # "success":Z
    :sswitch_0
    const/16 v30, 0x20

    .line 5517
    goto :goto_2

    .line 5519
    :sswitch_1
    const/16 v30, 0x40

    goto :goto_2

    .line 5528
    :cond_6
    const/16 v19, 0x0

    goto :goto_3

    .line 5529
    .restart local v19    # "connected":Z
    :cond_7
    const/16 v34, 0x0

    goto :goto_4

    .line 5536
    .restart local v34    # "success":Z
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 5537
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v3}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 5541
    .end local v11    # "address":Ljava/lang/String;
    .end local v15    # "btClass":Landroid/bluetooth/BluetoothClass;
    .end local v16    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v19    # "connected":Z
    .end local v26    # "inDevice":I
    .end local v30    # "outDevice":I
    .end local v33    # "state":I
    .end local v34    # "success":Z
    :cond_9
    const-string v3, "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5542
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 5544
    .restart local v33    # "state":I
    const-string v3, "card"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 5545
    .local v12, "alsaCard":I
    const-string v3, "device"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 5547
    .local v13, "alsaDevice":I
    const/4 v3, -0x1

    if-ne v12, v3, :cond_a

    const/4 v3, -0x1

    if-ne v13, v3, :cond_a

    const-string v31, ""

    .line 5551
    .local v31, "params":Ljava/lang/String;
    :goto_6
    const/16 v30, 0x2000

    .line 5552
    .restart local v30    # "outDevice":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v30

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 5547
    .end local v30    # "outDevice":I
    .end local v31    # "params":Ljava/lang/String;
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_6

    .line 5553
    .end local v12    # "alsaCard":I
    .end local v13    # "alsaDevice":I
    .end local v33    # "state":I
    :cond_b
    const-string v3, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5559
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "usb_audio_automatic_routing_disabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 5561
    .local v27, "isDisabled":I
    if-nez v27, :cond_2

    .line 5565
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 5567
    .restart local v33    # "state":I
    const-string v3, "card"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 5568
    .restart local v12    # "alsaCard":I
    const-string v3, "device"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 5569
    .restart local v13    # "alsaDevice":I
    const-string v3, "hasPlayback"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    .line 5570
    .local v25, "hasPlayback":Z
    const-string v3, "hasCapture"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 5571
    .local v23, "hasCapture":Z
    const-string v3, "hasMIDI"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 5573
    .local v24, "hasMIDI":Z
    const/4 v3, -0x1

    if-ne v12, v3, :cond_d

    const/4 v3, -0x1

    if-ne v13, v3, :cond_d

    const-string v31, ""

    .line 5577
    .restart local v31    # "params":Ljava/lang/String;
    :goto_7
    if-eqz v25, :cond_c

    .line 5578
    const/16 v30, 0x4000

    .line 5579
    .restart local v30    # "outDevice":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v30

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 5583
    .end local v30    # "outDevice":I
    :cond_c
    if-eqz v23, :cond_2

    .line 5584
    const v26, -0x7ffff000

    .line 5585
    .restart local v26    # "inDevice":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v26

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 5573
    .end local v26    # "inDevice":I
    .end local v31    # "params":Ljava/lang/String;
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto :goto_7

    .line 5587
    .end local v12    # "alsaCard":I
    .end local v13    # "alsaDevice":I
    .end local v23    # "hasCapture":Z
    .end local v24    # "hasMIDI":Z
    .end local v25    # "hasPlayback":Z
    .end local v27    # "isDisabled":I
    .end local v33    # "state":I
    :cond_e
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 5588
    const/4 v14, 0x0

    .line 5589
    .local v14, "broadcast":Z
    const/16 v32, -0x1

    .line 5590
    .local v32, "scoAudioState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 5591
    :try_start_2
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 5593
    .local v17, "btState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_10

    .line 5597
    :cond_f
    const/4 v14, 0x1

    .line 5599
    :cond_10
    packed-switch v17, :pswitch_data_1

    .line 5621
    :cond_11
    :goto_8
    const/4 v14, 0x0

    .line 5624
    :cond_12
    :goto_9
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5625
    if-eqz v14, :cond_2

    .line 5626
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v32

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;I)V

    .line 5629
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5630
    .local v29, "newIntent":Landroid/content/Intent;
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5631
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v29

    # invokes: Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 5601
    .end local v29    # "newIntent":Landroid/content/Intent;
    :pswitch_4
    const/16 v32, 0x1

    .line 5602
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_12

    .line 5605
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I

    goto :goto_9

    .line 5624
    .end local v17    # "btState":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 5609
    .restart local v17    # "btState":I
    :pswitch_5
    const/16 v32, 0x0

    .line 5610
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I

    .line 5611
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_9

    .line 5614
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_11

    .line 5617
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_8

    .line 5633
    .end local v14    # "broadcast":Z
    .end local v17    # "btState":I
    .end local v32    # "scoAudioState":I
    :cond_13
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5634
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorRotation:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 5635
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/AudioService$AudioOrientationEventListener;->onOrientationChanged(I)V

    .line 5636
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioService$AudioOrientationEventListener;->enable()V

    .line 5638
    :cond_14
    const-string/jumbo v3, "screen_state=on"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5639
    :cond_15
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 5640
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorRotation:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 5642
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioService$AudioOrientationEventListener;->disable()V

    .line 5644
    :cond_16
    const-string/jumbo v3, "screen_state=off"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5645
    :cond_17
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5646
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    # invokes: Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5647
    :cond_18
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 5649
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5657
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v3}, Landroid/media/AudioService;->access$9400(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaFocusControl;->discardAudioFocusOwner()V

    .line 5660
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    # invokes: Landroid/media/AudioService;->readAudioSettings(Z)V
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;Z)V

    .line 5662
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v8}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 5671
    :cond_19
    # getter for: Landroid/media/AudioService;->mIsH2:Z
    invoke-static {}, Landroid/media/AudioService;->access$9600()Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "com.oem.intent.action.THREE_KEY_MODE_BOOT"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 5672
    const-string/jumbo v3, "switch_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 5673
    .local v35, "switch_state":Ljava/lang/String;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switch_state_boot ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5674
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 5675
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 5678
    :cond_1a
    const-string v3, "AudioService"

    const-string/jumbo v5, "switch_state connectted headset or A2DB"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5679
    const-string v3, "1"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 5680
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state_boot1 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5681
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x1

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5682
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5683
    const/4 v3, 0x5

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5684
    const/4 v3, 0x7

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5685
    const/16 v3, 0x8

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5686
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5687
    const/4 v3, 0x6

    const/16 v5, 0xd

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5738
    :cond_1b
    :goto_a
    monitor-exit v4

    goto/16 :goto_1

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 5688
    :cond_1c
    :try_start_6
    const-string v3, "2"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 5689
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state_boot2 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5690
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5691
    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5692
    const/4 v3, 0x5

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5693
    const/4 v3, 0x7

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5694
    const/16 v3, 0x8

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5695
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5696
    const/4 v3, 0x6

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_a

    .line 5697
    :cond_1d
    const-string v3, "3"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 5698
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state_boot3 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5699
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5700
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5701
    const/4 v3, 0x7

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5702
    const/16 v3, 0x8

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5703
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5704
    const/4 v3, 0x5

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5705
    const/4 v3, 0x6

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto/16 :goto_a

    .line 5708
    :cond_1e
    const-string v3, "1"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 5709
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state_boot1 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5710
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x1

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5711
    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5712
    const/4 v3, 0x7

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5713
    const/16 v3, 0x8

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5714
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5715
    const/4 v3, 0x5

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5716
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v3}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 5717
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v6, 0x2

    # invokes: Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v3, v5, v6}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 5718
    :cond_1f
    const-string v3, "2"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 5719
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state_boot2 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5720
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5721
    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5722
    const/4 v3, 0x7

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5723
    const/16 v3, 0x8

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5724
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5725
    const/4 v3, 0x5

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5726
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v3}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 5727
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v6, 0x2

    # invokes: Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v3, v5, v6}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 5728
    :cond_20
    const-string v3, "3"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 5729
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state_boot3 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5730
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5731
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5732
    const/4 v3, 0x7

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5733
    const/16 v3, 0x8

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5734
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5735
    const/4 v3, 0x5

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_a

    .line 5739
    .end local v35    # "switch_state":Ljava/lang/String;
    :cond_21
    # getter for: Landroid/media/AudioService;->mIsH2:Z
    invoke-static {}, Landroid/media/AudioService;->access$9600()Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v3, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 5740
    const-string/jumbo v3, "switch_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 5741
    .restart local v35    # "switch_state":Ljava/lang/String;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switch_state ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5742
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 5743
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 5746
    :cond_22
    const-string v3, "AudioService"

    const-string/jumbo v5, "switch_state connectted headset or A2DB"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5747
    const-string v3, "1"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 5748
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state1 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5749
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x1

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5750
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5751
    const/4 v3, 0x5

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5752
    const/4 v3, 0x7

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5753
    const/16 v3, 0x8

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5754
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5755
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    # invokes: Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V
    invoke-static {v3, v5, v6, v7, v8}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;IIIZ)V

    .line 5756
    const/4 v3, 0x6

    const/16 v5, 0xd

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5824
    :cond_23
    :goto_b
    monitor-exit v4

    goto/16 :goto_1

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3

    .line 5757
    :cond_24
    :try_start_8
    const-string v3, "2"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 5758
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state2 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5759
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5760
    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5761
    const/4 v3, 0x5

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5762
    const/4 v3, 0x7

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5763
    const/16 v3, 0x8

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5764
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5765
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v3}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    const/4 v5, 0x3

    aget-object v3, v3, v5

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v28, v3, 0xa

    .line 5767
    .local v28, "mnew_Music_volume":I
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mnew_Music_volume ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mold_Music_volume ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v6}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5768
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v3}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)I

    move-result v3

    move/from16 v0, v28

    if-eq v3, v0, :cond_25

    .line 5769
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v6}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    const/4 v7, 0x2

    const/4 v8, 0x0

    # invokes: Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V
    invoke-static {v3, v5, v6, v7, v8}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;IIIZ)V

    .line 5771
    :cond_25
    const/4 v3, 0x6

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto/16 :goto_b

    .line 5772
    .end local v28    # "mnew_Music_volume":I
    :cond_26
    const-string v3, "3"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 5773
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state3 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5774
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5775
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5776
    const/4 v3, 0x7

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5777
    const/16 v3, 0x8

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5778
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5779
    const/4 v3, 0x5

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5780
    const/4 v3, 0x6

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto/16 :goto_b

    .line 5783
    :cond_27
    const-string v3, "1"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 5784
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state1 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x1

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5786
    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5787
    const/4 v3, 0x7

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5788
    const/16 v3, 0x8

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5789
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5790
    const/4 v3, 0x5

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5791
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;I)I

    move-result v20

    .line 5792
    .local v20, "device":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v20

    # invokes: Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V
    invoke-static {v3, v5, v6, v0, v7}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;IIIZ)V

    .line 5794
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v3}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 5795
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v3}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 5797
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v6, 0x2

    # invokes: Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v3, v5, v6}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 5798
    .end local v20    # "device":I
    :cond_29
    const-string v3, "2"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 5799
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state2 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5800
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5801
    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5802
    const/4 v3, 0x7

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5803
    const/16 v3, 0x8

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5804
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5805
    const/4 v3, 0x5

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5806
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v28

    .line 5807
    .restart local v28    # "mnew_Music_volume":I
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mnew_Music_volume ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mold_Music_volume ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v6}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5808
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v3}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)I

    move-result v3

    move/from16 v0, v28

    if-eq v3, v0, :cond_2a

    .line 5809
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;I)I

    move-result v21

    .line 5810
    .local v21, "device1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v6}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    const/4 v7, 0x0

    move/from16 v0, v21

    # invokes: Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V
    invoke-static {v3, v5, v6, v0, v7}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;IIIZ)V

    .line 5812
    .end local v21    # "device1":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v3}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 5813
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v6, 0x2

    # invokes: Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v3, v5, v6}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 5814
    .end local v28    # "mnew_Music_volume":I
    :cond_2b
    const-string v3, "3"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 5815
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_state3 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x3

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;I)I

    .line 5817
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5818
    const/4 v3, 0x7

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5819
    const/16 v3, 0x8

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5820
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5821
    const/4 v3, 0x5

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->setStreamMute(IZ)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_b

    .line 5829
    .end local v35    # "switch_state":Ljava/lang/String;
    :cond_2c
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5830
    const-string v3, "AudioService"

    const-string v4, "ACTION_SHUTDOWN Intent received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5831
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x19

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5838
    const-string v3, "AudioService"

    const-string v4, "ACTION_SHUTDOWN  Intent received returned"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5513
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 5599
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
