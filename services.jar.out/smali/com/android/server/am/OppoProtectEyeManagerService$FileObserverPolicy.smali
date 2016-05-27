.class Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OppoProtectEyeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoProtectEyeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OppoProtectEyeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoProtectEyeManagerService;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProtectEyeManagerService;

    .line 66
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p2, p0, Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/protecteye/status.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoProtectEyeManagerService;

    # invokes: Lcom/android/server/am/OppoProtectEyeManagerService;->loadStatus()V
    invoke-static {v0}, Lcom/android/server/am/OppoProtectEyeManagerService;->access$000(Lcom/android/server/am/OppoProtectEyeManagerService;)V

    .line 78
    :cond_0
    return-void
.end method
