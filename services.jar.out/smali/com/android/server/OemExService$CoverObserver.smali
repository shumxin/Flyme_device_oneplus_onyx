.class Lcom/android/server/OemExService$CoverObserver;
.super Landroid/os/UEventObserver;
.source "OemExService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CoverObserver"
.end annotation


# instance fields
.field mCallback:Landroid/os/IOemUeventCallback;

.field private final mObserverLock:Ljava/lang/Object;

.field mPatch:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method public constructor <init>(Lcom/android/server/OemExService;Ljava/lang/String;Landroid/os/IOemUeventCallback;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/IOemUeventCallback;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/OemExService$CoverObserver;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Landroid/os/IOemUeventCallback;

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->mPatch:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->mObserverLock:Ljava/lang/Object;

    .line 204
    iput-object p2, p0, Lcom/android/server/OemExService$CoverObserver;->mPatch:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Landroid/os/IOemUeventCallback;

    .line 206
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/OemExService;->access$200(Lcom/android/server/OemExService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 234
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Landroid/os/IOemUeventCallback;

    .line 235
    iget-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/OemExService;->access$200(Lcom/android/server/OemExService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/server/OemExService$CoverObserver;->mObserverLock:Ljava/lang/Object;

    monitor-enter v2

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Landroid/os/IOemUeventCallback;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/os/IOemUeventCallback;->onInputEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 229
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method start()V
    .locals 3

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/server/OemExService$CoverObserver;->mObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVPATH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/OemExService$CoverObserver;->mPatch:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/OemExService$CoverObserver;->startObserving(Ljava/lang/String;)V

    .line 211
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/server/OemExService$CoverObserver;->stopObserving()V

    .line 216
    return-void
.end method
