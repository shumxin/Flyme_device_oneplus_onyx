.class Lcom/android/server/OemExService$2;
.super Landroid/os/IOemUeventCallback$Stub;
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
    .line 302
    iput-object p1, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Landroid/os/IOemUeventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputEvent(Ljava/lang/String;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 306
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->DEBUG:Z
    invoke-static {v3}, Lcom/android/server/OemExService;->access$300(Lcom/android/server/OemExService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    const-string v3, "OemExService"

    const-string v4, "oemEvent mThreeKeyReceiver "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mSystemComplete:Z
    invoke-static {v3}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 350
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->DEBUG:Z
    invoke-static {v3}, Lcom/android/server/OemExService;->access$300(Lcom/android/server/OemExService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    const-string v3, "OemExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oemEvent message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_2
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->getUeventMessage(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v3, p1}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 314
    .local v0, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "SWITCH_STATE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "switch_state":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->DEBUG:Z
    invoke-static {v3}, Lcom/android/server/OemExService;->access$300(Lcom/android/server/OemExService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    const-string v3, "OemExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oemEvent message switch_state  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v2, "threeKey":Landroid/content/Intent;
    const-string v3, "switch_state"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    sget-object v3, Lcom/android/server/OemExService;->mCurrentThreeKeyState:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 322
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 323
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    iget-object v3, v3, Lcom/android/server/OemExService;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 327
    :cond_4
    :goto_1
    const-string v3, "switch_boot"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    :goto_2
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/OemExService;->access$500(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 332
    sput-object v1, Lcom/android/server/OemExService;->mCurrentThreeKeyState:Ljava/lang/String;

    .line 334
    const-string v3, "3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 335
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/OemExService;->access$600(Lcom/android/server/OemExService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 336
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/OemExService;->access$500(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 324
    :cond_5
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 325
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    iget-object v3, v3, Lcom/android/server/OemExService;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    .line 329
    :cond_6
    const-string v3, "switch_boot"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 338
    :cond_7
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 339
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/OemExService;->access$600(Lcom/android/server/OemExService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 340
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/OemExService;->access$500(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 344
    :cond_8
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/OemExService;->access$600(Lcom/android/server/OemExService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 345
    iget-object v3, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/OemExService;->access$500(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
