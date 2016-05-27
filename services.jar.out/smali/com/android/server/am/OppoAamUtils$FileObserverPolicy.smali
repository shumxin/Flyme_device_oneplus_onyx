.class Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OppoAamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoAamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OppoAamUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoAamUtils;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoAamUtils;

    .line 386
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 387
    iput-object p2, p0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 388
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 394
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/oppoguardelf/screen_status.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    # getter for: Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEvent: focusPath = SCREEN_STATUS_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {}, Lcom/android/server/am/OppoAbnormalAppManager;->getInstance()Lcom/android/server/am/OppoAbnormalAppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoAamUtils;

    invoke-virtual {v1}, Lcom/android/server/am/OppoAamUtils;->readScreenStatusFile()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OppoAbnormalAppManager;->updateScreenStatus(Z)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/oppoguardelf/screenoff_restrict.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    # getter for: Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEvent: focusPath = SCREENOFF_RESTRICT_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Lcom/android/server/am/OppoAbnormalAppManager;->getInstance()Lcom/android/server/am/OppoAbnormalAppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoAamUtils;

    invoke-virtual {v1}, Lcom/android/server/am/OppoAamUtils;->readScreenOffResrictFile()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OppoAbnormalAppManager;->updateScreenOffRestrictedList(Ljava/util/List;)V

    goto :goto_0

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/oppoguardelf/startinfo_white.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    # getter for: Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OppoAamUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEvent: focusPath = STARTINFO_WHITE_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {}, Lcom/android/server/am/OppoAbnormalAppManager;->getInstance()Lcom/android/server/am/OppoAbnormalAppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoAamUtils;

    invoke-virtual {v1}, Lcom/android/server/am/OppoAamUtils;->readStartInfoWhiteFile()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OppoAbnormalAppManager;->updateStartInfoWhiteList(Ljava/util/List;)V

    goto :goto_0
.end method
