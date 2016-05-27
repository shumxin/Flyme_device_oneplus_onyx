.class Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OppoGuardElfConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OppoGuardElfConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/OppoGuardElfConfigUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/OppoGuardElfConfigUtil;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;->this$0:Lcom/android/server/OppoGuardElfConfigUtil;

    .line 304
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 305
    iput-object p2, p0, Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 306
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 312
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/oppoguardelf/oppoguardelf_config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v1, "onEvent: focusPath = OPPO_GUARD_ELF_CONFIG_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;->this$0:Lcom/android/server/OppoGuardElfConfigUtil;

    # invokes: Lcom/android/server/OppoGuardElfConfigUtil;->readConfigFile()V
    invoke-static {v0}, Lcom/android/server/OppoGuardElfConfigUtil;->access$000(Lcom/android/server/OppoGuardElfConfigUtil;)V

    .line 318
    :cond_0
    return-void
.end method
