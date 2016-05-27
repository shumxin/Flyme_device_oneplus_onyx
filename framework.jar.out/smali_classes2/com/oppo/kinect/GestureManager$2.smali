.class Lcom/oppo/kinect/GestureManager$2;
.super Landroid/os/Handler;
.source "GestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/kinect/GestureManager;->initHandler(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/kinect/GestureManager;


# direct methods
.method constructor <init>(Lcom/oppo/kinect/GestureManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 128
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/oppo/kinect/IOppoKinectService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "service":Landroid/content/Intent;
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$300(Lcom/oppo/kinect/GestureManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->connection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/oppo/kinect/GestureManager;->access$200(Lcom/oppo/kinect/GestureManager;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 133
    .end local v1    # "service":Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 134
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 136
    :try_start_1
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 143
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oppo/kinect/GestureStateCallback;

    iget-object v2, v2, Lcom/oppo/kinect/GestureStateCallback;->mCallback:Lcom/oppo/kinect/IRemoteServiceCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v2, v5}, Lcom/oppo/kinect/IOppoKinectService;->enable(Lcom/oppo/kinect/IRemoteServiceCallback;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :try_start_4
    monitor-exit v3

    goto :goto_0

    .line 145
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 148
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 154
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    .line 156
    :try_start_6
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 157
    :catch_2
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 170
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 163
    :cond_1
    :try_start_8
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oppo/kinect/GestureStateCallback;

    iget-object v2, v2, Lcom/oppo/kinect/GestureStateCallback;->mCallback:Lcom/oppo/kinect/IRemoteServiceCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v2, v5}, Lcom/oppo/kinect/IOppoKinectService;->disable(Lcom/oppo/kinect/IRemoteServiceCallback;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 164
    :try_start_9
    monitor-exit v3

    goto/16 :goto_0

    .line 165
    :catch_3
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 168
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_3
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 174
    :goto_3
    :try_start_a
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v2

    if-nez v2, :cond_2

    .line 176
    :try_start_b
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_3

    .line 177
    :catch_4
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 190
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v2

    .line 183
    :cond_2
    :try_start_d
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [F

    check-cast v2, [F

    invoke-interface {v4, v5, v2}, Lcom/oppo/kinect/IOppoKinectService;->setparameter(I[F)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 184
    :try_start_e
    monitor-exit v3

    goto/16 :goto_0

    .line 185
    :catch_5
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 188
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_0

    .line 192
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_4
    const-string v2, "OppoKinectService"

    const-string v3, "ubindService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 195
    :goto_4
    :try_start_f
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-result-object v2

    if-nez v2, :cond_3

    .line 197
    :try_start_10
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_4

    .line 198
    :catch_6
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 215
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw v2

    .line 204
    :cond_3
    :try_start_12
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$300(Lcom/oppo/kinect/GestureManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    # getter for: Lcom/oppo/kinect/GestureManager;->connection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/oppo/kinect/GestureManager;->access$200(Lcom/oppo/kinect/GestureManager;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 205
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    const/4 v4, 0x0

    # setter for: Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;
    invoke-static {v2, v4}, Lcom/oppo/kinect/GestureManager;->access$102(Lcom/oppo/kinect/GestureManager;Lcom/oppo/kinect/IOppoKinectService;)Lcom/oppo/kinect/IOppoKinectService;

    .line 206
    const/4 v2, 0x0

    # setter for: Lcom/oppo/kinect/GestureManager;->mGestureManager:Lcom/oppo/kinect/GestureManager;
    invoke-static {v2}, Lcom/oppo/kinect/GestureManager;->access$402(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/GestureManager;

    .line 207
    iget-object v2, p0, Lcom/oppo/kinect/GestureManager$2;->this$0:Lcom/oppo/kinect/GestureManager;

    const/4 v4, 0x0

    # setter for: Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;
    invoke-static {v2, v4}, Lcom/oppo/kinect/GestureManager;->access$302(Lcom/oppo/kinect/GestureManager;Landroid/content/Context;)Landroid/content/Context;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 208
    :try_start_13
    monitor-exit v3

    goto/16 :goto_0

    .line 209
    :catch_7
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OppoKinectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gesture manager exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
