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
.field mCallback:Lcom/oem/os/IOemUeventCallback;

.field private final mObserverLock:Ljava/lang/Object;

.field mPatch:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method public constructor <init>(Lcom/android/server/OemExService;Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/oem/os/IOemUeventCallback;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/server/OemExService$CoverObserver;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Lcom/oem/os/IOemUeventCallback;

    .line 442
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->mPatch:Ljava/lang/String;

    .line 444
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->mObserverLock:Ljava/lang/Object;

    .line 447
    iput-object p2, p0, Lcom/android/server/OemExService$CoverObserver;->mPatch:Ljava/lang/String;

    .line 448
    iput-object p3, p0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Lcom/oem/os/IOemUeventCallback;

    .line 449
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/OemExService;->access$500(Lcom/android/server/OemExService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 477
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Lcom/oem/os/IOemUeventCallback;

    .line 478
    iget-object v0, p0, Lcom/android/server/OemExService$CoverObserver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/OemExService;->access$500(Lcom/android/server/OemExService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 479
    monitor-exit v1

    .line 480
    return-void

    .line 479
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
    .line 463
    iget-object v2, p0, Lcom/android/server/OemExService$CoverObserver;->mObserverLock:Ljava/lang/Object;

    monitor-enter v2

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Lcom/oem/os/IOemUeventCallback;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oem/os/IOemUeventCallback;->onInputEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 472
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 470
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
    .line 452
    iget-object v1, p0, Lcom/android/server/OemExService$CoverObserver;->mObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 453
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

    .line 454
    monitor-exit v1

    .line 455
    return-void

    .line 454
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
    .line 458
    invoke-virtual {p0}, Lcom/android/server/OemExService$CoverObserver;->stopObserving()V

    .line 459
    return-void
.end method
