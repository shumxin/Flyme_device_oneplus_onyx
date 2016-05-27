.class final Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "OppoExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oppo/OppoExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OppoExInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oppo/OppoExService;


# direct methods
.method public constructor <init>(Lcom/android/server/oppo/OppoExService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->this$0:Lcom/android/server/oppo/OppoExService;

    .line 168
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 169
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 173
    const/4 v2, 0x0

    .line 179
    .local v2, "handled":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->this$0:Lcom/android/server/oppo/OppoExService;

    # getter for: Lcom/android/server/oppo/OppoExService;->mIsPaused:Z
    invoke-static {v5}, Lcom/android/server/oppo/OppoExService;->access$100(Lcom/android/server/oppo/OppoExService;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 180
    iget-object v5, p0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->this$0:Lcom/android/server/oppo/OppoExService;

    # getter for: Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/oppo/OppoExService;->access$200(Lcom/android/server/oppo/OppoExService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :try_start_1
    iget-object v5, p0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->this$0:Lcom/android/server/oppo/OppoExService;

    # getter for: Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/oppo/OppoExService;->access$200(Lcom/android/server/oppo/OppoExService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 182
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 183
    iget-object v5, p0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->this$0:Lcom/android/server/oppo/OppoExService;

    # getter for: Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/oppo/OppoExService;->access$200(Lcom/android/server/oppo/OppoExService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;

    .line 184
    .local v0, "callBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;
    invoke-static {v0}, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->access$000(Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;)Landroid/os/IOppoExInputCallBack;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 185
    # getter for: Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;
    invoke-static {v0}, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->access$000(Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;)Landroid/os/IOppoExInputCallBack;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/os/IOppoExInputCallBack;->onInputEvent(Landroid/view/InputEvent;)V

    .line 182
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "callBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    const/4 v2, 0x1

    .line 196
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 198
    :goto_1
    return-void

    .line 188
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v5, "OppoExService"

    const-string v6, "Failure IOppoExInputCallBack onInputEvent"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 196
    invoke-virtual {p0, p1, v2}, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    invoke-virtual {p0, p1, v2}, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v5
.end method
