.class Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OppoAdbInstallerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OppoAdbInstallerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/OppoAdbInstallerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OppoAdbInstallerManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;->this$0:Lcom/android/server/pm/OppoAdbInstallerManager;

    .line 355
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 356
    iput-object p2, p0, Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 357
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 363
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/config/adb_installer_status.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "OppoAdbInstallerManager"

    const-string v1, "onEvent: focusPath = ADB_INSTALLER_STATUS_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/server/pm/OppoAdbInstallerManager$FileObserverPolicy;->this$0:Lcom/android/server/pm/OppoAdbInstallerManager;

    invoke-virtual {v0}, Lcom/android/server/pm/OppoAdbInstallerManager;->readAdbInstallerFile()V

    .line 369
    :cond_0
    return-void
.end method
