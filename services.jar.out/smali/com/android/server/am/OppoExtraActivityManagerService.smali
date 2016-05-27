.class public Lcom/android/server/am/OppoExtraActivityManagerService;
.super Ljava/lang/Object;
.source "OppoExtraActivityManagerService.java"


# static fields
.field private static final ACTION_MODE_LOCK:Ljava/lang/String; = "com.oppo.intent.action.KEY_LOCK_MODE"

.field private static final KEY_LOCK_MODE_NORMAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setKeyLockModeNormal(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "systemReady"    # Z

    .prologue
    .line 43
    if-eqz p2, :cond_0

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.intent.action.KEY_LOCK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KeyLockMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    const-string v1, "ProcessName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
