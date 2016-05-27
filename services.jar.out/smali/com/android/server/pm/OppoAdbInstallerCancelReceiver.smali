.class public Lcom/android/server/pm/OppoAdbInstallerCancelReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OppoAdbInstallerCancelReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OppoAdbInstallerManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    const-string v1, "apkPath"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "apkPath":Ljava/lang/String;
    const-string v1, "OppoAdbInstallerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPPO_ADB_INSTALL_CANCEL apkPath == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/android/server/pm/OppoAdbInstallerManager;->getInstance()Lcom/android/server/pm/OppoAdbInstallerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/OppoAdbInstallerManager;->handForAdbInstallerCancel(Ljava/lang/String;)V

    .line 37
    return-void
.end method
