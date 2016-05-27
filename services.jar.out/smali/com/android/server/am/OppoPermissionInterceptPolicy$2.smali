.class Lcom/android/server/am/OppoPermissionInterceptPolicy$2;
.super Landroid/os/Handler;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$2;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 231
    :pswitch_0
    const/4 v2, 0x0

    .line 232
    .local v2, "pcm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 233
    :try_start_0
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    const-string v3, "OppoPermissionInterceptPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage DO_CHECK_PERMISSION,  size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sPermissionCheckMsgList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_1

    .line 238
    monitor-exit v4

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 240
    :cond_1
    :try_start_1
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    move-object v2, v0

    .line 241
    if-nez v2, :cond_2

    .line 242
    monitor-exit v4

    goto :goto_0

    .line 244
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$2;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->showPermissionWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    invoke-static {v3, v2}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$600(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :try_start_2
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "iex":Ljava/lang/InterruptedException;
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
