.class Lcom/android/server/usage/UserUsageStatsService$5;
.super Landroid/os/Handler;
.source "UserUsageStatsService.java"


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
    .line 616
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$5;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method
