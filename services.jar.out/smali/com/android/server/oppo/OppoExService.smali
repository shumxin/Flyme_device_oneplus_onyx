.class public final Lcom/android/server/oppo/OppoExService;
.super Landroid/os/IOppoExService$Stub;
.source "OppoExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;,
        Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;
    }
.end annotation


# static fields
.field private static final OPPO_EX_CHANNEL_NAME:Ljava/lang/String; = "OppoExInputReceiver"

.field private static final OPPO_EX_DEBUGGABLE:Ljava/lang/String; = "persist.sys.ex.service"

.field private static final TAG:Ljava/lang/String; = "OppoExService"


# instance fields
.field private DEBUG:Z

.field mExInputChannel:Landroid/view/InputChannel;

.field mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

.field private mGestureCallback:Landroid/os/IOppoGestureCallBack;

.field private mGestureStatesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mInputCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPaused:Z

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/os/IOppoExService$Stub;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 60
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    .line 61
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    .line 65
    iput-boolean v2, p0, Lcom/android/server/oppo/OppoExService;->mIsPaused:Z

    .line 67
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mGestureStatesMap:Ljava/util/HashMap;

    .line 70
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/oppo/OppoExService;->DEBUG:Z

    .line 74
    iput-object p2, p0, Lcom/android/server/oppo/OppoExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OppoExService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 77
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/oppo/OppoExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoExService;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoExService;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/oppo/OppoExService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoExService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public dealScreenoffGesture(I)V
    .locals 3
    .param p1, "nGesture"    # I

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoExService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoExService  dealScreenoffGesture nGesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mGestureCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    if-eqz v0, :cond_1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    invoke-interface {v0, p1}, Landroid/os/IOppoGestureCallBack;->onDealGesture(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disableInputReceiver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;->dispose()V

    .line 156
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 161
    iput-object v1, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 163
    :cond_1
    return-void
.end method

.method public enableInputReceiver()V
    .locals 3

    .prologue
    .line 138
    const-string v0, "1"

    const-string v1, "persist.sys.ex.service"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "OppoExService"

    const-string v1, "OppoExService  enableInputReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v0

    const-string v1, "OppoExInputReceiver"

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 148
    new-instance v0, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/oppo/OppoExService;->mExInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/server/oppo/OppoExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;-><init>(Lcom/android/server/oppo/OppoExService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mExInputEventReceiver:Lcom/android/server/oppo/OppoExService$OppoExInputEventReceiver;

    .line 151
    :cond_1
    return-void
.end method

.method public getGestureState(I)Z
    .locals 5
    .param p1, "nGesture"    # I

    .prologue
    const/4 v2, 0x1

    .line 247
    iget-boolean v1, p0, Lcom/android/server/oppo/OppoExService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoExService  setGestureState mGestureStatesMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oppo/OppoExService;->mGestureStatesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/server/oppo/OppoExService;->mGestureStatesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    .local v0, "nState":I
    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pauseExInputEvent()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oppo/OppoExService;->mIsPaused:Z

    .line 113
    return-void
.end method

.method public registerInputEvent(Landroid/os/IOppoExInputCallBack;)Z
    .locals 10
    .param p1, "callBackAdd"    # Landroid/os/IOppoExInputCallBack;

    .prologue
    const/4 v6, 0x0

    .line 81
    const-string v7, "1"

    const-string v8, "persist.sys.ex.service"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    const-string v7, "OppoExService"

    const-string v8, " OppoExService  registerInputEvent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    const/4 v4, 0x1

    .line 85
    .local v4, "result":Z
    iget-object v7, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    monitor-enter v7

    .line 86
    :try_start_0
    iget-object v8, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 87
    .local v5, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 88
    iget-object v8, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;

    .line 89
    .local v0, "callBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    # getter for: Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;
    invoke-static {v0}, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->access$000(Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;)Landroid/os/IOppoExInputCallBack;

    move-result-object v8

    invoke-interface {v8}, Landroid/os/IOppoExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {p1}, Landroid/os/IOppoExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    if-ne v8, v9, :cond_2

    .line 90
    iget-boolean v8, p0, Lcom/android/server/oppo/OppoExService;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "OppoExService"

    const-string v9, " already exist!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    monitor-exit v7

    move v4, v6

    .line 108
    .end local v0    # "callBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    .end local v4    # "result":Z
    :goto_1
    return v4

    .line 87
    .restart local v0    # "callBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    .restart local v4    # "result":Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "callBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    :cond_3
    new-instance v1, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;

    invoke-direct {v1, p0, p1}, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;-><init>(Lcom/android/server/oppo/OppoExService;Landroid/os/IOppoExInputCallBack;)V

    .line 96
    .local v1, "callNewBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    iget-object v8, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    invoke-interface {p1}, Landroid/os/IOppoExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    iget-object v6, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 105
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoExService;->enableInputReceiver()V

    .line 107
    :cond_4
    monitor-exit v7

    goto :goto_1

    .end local v1    # "callNewBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    .end local v3    # "i":I
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 99
    .restart local v1    # "callNewBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    .restart local v3    # "i":I
    .restart local v5    # "size":I
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v6

    goto :goto_1
.end method

.method public registerScreenoffGesture(Landroid/os/IOppoGestureCallBack;)Z
    .locals 1
    .param p1, "callBack"    # Landroid/os/IOppoGestureCallBack;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public resumeExInputEvent()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/oppo/OppoExService;->mIsPaused:Z

    .line 117
    return-void
.end method

.method public setGestureState(IZ)V
    .locals 4
    .param p1, "nGesture"    # I
    .param p2, "isOpen"    # Z

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/server/oppo/OppoExService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoExService  setGestureState nGesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/server/oppo/OppoExService;->mGestureStatesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oppo/OppoExService;->mGestureStatesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterInputEvent(Landroid/os/IOppoExInputCallBack;)V
    .locals 6
    .param p1, "callBackRemove"    # Landroid/os/IOppoExInputCallBack;

    .prologue
    .line 120
    iget-object v4, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 122
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 123
    iget-object v3, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;

    .line 124
    .local v0, "callBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    # getter for: Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;
    invoke-static {v0}, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->access$000(Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;)Landroid/os/IOppoExInputCallBack;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IOppoExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/os/IOppoExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 125
    iget-object v3, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    invoke-interface {p1}, Landroid/os/IOppoExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 130
    .end local v0    # "callBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    :cond_0
    iget-object v3, p0, Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/server/oppo/OppoExService;->disableInputReceiver()V

    .line 134
    :cond_1
    monitor-exit v4

    .line 135
    return-void

    .line 122
    .restart local v0    # "callBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "callBackInfo":Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public unregisterScreenoffGesture(Landroid/os/IOppoGestureCallBack;)V
    .locals 1
    .param p1, "callBack"    # Landroid/os/IOppoGestureCallBack;

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService;->mGestureCallback:Landroid/os/IOppoGestureCallBack;

    .line 225
    return-void
.end method
