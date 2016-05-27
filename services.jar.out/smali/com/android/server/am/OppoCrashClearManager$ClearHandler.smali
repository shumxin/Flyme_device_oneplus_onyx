.class Lcom/android/server/am/OppoCrashClearManager$ClearHandler;
.super Landroid/os/Handler;
.source "OppoCrashClearManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoCrashClearManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoCrashClearManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoCrashClearManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/am/OppoCrashClearManager$ClearHandler;->this$0:Lcom/android/server/am/OppoCrashClearManager;

    .line 88
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 97
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoCrashClearManager$ClearHandler;->this$0:Lcom/android/server/am/OppoCrashClearManager;

    # invokes: Lcom/android/server/am/OppoCrashClearManager;->dataClearAlert(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v1, v0}, Lcom/android/server/am/OppoCrashClearManager;->access$000(Lcom/android/server/am/OppoCrashClearManager;Lcom/android/server/am/ProcessRecord;)V

    .line 98
    return-void
.end method
