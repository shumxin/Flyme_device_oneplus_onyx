.class Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoDeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/OppoDeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;
    invoke-static {v1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$100(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->removeMessages(I)V

    .line 284
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowSdFlag:Z
    invoke-static {v1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$200(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V
    invoke-static {v1, v6}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$300(Lcom/android/server/storage/OppoDeviceStorageMonitorService;I)V

    .line 287
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$400(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0xc04052e

    const v4, 0xc040530

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoShowNotification(Landroid/content/Intent;III)V
    invoke-static {v1, v2, v6, v3, v4}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$500(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Landroid/content/Intent;III)V

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mLowDataFlag:Z
    invoke-static {v1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$600(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V
    invoke-static {v1, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$300(Lcom/android/server/storage/OppoDeviceStorageMonitorService;I)V

    .line 294
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$400(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0xc040531

    const v4, 0xc040533

    # invokes: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppoShowNotification(Landroid/content/Intent;III)V
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$500(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Landroid/content/Intent;III)V

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;
    invoke-static {v1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$100(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;
    invoke-static {v2}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$100(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/storage/OppoDeviceStorageMonitorService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 301
    :cond_2
    return-void
.end method
