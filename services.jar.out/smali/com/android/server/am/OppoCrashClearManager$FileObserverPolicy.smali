.class Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OppoCrashClearManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoCrashClearManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OppoCrashClearManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoCrashClearManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoCrashClearManager;

    .line 148
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 149
    iput-object p2, p0, Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 154
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/config/crashclear_white_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "OppoCrashClearManager"

    const-string v1, "onEvent: focusPath = OPPO_CRASH_CLEAR_CONFIG_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/server/am/OppoCrashClearManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoCrashClearManager;

    # invokes: Lcom/android/server/am/OppoCrashClearManager;->readConfigFile()V
    invoke-static {v0}, Lcom/android/server/am/OppoCrashClearManager;->access$100(Lcom/android/server/am/OppoCrashClearManager;)V

    .line 160
    :cond_0
    return-void
.end method
