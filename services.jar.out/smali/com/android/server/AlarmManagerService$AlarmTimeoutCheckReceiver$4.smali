.class Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$4;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0

    .prologue
    .line 2952
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$4;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$4;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    # invokes: Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->reportFrequentAlarmList()V
    invoke-static {v0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->access$1700(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V

    .line 2955
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$4;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    # getter for: Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->access$1800(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2956
    return-void
.end method
