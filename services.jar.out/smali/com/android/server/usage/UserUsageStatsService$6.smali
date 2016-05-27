.class Lcom/android/server/usage/UserUsageStatsService$6;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UserUsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UserUsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UserUsageStatsService;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$6;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 621
    # getter for: Lcom/android/server/usage/UserUsageStatsService;->TimeChanged:J
    invoke-static {}, Lcom/android/server/usage/UserUsageStatsService;->access$000()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService$6;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    # getter for: Lcom/android/server/usage/UserUsageStatsService;->TimeChanged:J
    invoke-static {}, Lcom/android/server/usage/UserUsageStatsService;->access$000()J

    move-result-wide v2

    # invokes: Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->access$100(Lcom/android/server/usage/UserUsageStatsService;J)V

    .line 624
    :cond_0
    return-void
.end method
