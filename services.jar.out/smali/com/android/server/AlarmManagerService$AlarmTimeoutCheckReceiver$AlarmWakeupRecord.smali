.class Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmWakeupRecord"
.end annotation


# instance fields
.field isForcestopReported:Z

.field isSerious:Z

.field isWorst:Z

.field mAlarmIntentRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field mNumWakeup:I

.field mPkgName:Ljava/lang/String;

.field mTotalCheckTime:J

.field mUid:I

.field mWakeupInterval:J

.field final synthetic this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;IIJJLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p2, "uid"    # I
    .param p3, "numWakeup"    # I
    .param p4, "wakeupInterval"    # J
    .param p6, "totalCheckTime"    # J
    .param p8, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p9, "alarmIntentRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2659
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2652
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isForcestopReported:Z

    .line 2653
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isSerious:Z

    .line 2654
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isWorst:Z

    .line 2660
    iput p2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mUid:I

    .line 2661
    iput-wide p4, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mWakeupInterval:J

    .line 2662
    iput p3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mNumWakeup:I

    .line 2663
    iput-wide p6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mTotalCheckTime:J

    .line 2664
    iput-object p8, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mPkgName:Ljava/lang/String;

    .line 2665
    iput-object p9, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mAlarmIntentRecordList:Ljava/util/ArrayList;

    .line 2666
    # getter for: Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdSeriousPerWakeup:J
    invoke-static {p1}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->access$1200(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)J

    move-result-wide v4

    cmp-long v0, p4, v4

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isSerious:Z

    .line 2667
    # getter for: Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdWorstPerWakeup:J
    invoke-static {p1}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->access$1300(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)J

    move-result-wide v4

    cmp-long v0, p4, v4

    if-gtz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isWorst:Z

    .line 2668
    return-void

    :cond_0
    move v0, v2

    .line 2666
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2667
    goto :goto_1
.end method


# virtual methods
.method public update(IJJLjava/util/ArrayList;)V
    .locals 6
    .param p1, "numWakeup"    # I
    .param p2, "wakeupInterval"    # J
    .param p4, "totalCheckTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "alarmIntentRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2672
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mWakeupInterval:J

    .line 2673
    iput p1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mNumWakeup:I

    .line 2674
    iput-wide p4, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mTotalCheckTime:J

    .line 2675
    iput-object p6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->mAlarmIntentRecordList:Ljava/util/ArrayList;

    .line 2676
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    # getter for: Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdSeriousPerWakeup:J
    invoke-static {v0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->access$1200(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)J

    move-result-wide v4

    cmp-long v0, p2, v4

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isSerious:Z

    .line 2677
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    # getter for: Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->thresholdWorstPerWakeup:J
    invoke-static {v0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->access$1300(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)J

    move-result-wide v4

    cmp-long v0, p2, v4

    if-gtz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmWakeupRecord;->isWorst:Z

    .line 2678
    return-void

    :cond_0
    move v0, v2

    .line 2676
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2677
    goto :goto_1
.end method
