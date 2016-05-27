.class final Lcom/android/server/power/PowerManagerService$OppoShutDownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OppoShutDownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3356
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$OppoShutDownReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 3356
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$OppoShutDownReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3359
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_PANIC:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3360
    const-string v0, "PowerManagerService"

    const-string v1, "PowerMS NotSleepingWhenShutdowning: received a shutdown broadcast"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->mOppoShutdownIng:Z

    .line 3363
    return-void
.end method
