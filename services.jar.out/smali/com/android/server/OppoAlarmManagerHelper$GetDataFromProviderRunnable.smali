.class Lcom/android/server/OppoAlarmManagerHelper$GetDataFromProviderRunnable;
.super Ljava/lang/Object;
.source "OppoAlarmManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OppoAlarmManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetDataFromProviderRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 153
    # getter for: Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/OppoAlarmManagerHelper;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "OppoAlarmManagerHelper"

    const-string v2, "start run "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    # getter for: Lcom/android/server/OppoAlarmManagerHelper;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/OppoAlarmManagerHelper;->access$100()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/server/OppoAlarmManagerHelper;->getDataFromProvider(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/android/server/OppoAlarmManagerHelper;->access$200(Landroid/content/Context;)V

    .line 159
    # getter for: Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/OppoAlarmManagerHelper;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const-string v1, "OppoAlarmManagerHelper"

    const-string v2, "isSystemReady is true  !!!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    return-void

    .line 165
    :cond_2
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_1
    # getter for: Lcom/android/server/OppoAlarmManagerHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/OppoAlarmManagerHelper;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "OppoAlarmManagerHelper"

    const-string v2, "sleep 100 ms "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "OppoAlarmManagerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sleep 100 ms is Interrupted because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
