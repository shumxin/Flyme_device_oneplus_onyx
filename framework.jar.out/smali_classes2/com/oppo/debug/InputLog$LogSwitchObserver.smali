.class Lcom/oppo/debug/InputLog$LogSwitchObserver;
.super Landroid/os/FileObserver;
.source "InputLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/debug/InputLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogSwitchObserver"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 64
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 65
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v2, "/data/logswitch/switch.xml"

    # invokes: Lcom/oppo/debug/InputLog;->readString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/oppo/debug/InputLog;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "switchValue":Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    .local v0, "openSwitch":Z
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    # setter for: Lcom/oppo/debug/InputLog;->LOGCAT_LEVEL:I
    invoke-static {v2}, Lcom/oppo/debug/InputLog;->access$102(I)I

    .line 73
    const-string v2, "InputLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchValue =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", LOGCAT_LEVEL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/oppo/debug/InputLog;->LOGCAT_LEVEL:I
    invoke-static {}, Lcom/oppo/debug/InputLog;->access$100()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    # invokes: Lcom/oppo/debug/InputLog;->updateLogLevel()V
    invoke-static {}, Lcom/oppo/debug/InputLog;->access$200()V

    .line 75
    return-void

    .line 72
    :cond_0
    const/16 v2, 0x10

    goto :goto_0
.end method
