.class Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;
.super Landroid/os/Handler;
.source "OnePlusAppDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OnePlusAppDexOptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppDexHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OnePlusAppDexOptManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;

    .line 271
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 272
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 281
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 283
    :pswitch_0
    const-string v1, "sys.boot_completed"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "bootCompleted":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# doHandleMessage # MSG_APPDEX_BOOT_COMPLETED # bootCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 286
    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/pm/OnePlusAppDexOptManager;->sendDexOptMessage(I)V
    invoke-static {v1, v2}, Lcom/android/server/pm/OnePlusAppDexOptManager;->access$000(Lcom/android/server/pm/OnePlusAppDexOptManager;I)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;

    const/4 v2, 0x4

    # invokes: Lcom/android/server/pm/OnePlusAppDexOptManager;->sendDexOptMessage(I)V
    invoke-static {v1, v2}, Lcom/android/server/pm/OnePlusAppDexOptManager;->access$000(Lcom/android/server/pm/OnePlusAppDexOptManager;I)V

    goto :goto_0

    .line 294
    .end local v0    # "bootCompleted":Ljava/lang/String;
    :pswitch_1
    sget-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 295
    const-string v1, "# doHandleMessage # MSG_APPDEX_ODEX_START"

    invoke-static {v1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 296
    :cond_2
    const-string v1, "sys.vm.dex2oat-threadcount"

    iget-object v2, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;

    # getter for: Lcom/android/server/pm/OnePlusAppDexOptManager;->mOrigOdexThreadCount:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/OnePlusAppDexOptManager;->access$100(Lcom/android/server/pm/OnePlusAppDexOptManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    const-string v1, "sys.vm.dex2oat-threadcount"

    iget-object v2, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;

    # getter for: Lcom/android/server/pm/OnePlusAppDexOptManager;->mCurOdexThreadCount:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/OnePlusAppDexOptManager;->access$200(Lcom/android/server/pm/OnePlusAppDexOptManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;

    # invokes: Lcom/android/server/pm/OnePlusAppDexOptManager;->performThirdAppDexOptByMap()V
    invoke-static {v1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->access$300(Lcom/android/server/pm/OnePlusAppDexOptManager;)V

    goto :goto_0

    .line 302
    :pswitch_2
    sget-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 303
    const-string v1, "# doHandleMessage # MSG_APPDEX_ODEX_ONE_APP"

    invoke-static {v1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 304
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;

    # invokes: Lcom/android/server/pm/OnePlusAppDexOptManager;->performThirdAppDexOptByMap()V
    invoke-static {v1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->access$300(Lcom/android/server/pm/OnePlusAppDexOptManager;)V

    goto :goto_0

    .line 308
    :pswitch_3
    sget-boolean v1, Lcom/android/server/pm/OnePlusAppDexOptManager;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 309
    const-string v1, "# doHandleMessage # MSG_APPDEX_ODEX_FINISH"

    invoke-static {v1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->myLog(Ljava/lang/String;)V

    .line 310
    :cond_4
    const-string v1, "sys.vm.dex2oat-threadcount"

    iget-object v2, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;

    # getter for: Lcom/android/server/pm/OnePlusAppDexOptManager;->mOrigOdexThreadCount:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/OnePlusAppDexOptManager;->access$100(Lcom/android/server/pm/OnePlusAppDexOptManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;

    # invokes: Lcom/android/server/pm/OnePlusAppDexOptManager;->afterAppDexOptFinished()V
    invoke-static {v1}, Lcom/android/server/pm/OnePlusAppDexOptManager;->access$400(Lcom/android/server/pm/OnePlusAppDexOptManager;)V

    goto/16 :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x13

    .line 275
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/OnePlusAppDexOptManager$AppDexHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 279
    return-void

    .line 277
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
